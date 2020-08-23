import kaitai_struct_nim_runtime
import options

type
  NavRoot* = ref object of KaitaiStruct
    `header`*: NavRoot_HeaderObj
    `index`*: NavRoot_IndexObj
    `parent`*: KaitaiStruct
  NavRoot_HeaderObj* = ref object of KaitaiStruct
    `qtyEntries`*: uint32
    `filenameLen`*: uint32
    `parent`*: NavRoot
  NavRoot_IndexObj* = ref object of KaitaiStruct
    `magic`*: seq[byte]
    `entries`*: seq[NavRoot_Entry]
    `parent`*: NavRoot
  NavRoot_Entry* = ref object of KaitaiStruct
    `filename`*: string
    `parent`*: NavRoot_IndexObj

proc read*(_: typedesc[NavRoot], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavRoot
proc read*(_: typedesc[NavRoot_HeaderObj], io: KaitaiStream, root: KaitaiStruct, parent: NavRoot): NavRoot_HeaderObj
proc read*(_: typedesc[NavRoot_IndexObj], io: KaitaiStream, root: KaitaiStruct, parent: NavRoot): NavRoot_IndexObj
proc read*(_: typedesc[NavRoot_Entry], io: KaitaiStream, root: KaitaiStruct, parent: NavRoot_IndexObj): NavRoot_Entry


proc read*(_: typedesc[NavRoot], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavRoot =
  template this: untyped = result
  this = new(NavRoot)
  let root = if root == nil: cast[NavRoot](this) else: cast[NavRoot](root)
  this.io = io
  this.root = root
  this.parent = parent

  let headerExpr = NavRoot_HeaderObj.read(this.io, this.root, this)
  this.header = headerExpr
  let indexExpr = NavRoot_IndexObj.read(this.io, this.root, this)
  this.index = indexExpr

proc fromFile*(_: typedesc[NavRoot], filename: string): NavRoot =
  NavRoot.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavRoot_HeaderObj], io: KaitaiStream, root: KaitaiStruct, parent: NavRoot): NavRoot_HeaderObj =
  template this: untyped = result
  this = new(NavRoot_HeaderObj)
  let root = if root == nil: cast[NavRoot](this) else: cast[NavRoot](root)
  this.io = io
  this.root = root
  this.parent = parent

  let qtyEntriesExpr = this.io.readU4le()
  this.qtyEntries = qtyEntriesExpr
  let filenameLenExpr = this.io.readU4le()
  this.filenameLen = filenameLenExpr

proc fromFile*(_: typedesc[NavRoot_HeaderObj], filename: string): NavRoot_HeaderObj =
  NavRoot_HeaderObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavRoot_IndexObj], io: KaitaiStream, root: KaitaiStruct, parent: NavRoot): NavRoot_IndexObj =
  template this: untyped = result
  this = new(NavRoot_IndexObj)
  let root = if root == nil: cast[NavRoot](this) else: cast[NavRoot](root)
  this.io = io
  this.root = root
  this.parent = parent

  let magicExpr = this.io.readBytes(int(4))
  this.magic = magicExpr
  for i in 0 ..< int(NavRoot(this.root).header.qtyEntries):
    let it = NavRoot_Entry.read(this.io, this.root, this)
    this.entries.add(it)

proc fromFile*(_: typedesc[NavRoot_IndexObj], filename: string): NavRoot_IndexObj =
  NavRoot_IndexObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavRoot_Entry], io: KaitaiStream, root: KaitaiStruct, parent: NavRoot_IndexObj): NavRoot_Entry =
  template this: untyped = result
  this = new(NavRoot_Entry)
  let root = if root == nil: cast[NavRoot](this) else: cast[NavRoot](root)
  this.io = io
  this.root = root
  this.parent = parent

  let filenameExpr = encode(this.io.readBytes(int(NavRoot(this.root).header.filenameLen)), "UTF-8")
  this.filename = filenameExpr

proc fromFile*(_: typedesc[NavRoot_Entry], filename: string): NavRoot_Entry =
  NavRoot_Entry.read(newKaitaiFileStream(filename), nil, nil)


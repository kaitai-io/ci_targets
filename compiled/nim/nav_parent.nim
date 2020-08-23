import kaitai_struct_nim_runtime
import options

type
  NavParent* = ref object of KaitaiStruct
    `header`*: NavParent_HeaderObj
    `index`*: NavParent_IndexObj
    `parent`*: KaitaiStruct
  NavParent_HeaderObj* = ref object of KaitaiStruct
    `qtyEntries`*: uint32
    `filenameLen`*: uint32
    `parent`*: NavParent
  NavParent_IndexObj* = ref object of KaitaiStruct
    `magic`*: seq[byte]
    `entries`*: seq[NavParent_Entry]
    `parent`*: NavParent
  NavParent_Entry* = ref object of KaitaiStruct
    `filename`*: string
    `parent`*: NavParent_IndexObj

proc read*(_: typedesc[NavParent], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParent
proc read*(_: typedesc[NavParent_HeaderObj], io: KaitaiStream, root: KaitaiStruct, parent: NavParent): NavParent_HeaderObj
proc read*(_: typedesc[NavParent_IndexObj], io: KaitaiStream, root: KaitaiStruct, parent: NavParent): NavParent_IndexObj
proc read*(_: typedesc[NavParent_Entry], io: KaitaiStream, root: KaitaiStruct, parent: NavParent_IndexObj): NavParent_Entry


proc read*(_: typedesc[NavParent], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParent =
  template this: untyped = result
  this = new(NavParent)
  let root = if root == nil: cast[NavParent](this) else: cast[NavParent](root)
  this.io = io
  this.root = root
  this.parent = parent

  let headerExpr = NavParent_HeaderObj.read(this.io, this.root, this)
  this.header = headerExpr
  let indexExpr = NavParent_IndexObj.read(this.io, this.root, this)
  this.index = indexExpr

proc fromFile*(_: typedesc[NavParent], filename: string): NavParent =
  NavParent.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParent_HeaderObj], io: KaitaiStream, root: KaitaiStruct, parent: NavParent): NavParent_HeaderObj =
  template this: untyped = result
  this = new(NavParent_HeaderObj)
  let root = if root == nil: cast[NavParent](this) else: cast[NavParent](root)
  this.io = io
  this.root = root
  this.parent = parent

  let qtyEntriesExpr = this.io.readU4le()
  this.qtyEntries = qtyEntriesExpr
  let filenameLenExpr = this.io.readU4le()
  this.filenameLen = filenameLenExpr

proc fromFile*(_: typedesc[NavParent_HeaderObj], filename: string): NavParent_HeaderObj =
  NavParent_HeaderObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParent_IndexObj], io: KaitaiStream, root: KaitaiStruct, parent: NavParent): NavParent_IndexObj =
  template this: untyped = result
  this = new(NavParent_IndexObj)
  let root = if root == nil: cast[NavParent](this) else: cast[NavParent](root)
  this.io = io
  this.root = root
  this.parent = parent

  let magicExpr = this.io.readBytes(int(4))
  this.magic = magicExpr
  for i in 0 ..< int(this.parent.header.qtyEntries):
    let it = NavParent_Entry.read(this.io, this.root, this)
    this.entries.add(it)

proc fromFile*(_: typedesc[NavParent_IndexObj], filename: string): NavParent_IndexObj =
  NavParent_IndexObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParent_Entry], io: KaitaiStream, root: KaitaiStruct, parent: NavParent_IndexObj): NavParent_Entry =
  template this: untyped = result
  this = new(NavParent_Entry)
  let root = if root == nil: cast[NavParent](this) else: cast[NavParent](root)
  this.io = io
  this.root = root
  this.parent = parent

  let filenameExpr = encode(this.io.readBytes(int(this.parent.parent.header.filenameLen)), "UTF-8")
  this.filename = filenameExpr

proc fromFile*(_: typedesc[NavParent_Entry], filename: string): NavParent_Entry =
  NavParent_Entry.read(newKaitaiFileStream(filename), nil, nil)


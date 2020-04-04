import kaitai_struct_nim_runtime
import options
import encodings

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  NavRoot* = ref object of KaitaiStruct
    header*: NavRoot_HeaderObj
    index*: NavRoot_IndexObj
    parent*: KaitaiStruct
  NavRoot_HeaderObj* = ref object of KaitaiStruct
    qtyEntries*: uint32
    filenameLen*: uint32
    parent*: NavRoot
  NavRoot_IndexObj* = ref object of KaitaiStruct
    magic*: string
    entries*: seq[NavRoot_Entry]
    parent*: NavRoot
  NavRoot_Entry* = ref object of KaitaiStruct
    filename*: string
    parent*: NavRoot_IndexObj

proc read*(_: typedesc[NavRoot], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavRoot
proc read*(_: typedesc[NavRoot_HeaderObj], io: KaitaiStream, root: KaitaiStruct, parent: NavRoot): NavRoot_HeaderObj
proc read*(_: typedesc[NavRoot_IndexObj], io: KaitaiStream, root: KaitaiStruct, parent: NavRoot): NavRoot_IndexObj
proc read*(_: typedesc[NavRoot_Entry], io: KaitaiStream, root: KaitaiStruct, parent: NavRoot_IndexObj): NavRoot_Entry


proc read*(_: typedesc[NavRoot], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavRoot =
  template this: untyped = result
  this = new(NavRoot)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.header = NavRoot_HeaderObj.read(this.io, this.root, this)
  this.index = NavRoot_IndexObj.read(this.io, this.root, this)

proc fromFile*(_: typedesc[NavRoot], filename: string): NavRoot =
  NavRoot.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavRoot_HeaderObj], io: KaitaiStream, root: KaitaiStruct, parent: NavRoot): NavRoot_HeaderObj =
  template this: untyped = result
  this = new(NavRoot_HeaderObj)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.qtyEntries = this.io.readU4le()
  this.filenameLen = this.io.readU4le()

proc fromFile*(_: typedesc[NavRoot_HeaderObj], filename: string): NavRoot_HeaderObj =
  NavRoot_HeaderObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavRoot_IndexObj], io: KaitaiStream, root: KaitaiStruct, parent: NavRoot): NavRoot_IndexObj =
  template this: untyped = result
  this = new(NavRoot_IndexObj)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.magic = this.io.readBytes(int(4))
  for i in 0 ..< this._root.header.qtyEntries:
    this.entries.add(NavRoot_Entry.read(this.io, this.root, this))

proc fromFile*(_: typedesc[NavRoot_IndexObj], filename: string): NavRoot_IndexObj =
  NavRoot_IndexObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavRoot_Entry], io: KaitaiStream, root: KaitaiStruct, parent: NavRoot_IndexObj): NavRoot_Entry =
  template this: untyped = result
  this = new(NavRoot_Entry)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.filename = convert(this.io.readBytes(int(this._root.header.filenameLen)), srcEncoding = "UTF-8")

proc fromFile*(_: typedesc[NavRoot_Entry], filename: string): NavRoot_Entry =
  NavRoot_Entry.read(newKaitaiFileStream(filename), nil, nil)


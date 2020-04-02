import kaitai_struct_nim_runtime
import options
import encodings

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  NavParent* = ref object of KaitaiStruct
    header*: NavParent_HeaderObj
    index*: NavParent_IndexObj
    parent*: KaitaiStruct
  NavParent_HeaderObj* = ref object of KaitaiStruct
    qtyEntries*: uint32
    filenameLen*: uint32
    parent*: NavParent
  NavParent_IndexObj* = ref object of KaitaiStruct
    magic*: string
    entries*: seq[NavParent_Entry]
    parent*: NavParent
  NavParent_Entry* = ref object of KaitaiStruct
    filename*: string
    parent*: NavParent_IndexObj

proc read*(_: typedesc[NavParent], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParent
proc read*(_: typedesc[NavParent_HeaderObj], io: KaitaiStream, root: KaitaiStruct, parent: NavParent): NavParent_HeaderObj
proc read*(_: typedesc[NavParent_IndexObj], io: KaitaiStream, root: KaitaiStruct, parent: NavParent): NavParent_IndexObj
proc read*(_: typedesc[NavParent_Entry], io: KaitaiStream, root: KaitaiStruct, parent: NavParent_IndexObj): NavParent_Entry

proc read*(_: typedesc[NavParent], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParent =
  template this: untyped = result
  this = new(NavParent)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.header = NavParent_HeaderObj.read(this.io, this.root, this)
  this.index = NavParent_IndexObj.read(this.io, this.root, this)

proc fromFile*(_: typedesc[NavParent], filename: string): NavParent =
  NavParent.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParent_HeaderObj], io: KaitaiStream, root: KaitaiStruct, parent: NavParent): NavParent_HeaderObj =
  template this: untyped = result
  this = new(NavParent_HeaderObj)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.qtyEntries = this.io.readU4le()
  this.filenameLen = this.io.readU4le()

proc fromFile*(_: typedesc[NavParent_HeaderObj], filename: string): NavParent_HeaderObj =
  NavParent_HeaderObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParent_IndexObj], io: KaitaiStream, root: KaitaiStruct, parent: NavParent): NavParent_IndexObj =
  template this: untyped = result
  this = new(NavParent_IndexObj)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.magic = this.io.readBytes(int(4))
  entries = newSeq[NavParent_Entry](this.parent.header.qtyEntries)
  for i in 0 ..< this.parent.header.qtyEntries:
    this.entries.add(NavParent_Entry.read(this.io, this.root, this))

proc fromFile*(_: typedesc[NavParent_IndexObj], filename: string): NavParent_IndexObj =
  NavParent_IndexObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParent_Entry], io: KaitaiStream, root: KaitaiStruct, parent: NavParent_IndexObj): NavParent_Entry =
  template this: untyped = result
  this = new(NavParent_Entry)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.filename = convert(this.io.readBytes(int(this.parent.parent.header.filenameLen)), srcEncoding = "UTF-8")

proc fromFile*(_: typedesc[NavParent_Entry], filename: string): NavParent_Entry =
  NavParent_Entry.read(newKaitaiFileStream(filename), nil, nil)


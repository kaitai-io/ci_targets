import kaitai_struct_nim_runtime
import options
import encodings

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  InstanceIoUser* = ref object of KaitaiStruct
    qtyEntries*: uint32
    entries*: seq[InstanceIoUser_Entry]
    strings*: InstanceIoUser_StringsObj
    parent*: KaitaiStruct
    rawStrings*: string
  InstanceIoUser_Entry* = ref object of KaitaiStruct
    nameOfs*: uint32
    value*: uint32
    parent*: InstanceIoUser
    nameInst*: string
  InstanceIoUser_StringsObj* = ref object of KaitaiStruct
    str*: seq[string]
    parent*: InstanceIoUser

proc read*(_: typedesc[InstanceIoUser], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): InstanceIoUser
proc read*(_: typedesc[InstanceIoUser_Entry], io: KaitaiStream, root: KaitaiStruct, parent: InstanceIoUser): InstanceIoUser_Entry
proc read*(_: typedesc[InstanceIoUser_StringsObj], io: KaitaiStream, root: KaitaiStruct, parent: InstanceIoUser): InstanceIoUser_StringsObj

proc name*(this: InstanceIoUser_Entry): string

proc read*(_: typedesc[InstanceIoUser], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): InstanceIoUser =
  template this: untyped = result
  this = new(InstanceIoUser)
  let root = if root == nil: cast[InstanceIoUser](this) else: cast[InstanceIoUser](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.qtyEntries = this.io.readU4le()
  for i in 0 ..< this.qtyEntries:
    this.entries.add(InstanceIoUser_Entry.read(this.io, this.root, this))
  this.rawStrings = this.io.readBytesFull()
  let rawStringsIo = newKaitaiStringStream(this.rawStrings)
  this.strings = InstanceIoUser_StringsObj.read(rawStringsIo, this.root, this)

proc fromFile*(_: typedesc[InstanceIoUser], filename: string): InstanceIoUser =
  InstanceIoUser.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[InstanceIoUser_Entry], io: KaitaiStream, root: KaitaiStruct, parent: InstanceIoUser): InstanceIoUser_Entry =
  template this: untyped = result
  this = new(InstanceIoUser_Entry)
  let root = if root == nil: cast[InstanceIoUser](this) else: cast[InstanceIoUser](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.nameOfs = this.io.readU4le()
  this.value = this.io.readU4le()

proc name(this: InstanceIoUser_Entry): string = 
  if this.nameInst.len != 0:
    return this.nameInst
  let io = InstanceIoUser(this.root).strings.io
  let pos = io.pos()
  io.seek(int(this.nameOfs))
  this.nameInst = convert(io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8")
  io.seek(pos)
  if this.nameInst.len != 0:
    return this.nameInst

proc fromFile*(_: typedesc[InstanceIoUser_Entry], filename: string): InstanceIoUser_Entry =
  InstanceIoUser_Entry.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[InstanceIoUser_StringsObj], io: KaitaiStream, root: KaitaiStruct, parent: InstanceIoUser): InstanceIoUser_StringsObj =
  template this: untyped = result
  this = new(InstanceIoUser_StringsObj)
  let root = if root == nil: cast[InstanceIoUser](this) else: cast[InstanceIoUser](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      this.str.add(convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8"))
      inc i

proc fromFile*(_: typedesc[InstanceIoUser_StringsObj], filename: string): InstanceIoUser_StringsObj =
  InstanceIoUser_StringsObj.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  InstanceIoUser* = ref object of KaitaiStruct
    `qtyEntries`*: uint32
    `entries`*: seq[InstanceIoUser_Entry]
    `strings`*: InstanceIoUser_StringsObj
    `parent`*: KaitaiStruct
    `rawStrings`*: seq[byte]
  InstanceIoUser_Entry* = ref object of KaitaiStruct
    `nameOfs`*: uint32
    `value`*: uint32
    `parent`*: InstanceIoUser
    `nameInst`: string
    `nameInstFlag`: bool
  InstanceIoUser_StringsObj* = ref object of KaitaiStruct
    `str`*: seq[string]
    `parent`*: InstanceIoUser

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

  let qtyEntriesExpr = this.io.readU4le()
  this.qtyEntries = qtyEntriesExpr
  for i in 0 ..< int(this.qtyEntries):
    let it = InstanceIoUser_Entry.read(this.io, this.root, this)
    this.entries.add(it)
  let rawStringsExpr = this.io.readBytesFull()
  this.rawStrings = rawStringsExpr
  let rawStringsIo = newKaitaiStream(rawStringsExpr)
  let stringsExpr = InstanceIoUser_StringsObj.read(rawStringsIo, this.root, this)
  this.strings = stringsExpr

proc fromFile*(_: typedesc[InstanceIoUser], filename: string): InstanceIoUser =
  InstanceIoUser.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[InstanceIoUser_Entry], io: KaitaiStream, root: KaitaiStruct, parent: InstanceIoUser): InstanceIoUser_Entry =
  template this: untyped = result
  this = new(InstanceIoUser_Entry)
  let root = if root == nil: cast[InstanceIoUser](this) else: cast[InstanceIoUser](root)
  this.io = io
  this.root = root
  this.parent = parent

  let nameOfsExpr = this.io.readU4le()
  this.nameOfs = nameOfsExpr
  let valueExpr = this.io.readU4le()
  this.value = valueExpr

proc name(this: InstanceIoUser_Entry): string = 
  if this.nameInstFlag:
    return this.nameInst
  let io = InstanceIoUser(this.root).strings.io
  let pos = io.pos()
  io.seek(int(this.nameOfs))
  let nameInstExpr = encode(io.readBytesTerm(0, false, true, true), "UTF-8")
  this.nameInst = nameInstExpr
  io.seek(pos)
  this.nameInstFlag = true
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
      let it = encode(this.io.readBytesTerm(0, false, true, true), "UTF-8")
      this.str.add(it)
      inc i

proc fromFile*(_: typedesc[InstanceIoUser_StringsObj], filename: string): InstanceIoUser_StringsObj =
  InstanceIoUser_StringsObj.read(newKaitaiFileStream(filename), nil, nil)


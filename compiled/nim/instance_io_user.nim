import kaitai_struct_nim_runtime
import options
import encodings

type
  InstanceIoUser_Entry* = ref InstanceIoUser_EntryObj
  InstanceIoUser_EntryObj* = object
    nameOfs*: uint32
    value*: uint32
    io*: KaitaiStream
    root*: InstanceIoUser
    parent*: InstanceIoUser
    nameInst*: Option[string]
  InstanceIoUser_StringsObj* = ref InstanceIoUser_StringsObjObj
  InstanceIoUser_StringsObjObj* = object
    str*: seq[string]
    io*: KaitaiStream
    root*: InstanceIoUser
    parent*: InstanceIoUser
  InstanceIoUser* = ref InstanceIoUserObj
  InstanceIoUserObj* = object
    qtyEntries*: uint32
    entries*: seq[InstanceIoUser_Entry]
    strings*: InstanceIoUser_StringsObj
    io*: KaitaiStream
    root*: InstanceIoUser
    parent*: ref RootObj
    rawStrings*: string

### InstanceIoUser_Entry ###
proc name*(this: InstanceIoUser_Entry): string
proc name(this: InstanceIoUser_Entry): string = 
  if isSome(this.nameInst):
    return get(this.nameInst)
  let io = this._root.this.strings.stream
  let pos = io.pos()
  io.seek(this.nameOfs)
  let nameInst = convert(io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8")
  this.nameInst = some(nameInst)
  io.seek(pos)
  return get(this.nameInst)

proc read*(_: typedesc[InstanceIoUser_Entry], io: KaitaiStream, root: InstanceIoUser, parent: InstanceIoUser): InstanceIoUser_Entry =
  let this = new(InstanceIoUser_Entry)
  let root = if root == nil: cast[InstanceIoUser](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let nameOfs = this.io.readU4le()
  this.nameOfs = nameOfs
  let value = this.io.readU4le()
  this.value = value
  result = this

proc fromFile*(_: typedesc[InstanceIoUser_Entry], filename: string): InstanceIoUser_Entry =
  InstanceIoUser_Entry.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var InstanceIoUser_EntryObj) =
  close(x.io)

### InstanceIoUser_StringsObj ###
proc read*(_: typedesc[InstanceIoUser_StringsObj], io: KaitaiStream, root: InstanceIoUser, parent: InstanceIoUser): InstanceIoUser_StringsObj =
  let this = new(InstanceIoUser_StringsObj)
  let root = if root == nil: cast[InstanceIoUser](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.str = newSeq[string]()
  block:
    var i: int
    while not this.io.eof:
      this.str.add(convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8"))
      inc i
  result = this

proc fromFile*(_: typedesc[InstanceIoUser_StringsObj], filename: string): InstanceIoUser_StringsObj =
  InstanceIoUser_StringsObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var InstanceIoUser_StringsObjObj) =
  close(x.io)

### InstanceIoUser ###
proc read*(_: typedesc[InstanceIoUser], io: KaitaiStream, root: InstanceIoUser, parent: ref RootObj): InstanceIoUser =
  let this = new(InstanceIoUser)
  let root = if root == nil: cast[InstanceIoUser](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let qtyEntries = this.io.readU4le()
  this.qtyEntries = qtyEntries
  entries = newSeq[InstanceIoUser_Entry](this.qtyEntries)
  for i in 0 ..< this.qtyEntries:
    this.entries.add(InstanceIoUser_Entry.read(this.io, this.root, this))
  let rawStrings = this.io.readBytesFull()
  this.rawStrings = rawStrings
  let rawStringsIo = newKaitaiStringStream(rawStrings)
  let strings = InstanceIoUser_StringsObj.read(rawStringsIo, this.root, this)
  this.strings = strings
  result = this

proc fromFile*(_: typedesc[InstanceIoUser], filename: string): InstanceIoUser =
  InstanceIoUser.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var InstanceIoUserObj) =
  close(x.io)


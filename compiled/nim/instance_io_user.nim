import kaitai_struct_nim_runtime
import encodings

type
  InstanceIoUser_Entry* = ref InstanceIoUser_EntryObj
  InstanceIoUser_EntryObj* = object
    nameOfs*: uint32
    value*: uint32
    io*: KaitaiStream
    root*: InstanceIoUser
    parent*: InstanceIoUser
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
proc read*(_: typedesc[InstanceIoUser_Entry], io: KaitaiStream, root: InstanceIoUser, parent: InstanceIoUser): InstanceIoUser_Entry =
  result = new(InstanceIoUser_Entry)
  let root = if root == nil: cast[InstanceIoUser](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let nameOfs = io.readU4le()
  result.nameOfs = nameOfs
  let value = io.readU4le()
  result.value = value

proc fromFile*(_: typedesc[InstanceIoUser_Entry], filename: string): InstanceIoUser_Entry =
  InstanceIoUser_Entry.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var InstanceIoUser_EntryObj) =
  close(x.io)

### InstanceIoUser_StringsObj ###
proc read*(_: typedesc[InstanceIoUser_StringsObj], io: KaitaiStream, root: InstanceIoUser, parent: InstanceIoUser): InstanceIoUser_StringsObj =
  result = new(InstanceIoUser_StringsObj)
  let root = if root == nil: cast[InstanceIoUser](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  str = newSeq[string]()
  block:
    var i: int
    while not io.eof:
      str.add(convert(io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8"))
      inc i

proc fromFile*(_: typedesc[InstanceIoUser_StringsObj], filename: string): InstanceIoUser_StringsObj =
  InstanceIoUser_StringsObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var InstanceIoUser_StringsObjObj) =
  close(x.io)

### InstanceIoUser ###
proc read*(_: typedesc[InstanceIoUser], io: KaitaiStream, root: InstanceIoUser, parent: ref RootObj): InstanceIoUser =
  result = new(InstanceIoUser)
  let root = if root == nil: cast[InstanceIoUser](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let qtyEntries = io.readU4le()
  result.qtyEntries = qtyEntries
  entries = newSeq[InstanceIoUser_Entry](qtyEntries)
  for i in 0 ..< qtyEntries:
    entries.add(InstanceIoUser_Entry.read(io, result, root))
  let rawStrings = io.readBytesFull()
  result.rawStrings = rawStrings
  let rawStringsIo = newKaitaiStringStream(rawStrings)
  let strings = InstanceIoUser_StringsObj.read(rawStringsIo, result, root)
  result.strings = strings

proc fromFile*(_: typedesc[InstanceIoUser], filename: string): InstanceIoUser =
  InstanceIoUser.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var InstanceIoUserObj) =
  close(x.io)


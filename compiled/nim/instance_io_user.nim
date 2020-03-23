import kaitai_struct_nim_runtime
import encodings

type
  InstanceIoUserentry* = ref InstanceIoUserentryObj
  InstanceIoUserentryObj* = object
    qtyEntries*: uint32
    entries*: seq[Entry]
    strings*: StringsObj
    io*: KaitaiStream
    root*: InstanceIoUser
    parent*: ref RootObj
    rawStrings*: string
  InstanceIoUserstringsObj* = ref InstanceIoUserstringsObjObj
  InstanceIoUserstringsObjObj* = object
    qtyEntries*: uint32
    entries*: seq[Entry]
    strings*: StringsObj
    io*: KaitaiStream
    root*: InstanceIoUser
    parent*: ref RootObj
    rawStrings*: string
  InstanceIoUser* = ref InstanceIoUserObj
  InstanceIoUserObj* = object
    qtyEntries*: uint32
    entries*: seq[Entry]
    strings*: StringsObj
    io*: KaitaiStream
    root*: InstanceIoUser
    parent*: ref RootObj
    rawStrings*: string

### InstanceIoUserentry ###
proc read*(_: typedesc[InstanceIoUserentry], io: KaitaiStream, root: InstanceIoUser, parent: InstanceIoUser): InstanceIoUserentry =
  result = new(InstanceIoUserentry)
  let root = if root == nil: cast[InstanceIoUser](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.nameOfs = result.io.readU4le()
  result.value = result.io.readU4le()

proc fromFile*(_: typedesc[InstanceIoUserentry], filename: string): InstanceIoUserentry =
  InstanceIoUserentry.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var InstanceIoUserentryObj) =
  close(x.io)

### InstanceIoUserstringsObj ###
proc read*(_: typedesc[InstanceIoUserstringsObj], io: KaitaiStream, root: InstanceIoUser, parent: InstanceIoUser): InstanceIoUserstringsObj =
  result = new(InstanceIoUserstringsObj)
  let root = if root == nil: cast[InstanceIoUser](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.str = newSeq[string]()
  block:
    var i: int
    while not result.io.eof:
      result.str.add(convert(result.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8"))
      inc i

proc fromFile*(_: typedesc[InstanceIoUserstringsObj], filename: string): InstanceIoUserstringsObj =
  InstanceIoUserstringsObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var InstanceIoUserstringsObjObj) =
  close(x.io)

### InstanceIoUser ###
proc read*(_: typedesc[InstanceIoUser], io: KaitaiStream, root: InstanceIoUser, parent: ref RootObj): InstanceIoUser =
  result = new(InstanceIoUser)
  let root = if root == nil: cast[InstanceIoUser](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.qtyEntries = result.io.readU4le()
  entries = newSeq[Entry](qtyEntries)
  for i in 0 ..< qtyEntries:
    result.entries.add(Entry.read(result.io, result, root))
  result.rawStrings = result.io.readBytesFull()
  rawStringsIo = newKaitaiStringStream(rawStrings)
  result.strings = StringsObj.read(rawStringsIo, result, root)

proc fromFile*(_: typedesc[InstanceIoUser], filename: string): InstanceIoUser =
  InstanceIoUser.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var InstanceIoUserObj) =
  close(x.io)


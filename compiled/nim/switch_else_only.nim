import kaitai_struct_nim_runtime

type
  SwitchElseOnlydata* = ref SwitchElseOnlydataObj
  SwitchElseOnlydataObj* = object
    opcode*: int8
    primByte*: int8
    struct*: Data
    structSized*: Data
    io*: KaitaiStream
    root*: SwitchElseOnly
    parent*: ref RootObj
    rawStructSized*: string
  SwitchElseOnly* = ref SwitchElseOnlyObj
  SwitchElseOnlyObj* = object
    opcode*: int8
    primByte*: int8
    struct*: Data
    structSized*: Data
    io*: KaitaiStream
    root*: SwitchElseOnly
    parent*: ref RootObj
    rawStructSized*: string

### SwitchElseOnlydata ###
proc read*(_: typedesc[SwitchElseOnlydata], io: KaitaiStream, root: SwitchElseOnly, parent: SwitchElseOnly): SwitchElseOnlydata =
  result = new(SwitchElseOnlydata)
  let root = if root == nil: cast[SwitchElseOnly](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = result.io.readBytes(4)

proc fromFile*(_: typedesc[SwitchElseOnlydata], filename: string): SwitchElseOnlydata =
  SwitchElseOnlydata.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchElseOnlydataObj) =
  close(x.io)

### SwitchElseOnly ###
proc read*(_: typedesc[SwitchElseOnly], io: KaitaiStream, root: SwitchElseOnly, parent: ref RootObj): SwitchElseOnly =
  result = new(SwitchElseOnly)
  let root = if root == nil: cast[SwitchElseOnly](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.opcode = result.io.readS1()
  result.primByte = result.io.readS1()
  result.struct = Data.read(result.io, result, root)
  result.rawStructSized = result.io.readBytes(4)
  rawStructSizedIo = newKaitaiStringStream(rawStructSized)
  result.structSized = Data.read(rawStructSizedIo, result, root)

proc fromFile*(_: typedesc[SwitchElseOnly], filename: string): SwitchElseOnly =
  SwitchElseOnly.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchElseOnlyObj) =
  close(x.io)


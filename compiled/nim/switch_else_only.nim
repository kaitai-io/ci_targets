import kaitai_struct_nim_runtime

type
  SwitchElseOnly_Data* = ref SwitchElseOnly_DataObj
  SwitchElseOnly_DataObj* = object
    value*: string
    io*: KaitaiStream
    root*: SwitchElseOnly
    parent*: SwitchElseOnly
  SwitchElseOnly* = ref SwitchElseOnlyObj
  SwitchElseOnlyObj* = object
    opcode*: int8
    primByte*: int8
    struct*: SwitchElseOnly_Data
    structSized*: SwitchElseOnly_Data
    io*: KaitaiStream
    root*: SwitchElseOnly
    parent*: ref RootObj
    rawStructSized*: string

### SwitchElseOnly_Data ###
proc read*(_: typedesc[SwitchElseOnly_Data], io: KaitaiStream, root: SwitchElseOnly, parent: SwitchElseOnly): SwitchElseOnly_Data =
  result = new(SwitchElseOnly_Data)
  let root = if root == nil: cast[SwitchElseOnly](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let value = io.readBytes(int(4))
  result.value = value

proc fromFile*(_: typedesc[SwitchElseOnly_Data], filename: string): SwitchElseOnly_Data =
  SwitchElseOnly_Data.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchElseOnly_DataObj) =
  close(x.io)

### SwitchElseOnly ###
proc read*(_: typedesc[SwitchElseOnly], io: KaitaiStream, root: SwitchElseOnly, parent: ref RootObj): SwitchElseOnly =
  result = new(SwitchElseOnly)
  let root = if root == nil: cast[SwitchElseOnly](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let opcode = io.readS1()
  result.opcode = opcode
  let primByte = io.readS1()
  result.primByte = primByte
  let struct = SwitchElseOnly_Data.read(io, result, root)
  result.struct = struct
  let rawStructSized = io.readBytes(int(4))
  result.rawStructSized = rawStructSized
  let rawStructSizedIo = newKaitaiStringStream(rawStructSized)
  let structSized = SwitchElseOnly_Data.read(rawStructSizedIo, result, root)
  result.structSized = structSized

proc fromFile*(_: typedesc[SwitchElseOnly], filename: string): SwitchElseOnly =
  SwitchElseOnly.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchElseOnlyObj) =
  close(x.io)


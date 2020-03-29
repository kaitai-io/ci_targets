import kaitai_struct_nim_runtime
import encodings

type
  SwitchManualEnum_Opcode_Intval* = ref SwitchManualEnum_Opcode_IntvalObj
  SwitchManualEnum_Opcode_IntvalObj* = object
    value*: uint8
    io*: KaitaiStream
    root*: SwitchManualEnum
    parent*: SwitchManualEnum_Opcode
  SwitchManualEnum_Opcode_Strval* = ref SwitchManualEnum_Opcode_StrvalObj
  SwitchManualEnum_Opcode_StrvalObj* = object
    value*: string
    io*: KaitaiStream
    root*: SwitchManualEnum
    parent*: SwitchManualEnum_Opcode
  SwitchManualEnum_Opcode* = ref SwitchManualEnum_OpcodeObj
  SwitchManualEnum_OpcodeObj* = object
    code*: CodeEnum
    body*: ref RootObj
    io*: KaitaiStream
    root*: SwitchManualEnum
    parent*: SwitchManualEnum
  SwitchManualEnum* = ref SwitchManualEnumObj
  SwitchManualEnumObj* = object
    opcodes*: seq[SwitchManualEnum_Opcode]
    io*: KaitaiStream
    root*: SwitchManualEnum
    parent*: ref RootObj

### SwitchManualEnum_Opcode_Intval ###
proc read*(_: typedesc[SwitchManualEnum_Opcode_Intval], io: KaitaiStream, root: SwitchManualEnum, parent: SwitchManualEnum_Opcode): SwitchManualEnum_Opcode_Intval =
  result = new(SwitchManualEnum_Opcode_Intval)
  let root = if root == nil: cast[SwitchManualEnum](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let value = io.readU1()
  result.value = value

proc fromFile*(_: typedesc[SwitchManualEnum_Opcode_Intval], filename: string): SwitchManualEnum_Opcode_Intval =
  SwitchManualEnum_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnum_Opcode_IntvalObj) =
  close(x.io)

### SwitchManualEnum_Opcode_Strval ###
proc read*(_: typedesc[SwitchManualEnum_Opcode_Strval], io: KaitaiStream, root: SwitchManualEnum, parent: SwitchManualEnum_Opcode): SwitchManualEnum_Opcode_Strval =
  result = new(SwitchManualEnum_Opcode_Strval)
  let root = if root == nil: cast[SwitchManualEnum](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let value = convert(io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")
  result.value = value

proc fromFile*(_: typedesc[SwitchManualEnum_Opcode_Strval], filename: string): SwitchManualEnum_Opcode_Strval =
  SwitchManualEnum_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnum_Opcode_StrvalObj) =
  close(x.io)

### SwitchManualEnum_Opcode ###
proc read*(_: typedesc[SwitchManualEnum_Opcode], io: KaitaiStream, root: SwitchManualEnum, parent: SwitchManualEnum): SwitchManualEnum_Opcode =
  result = new(SwitchManualEnum_Opcode)
  let root = if root == nil: cast[SwitchManualEnum](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let code = 
  result.code = code
  let body = SwitchManualEnum_Opcode_Intval.read(io, result, root)
  result.body = body
  let body = SwitchManualEnum_Opcode_Strval.read(io, result, root)
  result.body = body

proc fromFile*(_: typedesc[SwitchManualEnum_Opcode], filename: string): SwitchManualEnum_Opcode =
  SwitchManualEnum_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnum_OpcodeObj) =
  close(x.io)

### SwitchManualEnum ###
proc read*(_: typedesc[SwitchManualEnum], io: KaitaiStream, root: SwitchManualEnum, parent: ref RootObj): SwitchManualEnum =
  result = new(SwitchManualEnum)
  let root = if root == nil: cast[SwitchManualEnum](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  opcodes = newSeq[SwitchManualEnum_Opcode]()
  block:
    var i: int
    while not io.eof:
      opcodes.add(SwitchManualEnum_Opcode.read(io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchManualEnum], filename: string): SwitchManualEnum =
  SwitchManualEnum.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumObj) =
  close(x.io)


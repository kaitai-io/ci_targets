import kaitai_struct_nim_runtime
import encodings

type
  SwitchManualEnumInvalid_Opcode_Intval* = ref SwitchManualEnumInvalid_Opcode_IntvalObj
  SwitchManualEnumInvalid_Opcode_IntvalObj* = object
    value*: uint8
    io*: KaitaiStream
    root*: SwitchManualEnumInvalid
    parent*: SwitchManualEnumInvalid_Opcode
  SwitchManualEnumInvalid_Opcode_Strval* = ref SwitchManualEnumInvalid_Opcode_StrvalObj
  SwitchManualEnumInvalid_Opcode_StrvalObj* = object
    value*: string
    io*: KaitaiStream
    root*: SwitchManualEnumInvalid
    parent*: SwitchManualEnumInvalid_Opcode
  SwitchManualEnumInvalid_Opcode* = ref SwitchManualEnumInvalid_OpcodeObj
  SwitchManualEnumInvalid_OpcodeObj* = object
    code*: CodeEnum
    body*: ref RootObj
    io*: KaitaiStream
    root*: SwitchManualEnumInvalid
    parent*: SwitchManualEnumInvalid
  SwitchManualEnumInvalid* = ref SwitchManualEnumInvalidObj
  SwitchManualEnumInvalidObj* = object
    opcodes*: seq[SwitchManualEnumInvalid_Opcode]
    io*: KaitaiStream
    root*: SwitchManualEnumInvalid
    parent*: ref RootObj

### SwitchManualEnumInvalid_Opcode_Intval ###
proc read*(_: typedesc[SwitchManualEnumInvalid_Opcode_Intval], io: KaitaiStream, root: SwitchManualEnumInvalid, parent: SwitchManualEnumInvalid_Opcode): SwitchManualEnumInvalid_Opcode_Intval =
  result = new(SwitchManualEnumInvalid_Opcode_Intval)
  let root = if root == nil: cast[SwitchManualEnumInvalid](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let value = io.readU1()
  result.value = value

proc fromFile*(_: typedesc[SwitchManualEnumInvalid_Opcode_Intval], filename: string): SwitchManualEnumInvalid_Opcode_Intval =
  SwitchManualEnumInvalid_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalid_Opcode_IntvalObj) =
  close(x.io)

### SwitchManualEnumInvalid_Opcode_Strval ###
proc read*(_: typedesc[SwitchManualEnumInvalid_Opcode_Strval], io: KaitaiStream, root: SwitchManualEnumInvalid, parent: SwitchManualEnumInvalid_Opcode): SwitchManualEnumInvalid_Opcode_Strval =
  result = new(SwitchManualEnumInvalid_Opcode_Strval)
  let root = if root == nil: cast[SwitchManualEnumInvalid](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let value = convert(io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")
  result.value = value

proc fromFile*(_: typedesc[SwitchManualEnumInvalid_Opcode_Strval], filename: string): SwitchManualEnumInvalid_Opcode_Strval =
  SwitchManualEnumInvalid_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalid_Opcode_StrvalObj) =
  close(x.io)

### SwitchManualEnumInvalid_Opcode ###
proc read*(_: typedesc[SwitchManualEnumInvalid_Opcode], io: KaitaiStream, root: SwitchManualEnumInvalid, parent: SwitchManualEnumInvalid): SwitchManualEnumInvalid_Opcode =
  result = new(SwitchManualEnumInvalid_Opcode)
  let root = if root == nil: cast[SwitchManualEnumInvalid](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let code = 
  result.code = code
  let body = SwitchManualEnumInvalid_Opcode_Intval.read(io, result, root)
  result.body = body
  let body = SwitchManualEnumInvalid_Opcode_Strval.read(io, result, root)
  result.body = body

proc fromFile*(_: typedesc[SwitchManualEnumInvalid_Opcode], filename: string): SwitchManualEnumInvalid_Opcode =
  SwitchManualEnumInvalid_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalid_OpcodeObj) =
  close(x.io)

### SwitchManualEnumInvalid ###
proc read*(_: typedesc[SwitchManualEnumInvalid], io: KaitaiStream, root: SwitchManualEnumInvalid, parent: ref RootObj): SwitchManualEnumInvalid =
  result = new(SwitchManualEnumInvalid)
  let root = if root == nil: cast[SwitchManualEnumInvalid](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  opcodes = newSeq[SwitchManualEnumInvalid_Opcode]()
  block:
    var i: int
    while not io.eof:
      opcodes.add(SwitchManualEnumInvalid_Opcode.read(io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchManualEnumInvalid], filename: string): SwitchManualEnumInvalid =
  SwitchManualEnumInvalid.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalidObj) =
  close(x.io)


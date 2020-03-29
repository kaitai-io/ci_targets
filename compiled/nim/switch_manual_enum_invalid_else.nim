import kaitai_struct_nim_runtime
import encodings

type
  SwitchManualEnumInvalidElse_Opcode_Intval* = ref SwitchManualEnumInvalidElse_Opcode_IntvalObj
  SwitchManualEnumInvalidElse_Opcode_IntvalObj* = object
    value*: uint8
    io*: KaitaiStream
    root*: SwitchManualEnumInvalidElse
    parent*: SwitchManualEnumInvalidElse_Opcode
  SwitchManualEnumInvalidElse_Opcode_Strval* = ref SwitchManualEnumInvalidElse_Opcode_StrvalObj
  SwitchManualEnumInvalidElse_Opcode_StrvalObj* = object
    value*: string
    io*: KaitaiStream
    root*: SwitchManualEnumInvalidElse
    parent*: SwitchManualEnumInvalidElse_Opcode
  SwitchManualEnumInvalidElse_Opcode_Defval* = ref SwitchManualEnumInvalidElse_Opcode_DefvalObj
  SwitchManualEnumInvalidElse_Opcode_DefvalObj* = object
    io*: KaitaiStream
    root*: SwitchManualEnumInvalidElse
    parent*: SwitchManualEnumInvalidElse_Opcode
  SwitchManualEnumInvalidElse_Opcode* = ref SwitchManualEnumInvalidElse_OpcodeObj
  SwitchManualEnumInvalidElse_OpcodeObj* = object
    code*: CodeEnum
    body*: ref RootObj
    io*: KaitaiStream
    root*: SwitchManualEnumInvalidElse
    parent*: SwitchManualEnumInvalidElse
  SwitchManualEnumInvalidElse* = ref SwitchManualEnumInvalidElseObj
  SwitchManualEnumInvalidElseObj* = object
    opcodes*: seq[SwitchManualEnumInvalidElse_Opcode]
    io*: KaitaiStream
    root*: SwitchManualEnumInvalidElse
    parent*: ref RootObj

### SwitchManualEnumInvalidElse_Opcode_Intval ###
proc read*(_: typedesc[SwitchManualEnumInvalidElse_Opcode_Intval], io: KaitaiStream, root: SwitchManualEnumInvalidElse, parent: SwitchManualEnumInvalidElse_Opcode): SwitchManualEnumInvalidElse_Opcode_Intval =
  result = new(SwitchManualEnumInvalidElse_Opcode_Intval)
  let root = if root == nil: cast[SwitchManualEnumInvalidElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let value = io.readU1()
  result.value = value

proc fromFile*(_: typedesc[SwitchManualEnumInvalidElse_Opcode_Intval], filename: string): SwitchManualEnumInvalidElse_Opcode_Intval =
  SwitchManualEnumInvalidElse_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalidElse_Opcode_IntvalObj) =
  close(x.io)

### SwitchManualEnumInvalidElse_Opcode_Strval ###
proc read*(_: typedesc[SwitchManualEnumInvalidElse_Opcode_Strval], io: KaitaiStream, root: SwitchManualEnumInvalidElse, parent: SwitchManualEnumInvalidElse_Opcode): SwitchManualEnumInvalidElse_Opcode_Strval =
  result = new(SwitchManualEnumInvalidElse_Opcode_Strval)
  let root = if root == nil: cast[SwitchManualEnumInvalidElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let value = convert(io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")
  result.value = value

proc fromFile*(_: typedesc[SwitchManualEnumInvalidElse_Opcode_Strval], filename: string): SwitchManualEnumInvalidElse_Opcode_Strval =
  SwitchManualEnumInvalidElse_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalidElse_Opcode_StrvalObj) =
  close(x.io)

### SwitchManualEnumInvalidElse_Opcode_Defval ###
proc read*(_: typedesc[SwitchManualEnumInvalidElse_Opcode_Defval], io: KaitaiStream, root: SwitchManualEnumInvalidElse, parent: SwitchManualEnumInvalidElse_Opcode): SwitchManualEnumInvalidElse_Opcode_Defval =
  result = new(SwitchManualEnumInvalidElse_Opcode_Defval)
  let root = if root == nil: cast[SwitchManualEnumInvalidElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[SwitchManualEnumInvalidElse_Opcode_Defval], filename: string): SwitchManualEnumInvalidElse_Opcode_Defval =
  SwitchManualEnumInvalidElse_Opcode_Defval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalidElse_Opcode_DefvalObj) =
  close(x.io)

### SwitchManualEnumInvalidElse_Opcode ###
proc read*(_: typedesc[SwitchManualEnumInvalidElse_Opcode], io: KaitaiStream, root: SwitchManualEnumInvalidElse, parent: SwitchManualEnumInvalidElse): SwitchManualEnumInvalidElse_Opcode =
  result = new(SwitchManualEnumInvalidElse_Opcode)
  let root = if root == nil: cast[SwitchManualEnumInvalidElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let code = 
  result.code = code
  let body = SwitchManualEnumInvalidElse_Opcode_Intval.read(io, result, root)
  result.body = body
  let body = SwitchManualEnumInvalidElse_Opcode_Strval.read(io, result, root)
  result.body = body
  let body = SwitchManualEnumInvalidElse_Opcode_Defval.read(io, result, root)
  result.body = body

proc fromFile*(_: typedesc[SwitchManualEnumInvalidElse_Opcode], filename: string): SwitchManualEnumInvalidElse_Opcode =
  SwitchManualEnumInvalidElse_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalidElse_OpcodeObj) =
  close(x.io)

### SwitchManualEnumInvalidElse ###
proc read*(_: typedesc[SwitchManualEnumInvalidElse], io: KaitaiStream, root: SwitchManualEnumInvalidElse, parent: ref RootObj): SwitchManualEnumInvalidElse =
  result = new(SwitchManualEnumInvalidElse)
  let root = if root == nil: cast[SwitchManualEnumInvalidElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  opcodes = newSeq[SwitchManualEnumInvalidElse_Opcode]()
  block:
    var i: int
    while not io.eof:
      opcodes.add(SwitchManualEnumInvalidElse_Opcode.read(io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchManualEnumInvalidElse], filename: string): SwitchManualEnumInvalidElse =
  SwitchManualEnumInvalidElse.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalidElseObj) =
  close(x.io)


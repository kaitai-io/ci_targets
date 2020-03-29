import kaitai_struct_nim_runtime
import encodings

type
  SwitchManualIntElse_Opcode_Intval* = ref SwitchManualIntElse_Opcode_IntvalObj
  SwitchManualIntElse_Opcode_IntvalObj* = object
    value*: uint8
    io*: KaitaiStream
    root*: SwitchManualIntElse
    parent*: SwitchManualIntElse_Opcode
  SwitchManualIntElse_Opcode_Strval* = ref SwitchManualIntElse_Opcode_StrvalObj
  SwitchManualIntElse_Opcode_StrvalObj* = object
    value*: string
    io*: KaitaiStream
    root*: SwitchManualIntElse
    parent*: SwitchManualIntElse_Opcode
  SwitchManualIntElse_Opcode_Noneval* = ref SwitchManualIntElse_Opcode_NonevalObj
  SwitchManualIntElse_Opcode_NonevalObj* = object
    filler*: uint32
    io*: KaitaiStream
    root*: SwitchManualIntElse
    parent*: SwitchManualIntElse_Opcode
  SwitchManualIntElse_Opcode* = ref SwitchManualIntElse_OpcodeObj
  SwitchManualIntElse_OpcodeObj* = object
    code*: uint8
    body*: ref RootObj
    io*: KaitaiStream
    root*: SwitchManualIntElse
    parent*: SwitchManualIntElse
  SwitchManualIntElse* = ref SwitchManualIntElseObj
  SwitchManualIntElseObj* = object
    opcodes*: seq[SwitchManualIntElse_Opcode]
    io*: KaitaiStream
    root*: SwitchManualIntElse
    parent*: ref RootObj

### SwitchManualIntElse_Opcode_Intval ###
proc read*(_: typedesc[SwitchManualIntElse_Opcode_Intval], io: KaitaiStream, root: SwitchManualIntElse, parent: SwitchManualIntElse_Opcode): SwitchManualIntElse_Opcode_Intval =
  result = new(SwitchManualIntElse_Opcode_Intval)
  let root = if root == nil: cast[SwitchManualIntElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let value = io.readU1()
  result.value = value

proc fromFile*(_: typedesc[SwitchManualIntElse_Opcode_Intval], filename: string): SwitchManualIntElse_Opcode_Intval =
  SwitchManualIntElse_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntElse_Opcode_IntvalObj) =
  close(x.io)

### SwitchManualIntElse_Opcode_Strval ###
proc read*(_: typedesc[SwitchManualIntElse_Opcode_Strval], io: KaitaiStream, root: SwitchManualIntElse, parent: SwitchManualIntElse_Opcode): SwitchManualIntElse_Opcode_Strval =
  result = new(SwitchManualIntElse_Opcode_Strval)
  let root = if root == nil: cast[SwitchManualIntElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let value = convert(io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")
  result.value = value

proc fromFile*(_: typedesc[SwitchManualIntElse_Opcode_Strval], filename: string): SwitchManualIntElse_Opcode_Strval =
  SwitchManualIntElse_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntElse_Opcode_StrvalObj) =
  close(x.io)

### SwitchManualIntElse_Opcode_Noneval ###
proc read*(_: typedesc[SwitchManualIntElse_Opcode_Noneval], io: KaitaiStream, root: SwitchManualIntElse, parent: SwitchManualIntElse_Opcode): SwitchManualIntElse_Opcode_Noneval =
  result = new(SwitchManualIntElse_Opcode_Noneval)
  let root = if root == nil: cast[SwitchManualIntElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let filler = io.readU4le()
  result.filler = filler

proc fromFile*(_: typedesc[SwitchManualIntElse_Opcode_Noneval], filename: string): SwitchManualIntElse_Opcode_Noneval =
  SwitchManualIntElse_Opcode_Noneval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntElse_Opcode_NonevalObj) =
  close(x.io)

### SwitchManualIntElse_Opcode ###
proc read*(_: typedesc[SwitchManualIntElse_Opcode], io: KaitaiStream, root: SwitchManualIntElse, parent: SwitchManualIntElse): SwitchManualIntElse_Opcode =
  result = new(SwitchManualIntElse_Opcode)
  let root = if root == nil: cast[SwitchManualIntElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let code = io.readU1()
  result.code = code
  let body = SwitchManualIntElse_Opcode_Intval.read(io, result, root)
  result.body = body
  let body = SwitchManualIntElse_Opcode_Strval.read(io, result, root)
  result.body = body
  let body = SwitchManualIntElse_Opcode_Noneval.read(io, result, root)
  result.body = body

proc fromFile*(_: typedesc[SwitchManualIntElse_Opcode], filename: string): SwitchManualIntElse_Opcode =
  SwitchManualIntElse_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntElse_OpcodeObj) =
  close(x.io)

### SwitchManualIntElse ###
proc read*(_: typedesc[SwitchManualIntElse], io: KaitaiStream, root: SwitchManualIntElse, parent: ref RootObj): SwitchManualIntElse =
  result = new(SwitchManualIntElse)
  let root = if root == nil: cast[SwitchManualIntElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  opcodes = newSeq[SwitchManualIntElse_Opcode]()
  block:
    var i: int
    while not io.eof:
      opcodes.add(SwitchManualIntElse_Opcode.read(io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchManualIntElse], filename: string): SwitchManualIntElse =
  SwitchManualIntElse.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntElseObj) =
  close(x.io)


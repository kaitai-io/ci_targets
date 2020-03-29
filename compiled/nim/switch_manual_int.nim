import kaitai_struct_nim_runtime
import encodings

type
  SwitchManualInt_Opcode_Intval* = ref SwitchManualInt_Opcode_IntvalObj
  SwitchManualInt_Opcode_IntvalObj* = object
    value*: uint8
    io*: KaitaiStream
    root*: SwitchManualInt
    parent*: SwitchManualInt_Opcode
  SwitchManualInt_Opcode_Strval* = ref SwitchManualInt_Opcode_StrvalObj
  SwitchManualInt_Opcode_StrvalObj* = object
    value*: string
    io*: KaitaiStream
    root*: SwitchManualInt
    parent*: SwitchManualInt_Opcode
  SwitchManualInt_Opcode* = ref SwitchManualInt_OpcodeObj
  SwitchManualInt_OpcodeObj* = object
    code*: uint8
    body*: ref RootObj
    io*: KaitaiStream
    root*: SwitchManualInt
    parent*: SwitchManualInt
  SwitchManualInt* = ref SwitchManualIntObj
  SwitchManualIntObj* = object
    opcodes*: seq[SwitchManualInt_Opcode]
    io*: KaitaiStream
    root*: SwitchManualInt
    parent*: ref RootObj

### SwitchManualInt_Opcode_Intval ###
proc read*(_: typedesc[SwitchManualInt_Opcode_Intval], io: KaitaiStream, root: SwitchManualInt, parent: SwitchManualInt_Opcode): SwitchManualInt_Opcode_Intval =
  result = new(SwitchManualInt_Opcode_Intval)
  let root = if root == nil: cast[SwitchManualInt](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let value = io.readU1()
  result.value = value

proc fromFile*(_: typedesc[SwitchManualInt_Opcode_Intval], filename: string): SwitchManualInt_Opcode_Intval =
  SwitchManualInt_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualInt_Opcode_IntvalObj) =
  close(x.io)

### SwitchManualInt_Opcode_Strval ###
proc read*(_: typedesc[SwitchManualInt_Opcode_Strval], io: KaitaiStream, root: SwitchManualInt, parent: SwitchManualInt_Opcode): SwitchManualInt_Opcode_Strval =
  result = new(SwitchManualInt_Opcode_Strval)
  let root = if root == nil: cast[SwitchManualInt](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let value = convert(io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")
  result.value = value

proc fromFile*(_: typedesc[SwitchManualInt_Opcode_Strval], filename: string): SwitchManualInt_Opcode_Strval =
  SwitchManualInt_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualInt_Opcode_StrvalObj) =
  close(x.io)

### SwitchManualInt_Opcode ###
proc read*(_: typedesc[SwitchManualInt_Opcode], io: KaitaiStream, root: SwitchManualInt, parent: SwitchManualInt): SwitchManualInt_Opcode =
  result = new(SwitchManualInt_Opcode)
  let root = if root == nil: cast[SwitchManualInt](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let code = io.readU1()
  result.code = code
  let body = SwitchManualInt_Opcode_Intval.read(io, result, root)
  result.body = body
  let body = SwitchManualInt_Opcode_Strval.read(io, result, root)
  result.body = body

proc fromFile*(_: typedesc[SwitchManualInt_Opcode], filename: string): SwitchManualInt_Opcode =
  SwitchManualInt_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualInt_OpcodeObj) =
  close(x.io)

### SwitchManualInt ###
proc read*(_: typedesc[SwitchManualInt], io: KaitaiStream, root: SwitchManualInt, parent: ref RootObj): SwitchManualInt =
  result = new(SwitchManualInt)
  let root = if root == nil: cast[SwitchManualInt](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  opcodes = newSeq[SwitchManualInt_Opcode]()
  block:
    var i: int
    while not io.eof:
      opcodes.add(SwitchManualInt_Opcode.read(io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchManualInt], filename: string): SwitchManualInt =
  SwitchManualInt.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntObj) =
  close(x.io)


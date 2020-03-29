import kaitai_struct_nim_runtime
import encodings

type
  SwitchManualStr_Opcode_Intval* = ref SwitchManualStr_Opcode_IntvalObj
  SwitchManualStr_Opcode_IntvalObj* = object
    value*: uint8
    io*: KaitaiStream
    root*: SwitchManualStr
    parent*: SwitchManualStr_Opcode
  SwitchManualStr_Opcode_Strval* = ref SwitchManualStr_Opcode_StrvalObj
  SwitchManualStr_Opcode_StrvalObj* = object
    value*: string
    io*: KaitaiStream
    root*: SwitchManualStr
    parent*: SwitchManualStr_Opcode
  SwitchManualStr_Opcode* = ref SwitchManualStr_OpcodeObj
  SwitchManualStr_OpcodeObj* = object
    code*: string
    body*: ref RootObj
    io*: KaitaiStream
    root*: SwitchManualStr
    parent*: SwitchManualStr
  SwitchManualStr* = ref SwitchManualStrObj
  SwitchManualStrObj* = object
    opcodes*: seq[SwitchManualStr_Opcode]
    io*: KaitaiStream
    root*: SwitchManualStr
    parent*: ref RootObj

### SwitchManualStr_Opcode_Intval ###
proc read*(_: typedesc[SwitchManualStr_Opcode_Intval], io: KaitaiStream, root: SwitchManualStr, parent: SwitchManualStr_Opcode): SwitchManualStr_Opcode_Intval =
  result = new(SwitchManualStr_Opcode_Intval)
  let root = if root == nil: cast[SwitchManualStr](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let value = io.readU1()
  result.value = value

proc fromFile*(_: typedesc[SwitchManualStr_Opcode_Intval], filename: string): SwitchManualStr_Opcode_Intval =
  SwitchManualStr_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualStr_Opcode_IntvalObj) =
  close(x.io)

### SwitchManualStr_Opcode_Strval ###
proc read*(_: typedesc[SwitchManualStr_Opcode_Strval], io: KaitaiStream, root: SwitchManualStr, parent: SwitchManualStr_Opcode): SwitchManualStr_Opcode_Strval =
  result = new(SwitchManualStr_Opcode_Strval)
  let root = if root == nil: cast[SwitchManualStr](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let value = convert(io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")
  result.value = value

proc fromFile*(_: typedesc[SwitchManualStr_Opcode_Strval], filename: string): SwitchManualStr_Opcode_Strval =
  SwitchManualStr_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualStr_Opcode_StrvalObj) =
  close(x.io)

### SwitchManualStr_Opcode ###
proc read*(_: typedesc[SwitchManualStr_Opcode], io: KaitaiStream, root: SwitchManualStr, parent: SwitchManualStr): SwitchManualStr_Opcode =
  result = new(SwitchManualStr_Opcode)
  let root = if root == nil: cast[SwitchManualStr](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let code = convert(io.readBytes(int(1)), srcEncoding = "ASCII")
  result.code = code
  let body = SwitchManualStr_Opcode_Intval.read(io, result, root)
  result.body = body
  let body = SwitchManualStr_Opcode_Strval.read(io, result, root)
  result.body = body

proc fromFile*(_: typedesc[SwitchManualStr_Opcode], filename: string): SwitchManualStr_Opcode =
  SwitchManualStr_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualStr_OpcodeObj) =
  close(x.io)

### SwitchManualStr ###
proc read*(_: typedesc[SwitchManualStr], io: KaitaiStream, root: SwitchManualStr, parent: ref RootObj): SwitchManualStr =
  result = new(SwitchManualStr)
  let root = if root == nil: cast[SwitchManualStr](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  opcodes = newSeq[SwitchManualStr_Opcode]()
  block:
    var i: int
    while not io.eof:
      opcodes.add(SwitchManualStr_Opcode.read(io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchManualStr], filename: string): SwitchManualStr =
  SwitchManualStr.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualStrObj) =
  close(x.io)


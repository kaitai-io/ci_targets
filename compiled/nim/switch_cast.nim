import kaitai_struct_nim_runtime
import encodings

type
  SwitchCast_Opcode* = ref SwitchCast_OpcodeObj
  SwitchCast_OpcodeObj* = object
    code*: uint8
    body*: ref RootObj
    io*: KaitaiStream
    root*: SwitchCast
    parent*: SwitchCast
  SwitchCast_Intval* = ref SwitchCast_IntvalObj
  SwitchCast_IntvalObj* = object
    value*: uint8
    io*: KaitaiStream
    root*: SwitchCast
    parent*: SwitchCast_Opcode
  SwitchCast_Strval* = ref SwitchCast_StrvalObj
  SwitchCast_StrvalObj* = object
    value*: string
    io*: KaitaiStream
    root*: SwitchCast
    parent*: SwitchCast_Opcode
  SwitchCast* = ref SwitchCastObj
  SwitchCastObj* = object
    opcodes*: seq[SwitchCast_Opcode]
    io*: KaitaiStream
    root*: SwitchCast
    parent*: ref RootObj

### SwitchCast_Opcode ###
proc read*(_: typedesc[SwitchCast_Opcode], io: KaitaiStream, root: SwitchCast, parent: SwitchCast): SwitchCast_Opcode =
  result = new(SwitchCast_Opcode)
  let root = if root == nil: cast[SwitchCast](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let code = io.readU1()
  result.code = code
  let body = SwitchCast_Intval.read(io, result, root)
  result.body = body
  let body = SwitchCast_Strval.read(io, result, root)
  result.body = body

proc fromFile*(_: typedesc[SwitchCast_Opcode], filename: string): SwitchCast_Opcode =
  SwitchCast_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchCast_OpcodeObj) =
  close(x.io)

### SwitchCast_Intval ###
proc read*(_: typedesc[SwitchCast_Intval], io: KaitaiStream, root: SwitchCast, parent: SwitchCast_Opcode): SwitchCast_Intval =
  result = new(SwitchCast_Intval)
  let root = if root == nil: cast[SwitchCast](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let value = io.readU1()
  result.value = value

proc fromFile*(_: typedesc[SwitchCast_Intval], filename: string): SwitchCast_Intval =
  SwitchCast_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchCast_IntvalObj) =
  close(x.io)

### SwitchCast_Strval ###
proc read*(_: typedesc[SwitchCast_Strval], io: KaitaiStream, root: SwitchCast, parent: SwitchCast_Opcode): SwitchCast_Strval =
  result = new(SwitchCast_Strval)
  let root = if root == nil: cast[SwitchCast](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let value = convert(io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")
  result.value = value

proc fromFile*(_: typedesc[SwitchCast_Strval], filename: string): SwitchCast_Strval =
  SwitchCast_Strval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchCast_StrvalObj) =
  close(x.io)

### SwitchCast ###
proc read*(_: typedesc[SwitchCast], io: KaitaiStream, root: SwitchCast, parent: ref RootObj): SwitchCast =
  result = new(SwitchCast)
  let root = if root == nil: cast[SwitchCast](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  opcodes = newSeq[SwitchCast_Opcode]()
  block:
    var i: int
    while not io.eof:
      opcodes.add(SwitchCast_Opcode.read(io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchCast], filename: string): SwitchCast =
  SwitchCast.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchCastObj) =
  close(x.io)


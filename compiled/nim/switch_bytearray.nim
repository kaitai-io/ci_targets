import kaitai_struct_nim_runtime
import encodings

type
  SwitchBytearray_Opcode_Intval* = ref SwitchBytearray_Opcode_IntvalObj
  SwitchBytearray_Opcode_IntvalObj* = object
    value*: uint8
    io*: KaitaiStream
    root*: SwitchBytearray
    parent*: SwitchBytearray_Opcode
  SwitchBytearray_Opcode_Strval* = ref SwitchBytearray_Opcode_StrvalObj
  SwitchBytearray_Opcode_StrvalObj* = object
    value*: string
    io*: KaitaiStream
    root*: SwitchBytearray
    parent*: SwitchBytearray_Opcode
  SwitchBytearray_Opcode* = ref SwitchBytearray_OpcodeObj
  SwitchBytearray_OpcodeObj* = object
    code*: string
    body*: ref RootObj
    io*: KaitaiStream
    root*: SwitchBytearray
    parent*: SwitchBytearray
  SwitchBytearray* = ref SwitchBytearrayObj
  SwitchBytearrayObj* = object
    opcodes*: seq[SwitchBytearray_Opcode]
    io*: KaitaiStream
    root*: SwitchBytearray
    parent*: ref RootObj

### SwitchBytearray_Opcode_Intval ###
proc read*(_: typedesc[SwitchBytearray_Opcode_Intval], io: KaitaiStream, root: SwitchBytearray, parent: SwitchBytearray_Opcode): SwitchBytearray_Opcode_Intval =
  result = new(SwitchBytearray_Opcode_Intval)
  let root = if root == nil: cast[SwitchBytearray](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let value = io.readU1()
  result.value = value

proc fromFile*(_: typedesc[SwitchBytearray_Opcode_Intval], filename: string): SwitchBytearray_Opcode_Intval =
  SwitchBytearray_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchBytearray_Opcode_IntvalObj) =
  close(x.io)

### SwitchBytearray_Opcode_Strval ###
proc read*(_: typedesc[SwitchBytearray_Opcode_Strval], io: KaitaiStream, root: SwitchBytearray, parent: SwitchBytearray_Opcode): SwitchBytearray_Opcode_Strval =
  result = new(SwitchBytearray_Opcode_Strval)
  let root = if root == nil: cast[SwitchBytearray](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let value = convert(io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")
  result.value = value

proc fromFile*(_: typedesc[SwitchBytearray_Opcode_Strval], filename: string): SwitchBytearray_Opcode_Strval =
  SwitchBytearray_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchBytearray_Opcode_StrvalObj) =
  close(x.io)

### SwitchBytearray_Opcode ###
proc read*(_: typedesc[SwitchBytearray_Opcode], io: KaitaiStream, root: SwitchBytearray, parent: SwitchBytearray): SwitchBytearray_Opcode =
  result = new(SwitchBytearray_Opcode)
  let root = if root == nil: cast[SwitchBytearray](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let code = io.readBytes(int(1))
  result.code = code
  let body = SwitchBytearray_Opcode_Intval.read(io, result, root)
  result.body = body
  let body = SwitchBytearray_Opcode_Strval.read(io, result, root)
  result.body = body

proc fromFile*(_: typedesc[SwitchBytearray_Opcode], filename: string): SwitchBytearray_Opcode =
  SwitchBytearray_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchBytearray_OpcodeObj) =
  close(x.io)

### SwitchBytearray ###
proc read*(_: typedesc[SwitchBytearray], io: KaitaiStream, root: SwitchBytearray, parent: ref RootObj): SwitchBytearray =
  result = new(SwitchBytearray)
  let root = if root == nil: cast[SwitchBytearray](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  opcodes = newSeq[SwitchBytearray_Opcode]()
  block:
    var i: int
    while not io.eof:
      opcodes.add(SwitchBytearray_Opcode.read(io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchBytearray], filename: string): SwitchBytearray =
  SwitchBytearray.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchBytearrayObj) =
  close(x.io)


import kaitai_struct_nim_runtime
import encodings

type
  SwitchBytearrayopcodeintval* = ref SwitchBytearrayopcodeintvalObj
  SwitchBytearrayopcodeintvalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchBytearray
    parent*: ref RootObj
  SwitchBytearrayopcodestrval* = ref SwitchBytearrayopcodestrvalObj
  SwitchBytearrayopcodestrvalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchBytearray
    parent*: ref RootObj
  SwitchBytearrayopcode* = ref SwitchBytearrayopcodeObj
  SwitchBytearrayopcodeObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchBytearray
    parent*: ref RootObj
  SwitchBytearray* = ref SwitchBytearrayObj
  SwitchBytearrayObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchBytearray
    parent*: ref RootObj

### SwitchBytearrayopcodeintval ###
proc read*(_: typedesc[SwitchBytearrayopcodeintval], io: KaitaiStream, root: SwitchBytearray, parent: SwitchBytearrayopcode): SwitchBytearrayopcodeintval =
  result = new(SwitchBytearrayopcodeintval)
  let root = if root == nil: cast[SwitchBytearray](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = result.io.readU1()

proc fromFile*(_: typedesc[SwitchBytearrayopcodeintval], filename: string): SwitchBytearrayopcodeintval =
  SwitchBytearrayopcodeintval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchBytearrayopcodeintvalObj) =
  close(x.io)

### SwitchBytearrayopcodestrval ###
proc read*(_: typedesc[SwitchBytearrayopcodestrval], io: KaitaiStream, root: SwitchBytearray, parent: SwitchBytearrayopcode): SwitchBytearrayopcodestrval =
  result = new(SwitchBytearrayopcodestrval)
  let root = if root == nil: cast[SwitchBytearray](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = convert(result.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")

proc fromFile*(_: typedesc[SwitchBytearrayopcodestrval], filename: string): SwitchBytearrayopcodestrval =
  SwitchBytearrayopcodestrval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchBytearrayopcodestrvalObj) =
  close(x.io)

### SwitchBytearrayopcode ###
proc read*(_: typedesc[SwitchBytearrayopcode], io: KaitaiStream, root: SwitchBytearray, parent: SwitchBytearray): SwitchBytearrayopcode =
  result = new(SwitchBytearrayopcode)
  let root = if root == nil: cast[SwitchBytearray](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.code = result.io.readBytes(1)
  result.body = Intval.read(result.io, result, root)
  result.body = Strval.read(result.io, result, root)

proc fromFile*(_: typedesc[SwitchBytearrayopcode], filename: string): SwitchBytearrayopcode =
  SwitchBytearrayopcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchBytearrayopcodeObj) =
  close(x.io)

### SwitchBytearray ###
proc read*(_: typedesc[SwitchBytearray], io: KaitaiStream, root: SwitchBytearray, parent: ref RootObj): SwitchBytearray =
  result = new(SwitchBytearray)
  let root = if root == nil: cast[SwitchBytearray](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.opcodes = newSeq[Opcode]()
  block:
    var i: int
    while not result.io.eof:
      result.opcodes.add(Opcode.read(result.io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchBytearray], filename: string): SwitchBytearray =
  SwitchBytearray.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchBytearrayObj) =
  close(x.io)


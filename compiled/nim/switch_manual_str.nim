import kaitai_struct_nim_runtime
import encodings

type
  SwitchManualStropcodeintval* = ref SwitchManualStropcodeintvalObj
  SwitchManualStropcodeintvalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualStr
    parent*: ref RootObj
  SwitchManualStropcodestrval* = ref SwitchManualStropcodestrvalObj
  SwitchManualStropcodestrvalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualStr
    parent*: ref RootObj
  SwitchManualStropcode* = ref SwitchManualStropcodeObj
  SwitchManualStropcodeObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualStr
    parent*: ref RootObj
  SwitchManualStr* = ref SwitchManualStrObj
  SwitchManualStrObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualStr
    parent*: ref RootObj

### SwitchManualStropcodeintval ###
proc read*(_: typedesc[SwitchManualStropcodeintval], io: KaitaiStream, root: SwitchManualStr, parent: SwitchManualStropcode): SwitchManualStropcodeintval =
  result = new(SwitchManualStropcodeintval)
  let root = if root == nil: cast[SwitchManualStr](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = result.io.readU1()

proc fromFile*(_: typedesc[SwitchManualStropcodeintval], filename: string): SwitchManualStropcodeintval =
  SwitchManualStropcodeintval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualStropcodeintvalObj) =
  close(x.io)

### SwitchManualStropcodestrval ###
proc read*(_: typedesc[SwitchManualStropcodestrval], io: KaitaiStream, root: SwitchManualStr, parent: SwitchManualStropcode): SwitchManualStropcodestrval =
  result = new(SwitchManualStropcodestrval)
  let root = if root == nil: cast[SwitchManualStr](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = convert(result.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")

proc fromFile*(_: typedesc[SwitchManualStropcodestrval], filename: string): SwitchManualStropcodestrval =
  SwitchManualStropcodestrval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualStropcodestrvalObj) =
  close(x.io)

### SwitchManualStropcode ###
proc read*(_: typedesc[SwitchManualStropcode], io: KaitaiStream, root: SwitchManualStr, parent: SwitchManualStr): SwitchManualStropcode =
  result = new(SwitchManualStropcode)
  let root = if root == nil: cast[SwitchManualStr](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.code = convert(result.io.readBytes(1), srcEncoding = "ASCII")
  result.body = Intval.read(result.io, result, root)
  result.body = Strval.read(result.io, result, root)

proc fromFile*(_: typedesc[SwitchManualStropcode], filename: string): SwitchManualStropcode =
  SwitchManualStropcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualStropcodeObj) =
  close(x.io)

### SwitchManualStr ###
proc read*(_: typedesc[SwitchManualStr], io: KaitaiStream, root: SwitchManualStr, parent: ref RootObj): SwitchManualStr =
  result = new(SwitchManualStr)
  let root = if root == nil: cast[SwitchManualStr](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.opcodes = newSeq[Opcode]()
  block:
    var i: int
    while not result.io.eof:
      result.opcodes.add(Opcode.read(result.io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchManualStr], filename: string): SwitchManualStr =
  SwitchManualStr.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualStrObj) =
  close(x.io)


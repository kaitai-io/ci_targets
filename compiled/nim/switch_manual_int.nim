import kaitai_struct_nim_runtime
import encodings

type
  SwitchManualIntopcodeintval* = ref SwitchManualIntopcodeintvalObj
  SwitchManualIntopcodeintvalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualInt
    parent*: ref RootObj
  SwitchManualIntopcodestrval* = ref SwitchManualIntopcodestrvalObj
  SwitchManualIntopcodestrvalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualInt
    parent*: ref RootObj
  SwitchManualIntopcode* = ref SwitchManualIntopcodeObj
  SwitchManualIntopcodeObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualInt
    parent*: ref RootObj
  SwitchManualInt* = ref SwitchManualIntObj
  SwitchManualIntObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualInt
    parent*: ref RootObj

### SwitchManualIntopcodeintval ###
proc read*(_: typedesc[SwitchManualIntopcodeintval], io: KaitaiStream, root: SwitchManualInt, parent: SwitchManualIntopcode): SwitchManualIntopcodeintval =
  result = new(SwitchManualIntopcodeintval)
  let root = if root == nil: cast[SwitchManualInt](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = result.io.readU1()

proc fromFile*(_: typedesc[SwitchManualIntopcodeintval], filename: string): SwitchManualIntopcodeintval =
  SwitchManualIntopcodeintval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntopcodeintvalObj) =
  close(x.io)

### SwitchManualIntopcodestrval ###
proc read*(_: typedesc[SwitchManualIntopcodestrval], io: KaitaiStream, root: SwitchManualInt, parent: SwitchManualIntopcode): SwitchManualIntopcodestrval =
  result = new(SwitchManualIntopcodestrval)
  let root = if root == nil: cast[SwitchManualInt](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = convert(result.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")

proc fromFile*(_: typedesc[SwitchManualIntopcodestrval], filename: string): SwitchManualIntopcodestrval =
  SwitchManualIntopcodestrval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntopcodestrvalObj) =
  close(x.io)

### SwitchManualIntopcode ###
proc read*(_: typedesc[SwitchManualIntopcode], io: KaitaiStream, root: SwitchManualInt, parent: SwitchManualInt): SwitchManualIntopcode =
  result = new(SwitchManualIntopcode)
  let root = if root == nil: cast[SwitchManualInt](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.code = result.io.readU1()
  result.body = Intval.read(result.io, result, root)
  result.body = Strval.read(result.io, result, root)

proc fromFile*(_: typedesc[SwitchManualIntopcode], filename: string): SwitchManualIntopcode =
  SwitchManualIntopcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntopcodeObj) =
  close(x.io)

### SwitchManualInt ###
proc read*(_: typedesc[SwitchManualInt], io: KaitaiStream, root: SwitchManualInt, parent: ref RootObj): SwitchManualInt =
  result = new(SwitchManualInt)
  let root = if root == nil: cast[SwitchManualInt](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.opcodes = newSeq[Opcode]()
  block:
    var i: int
    while not result.io.eof:
      result.opcodes.add(Opcode.read(result.io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchManualInt], filename: string): SwitchManualInt =
  SwitchManualInt.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntObj) =
  close(x.io)


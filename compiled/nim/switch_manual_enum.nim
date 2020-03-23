import kaitai_struct_nim_runtime
import encodings

type
  SwitchManualEnumopcodeintval* = ref SwitchManualEnumopcodeintvalObj
  SwitchManualEnumopcodeintvalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualEnum
    parent*: ref RootObj
  SwitchManualEnumopcodestrval* = ref SwitchManualEnumopcodestrvalObj
  SwitchManualEnumopcodestrvalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualEnum
    parent*: ref RootObj
  SwitchManualEnumopcode* = ref SwitchManualEnumopcodeObj
  SwitchManualEnumopcodeObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualEnum
    parent*: ref RootObj
  SwitchManualEnum* = ref SwitchManualEnumObj
  SwitchManualEnumObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualEnum
    parent*: ref RootObj

### SwitchManualEnumopcodeintval ###
proc read*(_: typedesc[SwitchManualEnumopcodeintval], io: KaitaiStream, root: SwitchManualEnum, parent: SwitchManualEnumopcode): SwitchManualEnumopcodeintval =
  result = new(SwitchManualEnumopcodeintval)
  let root = if root == nil: cast[SwitchManualEnum](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = result.io.readU1()

proc fromFile*(_: typedesc[SwitchManualEnumopcodeintval], filename: string): SwitchManualEnumopcodeintval =
  SwitchManualEnumopcodeintval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumopcodeintvalObj) =
  close(x.io)

### SwitchManualEnumopcodestrval ###
proc read*(_: typedesc[SwitchManualEnumopcodestrval], io: KaitaiStream, root: SwitchManualEnum, parent: SwitchManualEnumopcode): SwitchManualEnumopcodestrval =
  result = new(SwitchManualEnumopcodestrval)
  let root = if root == nil: cast[SwitchManualEnum](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = convert(result.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")

proc fromFile*(_: typedesc[SwitchManualEnumopcodestrval], filename: string): SwitchManualEnumopcodestrval =
  SwitchManualEnumopcodestrval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumopcodestrvalObj) =
  close(x.io)

### SwitchManualEnumopcode ###
proc read*(_: typedesc[SwitchManualEnumopcode], io: KaitaiStream, root: SwitchManualEnum, parent: SwitchManualEnum): SwitchManualEnumopcode =
  result = new(SwitchManualEnumopcode)
  let root = if root == nil: cast[SwitchManualEnum](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.code = 
  result.body = Intval.read(result.io, result, root)
  result.body = Strval.read(result.io, result, root)

proc fromFile*(_: typedesc[SwitchManualEnumopcode], filename: string): SwitchManualEnumopcode =
  SwitchManualEnumopcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumopcodeObj) =
  close(x.io)

### SwitchManualEnum ###
proc read*(_: typedesc[SwitchManualEnum], io: KaitaiStream, root: SwitchManualEnum, parent: ref RootObj): SwitchManualEnum =
  result = new(SwitchManualEnum)
  let root = if root == nil: cast[SwitchManualEnum](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.opcodes = newSeq[Opcode]()
  block:
    var i: int
    while not result.io.eof:
      result.opcodes.add(Opcode.read(result.io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchManualEnum], filename: string): SwitchManualEnum =
  SwitchManualEnum.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumObj) =
  close(x.io)


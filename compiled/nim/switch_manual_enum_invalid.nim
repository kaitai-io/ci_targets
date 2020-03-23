import kaitai_struct_nim_runtime
import encodings

type
  SwitchManualEnumInvalidopcodeintval* = ref SwitchManualEnumInvalidopcodeintvalObj
  SwitchManualEnumInvalidopcodeintvalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualEnumInvalid
    parent*: ref RootObj
  SwitchManualEnumInvalidopcodestrval* = ref SwitchManualEnumInvalidopcodestrvalObj
  SwitchManualEnumInvalidopcodestrvalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualEnumInvalid
    parent*: ref RootObj
  SwitchManualEnumInvalidopcode* = ref SwitchManualEnumInvalidopcodeObj
  SwitchManualEnumInvalidopcodeObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualEnumInvalid
    parent*: ref RootObj
  SwitchManualEnumInvalid* = ref SwitchManualEnumInvalidObj
  SwitchManualEnumInvalidObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualEnumInvalid
    parent*: ref RootObj

### SwitchManualEnumInvalidopcodeintval ###
proc read*(_: typedesc[SwitchManualEnumInvalidopcodeintval], io: KaitaiStream, root: SwitchManualEnumInvalid, parent: SwitchManualEnumInvalidopcode): SwitchManualEnumInvalidopcodeintval =
  result = new(SwitchManualEnumInvalidopcodeintval)
  let root = if root == nil: cast[SwitchManualEnumInvalid](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = result.io.readU1()

proc fromFile*(_: typedesc[SwitchManualEnumInvalidopcodeintval], filename: string): SwitchManualEnumInvalidopcodeintval =
  SwitchManualEnumInvalidopcodeintval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalidopcodeintvalObj) =
  close(x.io)

### SwitchManualEnumInvalidopcodestrval ###
proc read*(_: typedesc[SwitchManualEnumInvalidopcodestrval], io: KaitaiStream, root: SwitchManualEnumInvalid, parent: SwitchManualEnumInvalidopcode): SwitchManualEnumInvalidopcodestrval =
  result = new(SwitchManualEnumInvalidopcodestrval)
  let root = if root == nil: cast[SwitchManualEnumInvalid](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = convert(result.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")

proc fromFile*(_: typedesc[SwitchManualEnumInvalidopcodestrval], filename: string): SwitchManualEnumInvalidopcodestrval =
  SwitchManualEnumInvalidopcodestrval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalidopcodestrvalObj) =
  close(x.io)

### SwitchManualEnumInvalidopcode ###
proc read*(_: typedesc[SwitchManualEnumInvalidopcode], io: KaitaiStream, root: SwitchManualEnumInvalid, parent: SwitchManualEnumInvalid): SwitchManualEnumInvalidopcode =
  result = new(SwitchManualEnumInvalidopcode)
  let root = if root == nil: cast[SwitchManualEnumInvalid](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.code = 
  result.body = Intval.read(result.io, result, root)
  result.body = Strval.read(result.io, result, root)

proc fromFile*(_: typedesc[SwitchManualEnumInvalidopcode], filename: string): SwitchManualEnumInvalidopcode =
  SwitchManualEnumInvalidopcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalidopcodeObj) =
  close(x.io)

### SwitchManualEnumInvalid ###
proc read*(_: typedesc[SwitchManualEnumInvalid], io: KaitaiStream, root: SwitchManualEnumInvalid, parent: ref RootObj): SwitchManualEnumInvalid =
  result = new(SwitchManualEnumInvalid)
  let root = if root == nil: cast[SwitchManualEnumInvalid](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.opcodes = newSeq[Opcode]()
  block:
    var i: int
    while not result.io.eof:
      result.opcodes.add(Opcode.read(result.io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchManualEnumInvalid], filename: string): SwitchManualEnumInvalid =
  SwitchManualEnumInvalid.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalidObj) =
  close(x.io)


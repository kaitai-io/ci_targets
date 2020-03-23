import kaitai_struct_nim_runtime
import encodings

type
  SwitchManualEnumInvalidElseopcodeintval* = ref SwitchManualEnumInvalidElseopcodeintvalObj
  SwitchManualEnumInvalidElseopcodeintvalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualEnumInvalidElse
    parent*: ref RootObj
  SwitchManualEnumInvalidElseopcodestrval* = ref SwitchManualEnumInvalidElseopcodestrvalObj
  SwitchManualEnumInvalidElseopcodestrvalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualEnumInvalidElse
    parent*: ref RootObj
  SwitchManualEnumInvalidElseopcodedefval* = ref SwitchManualEnumInvalidElseopcodedefvalObj
  SwitchManualEnumInvalidElseopcodedefvalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualEnumInvalidElse
    parent*: ref RootObj
  SwitchManualEnumInvalidElseopcode* = ref SwitchManualEnumInvalidElseopcodeObj
  SwitchManualEnumInvalidElseopcodeObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualEnumInvalidElse
    parent*: ref RootObj
  SwitchManualEnumInvalidElse* = ref SwitchManualEnumInvalidElseObj
  SwitchManualEnumInvalidElseObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualEnumInvalidElse
    parent*: ref RootObj

### SwitchManualEnumInvalidElseopcodeintval ###
proc read*(_: typedesc[SwitchManualEnumInvalidElseopcodeintval], io: KaitaiStream, root: SwitchManualEnumInvalidElse, parent: SwitchManualEnumInvalidElseopcode): SwitchManualEnumInvalidElseopcodeintval =
  result = new(SwitchManualEnumInvalidElseopcodeintval)
  let root = if root == nil: cast[SwitchManualEnumInvalidElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = result.io.readU1()

proc fromFile*(_: typedesc[SwitchManualEnumInvalidElseopcodeintval], filename: string): SwitchManualEnumInvalidElseopcodeintval =
  SwitchManualEnumInvalidElseopcodeintval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalidElseopcodeintvalObj) =
  close(x.io)

### SwitchManualEnumInvalidElseopcodestrval ###
proc read*(_: typedesc[SwitchManualEnumInvalidElseopcodestrval], io: KaitaiStream, root: SwitchManualEnumInvalidElse, parent: SwitchManualEnumInvalidElseopcode): SwitchManualEnumInvalidElseopcodestrval =
  result = new(SwitchManualEnumInvalidElseopcodestrval)
  let root = if root == nil: cast[SwitchManualEnumInvalidElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = convert(result.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")

proc fromFile*(_: typedesc[SwitchManualEnumInvalidElseopcodestrval], filename: string): SwitchManualEnumInvalidElseopcodestrval =
  SwitchManualEnumInvalidElseopcodestrval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalidElseopcodestrvalObj) =
  close(x.io)

### SwitchManualEnumInvalidElseopcodedefval ###
proc read*(_: typedesc[SwitchManualEnumInvalidElseopcodedefval], io: KaitaiStream, root: SwitchManualEnumInvalidElse, parent: SwitchManualEnumInvalidElseopcode): SwitchManualEnumInvalidElseopcodedefval =
  result = new(SwitchManualEnumInvalidElseopcodedefval)
  let root = if root == nil: cast[SwitchManualEnumInvalidElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[SwitchManualEnumInvalidElseopcodedefval], filename: string): SwitchManualEnumInvalidElseopcodedefval =
  SwitchManualEnumInvalidElseopcodedefval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalidElseopcodedefvalObj) =
  close(x.io)

### SwitchManualEnumInvalidElseopcode ###
proc read*(_: typedesc[SwitchManualEnumInvalidElseopcode], io: KaitaiStream, root: SwitchManualEnumInvalidElse, parent: SwitchManualEnumInvalidElse): SwitchManualEnumInvalidElseopcode =
  result = new(SwitchManualEnumInvalidElseopcode)
  let root = if root == nil: cast[SwitchManualEnumInvalidElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.code = 
  result.body = Intval.read(result.io, result, root)
  result.body = Strval.read(result.io, result, root)
  result.body = Defval.read(result.io, result, root)

proc fromFile*(_: typedesc[SwitchManualEnumInvalidElseopcode], filename: string): SwitchManualEnumInvalidElseopcode =
  SwitchManualEnumInvalidElseopcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalidElseopcodeObj) =
  close(x.io)

### SwitchManualEnumInvalidElse ###
proc read*(_: typedesc[SwitchManualEnumInvalidElse], io: KaitaiStream, root: SwitchManualEnumInvalidElse, parent: ref RootObj): SwitchManualEnumInvalidElse =
  result = new(SwitchManualEnumInvalidElse)
  let root = if root == nil: cast[SwitchManualEnumInvalidElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.opcodes = newSeq[Opcode]()
  block:
    var i: int
    while not result.io.eof:
      result.opcodes.add(Opcode.read(result.io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchManualEnumInvalidElse], filename: string): SwitchManualEnumInvalidElse =
  SwitchManualEnumInvalidElse.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalidElseObj) =
  close(x.io)


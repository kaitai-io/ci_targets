import kaitai_struct_nim_runtime
import encodings

type
  SwitchManualIntElseopcodeintval* = ref SwitchManualIntElseopcodeintvalObj
  SwitchManualIntElseopcodeintvalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualIntElse
    parent*: ref RootObj
  SwitchManualIntElseopcodestrval* = ref SwitchManualIntElseopcodestrvalObj
  SwitchManualIntElseopcodestrvalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualIntElse
    parent*: ref RootObj
  SwitchManualIntElseopcodenoneval* = ref SwitchManualIntElseopcodenonevalObj
  SwitchManualIntElseopcodenonevalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualIntElse
    parent*: ref RootObj
  SwitchManualIntElseopcode* = ref SwitchManualIntElseopcodeObj
  SwitchManualIntElseopcodeObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualIntElse
    parent*: ref RootObj
  SwitchManualIntElse* = ref SwitchManualIntElseObj
  SwitchManualIntElseObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualIntElse
    parent*: ref RootObj

### SwitchManualIntElseopcodeintval ###
proc read*(_: typedesc[SwitchManualIntElseopcodeintval], io: KaitaiStream, root: SwitchManualIntElse, parent: SwitchManualIntElseopcode): SwitchManualIntElseopcodeintval =
  result = new(SwitchManualIntElseopcodeintval)
  let root = if root == nil: cast[SwitchManualIntElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = result.io.readU1()

proc fromFile*(_: typedesc[SwitchManualIntElseopcodeintval], filename: string): SwitchManualIntElseopcodeintval =
  SwitchManualIntElseopcodeintval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntElseopcodeintvalObj) =
  close(x.io)

### SwitchManualIntElseopcodestrval ###
proc read*(_: typedesc[SwitchManualIntElseopcodestrval], io: KaitaiStream, root: SwitchManualIntElse, parent: SwitchManualIntElseopcode): SwitchManualIntElseopcodestrval =
  result = new(SwitchManualIntElseopcodestrval)
  let root = if root == nil: cast[SwitchManualIntElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = convert(result.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")

proc fromFile*(_: typedesc[SwitchManualIntElseopcodestrval], filename: string): SwitchManualIntElseopcodestrval =
  SwitchManualIntElseopcodestrval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntElseopcodestrvalObj) =
  close(x.io)

### SwitchManualIntElseopcodenoneval ###
proc read*(_: typedesc[SwitchManualIntElseopcodenoneval], io: KaitaiStream, root: SwitchManualIntElse, parent: SwitchManualIntElseopcode): SwitchManualIntElseopcodenoneval =
  result = new(SwitchManualIntElseopcodenoneval)
  let root = if root == nil: cast[SwitchManualIntElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.filler = result.io.readU4le()

proc fromFile*(_: typedesc[SwitchManualIntElseopcodenoneval], filename: string): SwitchManualIntElseopcodenoneval =
  SwitchManualIntElseopcodenoneval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntElseopcodenonevalObj) =
  close(x.io)

### SwitchManualIntElseopcode ###
proc read*(_: typedesc[SwitchManualIntElseopcode], io: KaitaiStream, root: SwitchManualIntElse, parent: SwitchManualIntElse): SwitchManualIntElseopcode =
  result = new(SwitchManualIntElseopcode)
  let root = if root == nil: cast[SwitchManualIntElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.code = result.io.readU1()
  result.body = Intval.read(result.io, result, root)
  result.body = Strval.read(result.io, result, root)
  result.body = Noneval.read(result.io, result, root)

proc fromFile*(_: typedesc[SwitchManualIntElseopcode], filename: string): SwitchManualIntElseopcode =
  SwitchManualIntElseopcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntElseopcodeObj) =
  close(x.io)

### SwitchManualIntElse ###
proc read*(_: typedesc[SwitchManualIntElse], io: KaitaiStream, root: SwitchManualIntElse, parent: ref RootObj): SwitchManualIntElse =
  result = new(SwitchManualIntElse)
  let root = if root == nil: cast[SwitchManualIntElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.opcodes = newSeq[Opcode]()
  block:
    var i: int
    while not result.io.eof:
      result.opcodes.add(Opcode.read(result.io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchManualIntElse], filename: string): SwitchManualIntElse =
  SwitchManualIntElse.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntElseObj) =
  close(x.io)


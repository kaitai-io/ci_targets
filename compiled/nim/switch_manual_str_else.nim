import kaitai_struct_nim_runtime
import encodings

type
  SwitchManualStrElseopcodeintval* = ref SwitchManualStrElseopcodeintvalObj
  SwitchManualStrElseopcodeintvalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualStrElse
    parent*: ref RootObj
  SwitchManualStrElseopcodestrval* = ref SwitchManualStrElseopcodestrvalObj
  SwitchManualStrElseopcodestrvalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualStrElse
    parent*: ref RootObj
  SwitchManualStrElseopcodenoneval* = ref SwitchManualStrElseopcodenonevalObj
  SwitchManualStrElseopcodenonevalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualStrElse
    parent*: ref RootObj
  SwitchManualStrElseopcode* = ref SwitchManualStrElseopcodeObj
  SwitchManualStrElseopcodeObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualStrElse
    parent*: ref RootObj
  SwitchManualStrElse* = ref SwitchManualStrElseObj
  SwitchManualStrElseObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchManualStrElse
    parent*: ref RootObj

### SwitchManualStrElseopcodeintval ###
proc read*(_: typedesc[SwitchManualStrElseopcodeintval], io: KaitaiStream, root: SwitchManualStrElse, parent: SwitchManualStrElseopcode): SwitchManualStrElseopcodeintval =
  result = new(SwitchManualStrElseopcodeintval)
  let root = if root == nil: cast[SwitchManualStrElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = result.io.readU1()

proc fromFile*(_: typedesc[SwitchManualStrElseopcodeintval], filename: string): SwitchManualStrElseopcodeintval =
  SwitchManualStrElseopcodeintval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualStrElseopcodeintvalObj) =
  close(x.io)

### SwitchManualStrElseopcodestrval ###
proc read*(_: typedesc[SwitchManualStrElseopcodestrval], io: KaitaiStream, root: SwitchManualStrElse, parent: SwitchManualStrElseopcode): SwitchManualStrElseopcodestrval =
  result = new(SwitchManualStrElseopcodestrval)
  let root = if root == nil: cast[SwitchManualStrElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = convert(result.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")

proc fromFile*(_: typedesc[SwitchManualStrElseopcodestrval], filename: string): SwitchManualStrElseopcodestrval =
  SwitchManualStrElseopcodestrval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualStrElseopcodestrvalObj) =
  close(x.io)

### SwitchManualStrElseopcodenoneval ###
proc read*(_: typedesc[SwitchManualStrElseopcodenoneval], io: KaitaiStream, root: SwitchManualStrElse, parent: SwitchManualStrElseopcode): SwitchManualStrElseopcodenoneval =
  result = new(SwitchManualStrElseopcodenoneval)
  let root = if root == nil: cast[SwitchManualStrElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.filler = result.io.readU4le()

proc fromFile*(_: typedesc[SwitchManualStrElseopcodenoneval], filename: string): SwitchManualStrElseopcodenoneval =
  SwitchManualStrElseopcodenoneval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualStrElseopcodenonevalObj) =
  close(x.io)

### SwitchManualStrElseopcode ###
proc read*(_: typedesc[SwitchManualStrElseopcode], io: KaitaiStream, root: SwitchManualStrElse, parent: SwitchManualStrElse): SwitchManualStrElseopcode =
  result = new(SwitchManualStrElseopcode)
  let root = if root == nil: cast[SwitchManualStrElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.code = convert(result.io.readBytes(1), srcEncoding = "ASCII")
  result.body = Intval.read(result.io, result, root)
  result.body = Strval.read(result.io, result, root)
  result.body = Noneval.read(result.io, result, root)

proc fromFile*(_: typedesc[SwitchManualStrElseopcode], filename: string): SwitchManualStrElseopcode =
  SwitchManualStrElseopcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualStrElseopcodeObj) =
  close(x.io)

### SwitchManualStrElse ###
proc read*(_: typedesc[SwitchManualStrElse], io: KaitaiStream, root: SwitchManualStrElse, parent: ref RootObj): SwitchManualStrElse =
  result = new(SwitchManualStrElse)
  let root = if root == nil: cast[SwitchManualStrElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.opcodes = newSeq[Opcode]()
  block:
    var i: int
    while not result.io.eof:
      result.opcodes.add(Opcode.read(result.io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchManualStrElse], filename: string): SwitchManualStrElse =
  SwitchManualStrElse.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualStrElseObj) =
  close(x.io)


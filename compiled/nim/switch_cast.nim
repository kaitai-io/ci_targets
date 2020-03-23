import kaitai_struct_nim_runtime
import encodings

type
  SwitchCastopcode* = ref SwitchCastopcodeObj
  SwitchCastopcodeObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchCast
    parent*: ref RootObj
  SwitchCastintval* = ref SwitchCastintvalObj
  SwitchCastintvalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchCast
    parent*: ref RootObj
  SwitchCaststrval* = ref SwitchCaststrvalObj
  SwitchCaststrvalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchCast
    parent*: ref RootObj
  SwitchCast* = ref SwitchCastObj
  SwitchCastObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchCast
    parent*: ref RootObj

### SwitchCastopcode ###
proc read*(_: typedesc[SwitchCastopcode], io: KaitaiStream, root: SwitchCast, parent: SwitchCast): SwitchCastopcode =
  result = new(SwitchCastopcode)
  let root = if root == nil: cast[SwitchCast](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.code = result.io.readU1()
  result.body = Intval.read(result.io, result, root)
  result.body = Strval.read(result.io, result, root)

proc fromFile*(_: typedesc[SwitchCastopcode], filename: string): SwitchCastopcode =
  SwitchCastopcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchCastopcodeObj) =
  close(x.io)

### SwitchCastintval ###
proc read*(_: typedesc[SwitchCastintval], io: KaitaiStream, root: SwitchCast, parent: SwitchCastopcode): SwitchCastintval =
  result = new(SwitchCastintval)
  let root = if root == nil: cast[SwitchCast](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = result.io.readU1()

proc fromFile*(_: typedesc[SwitchCastintval], filename: string): SwitchCastintval =
  SwitchCastintval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchCastintvalObj) =
  close(x.io)

### SwitchCaststrval ###
proc read*(_: typedesc[SwitchCaststrval], io: KaitaiStream, root: SwitchCast, parent: SwitchCastopcode): SwitchCaststrval =
  result = new(SwitchCaststrval)
  let root = if root == nil: cast[SwitchCast](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = convert(result.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")

proc fromFile*(_: typedesc[SwitchCaststrval], filename: string): SwitchCaststrval =
  SwitchCaststrval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchCaststrvalObj) =
  close(x.io)

### SwitchCast ###
proc read*(_: typedesc[SwitchCast], io: KaitaiStream, root: SwitchCast, parent: ref RootObj): SwitchCast =
  result = new(SwitchCast)
  let root = if root == nil: cast[SwitchCast](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.opcodes = newSeq[Opcode]()
  block:
    var i: int
    while not result.io.eof:
      result.opcodes.add(Opcode.read(result.io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchCast], filename: string): SwitchCast =
  SwitchCast.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchCastObj) =
  close(x.io)


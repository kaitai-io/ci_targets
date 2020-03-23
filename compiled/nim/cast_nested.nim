import kaitai_struct_nim_runtime
import encodings

type
  CastNestedopcodeintval* = ref CastNestedopcodeintvalObj
  CastNestedopcodeintvalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: CastNested
    parent*: ref RootObj
  CastNestedopcodestrval* = ref CastNestedopcodestrvalObj
  CastNestedopcodestrvalObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: CastNested
    parent*: ref RootObj
  CastNestedopcode* = ref CastNestedopcodeObj
  CastNestedopcodeObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: CastNested
    parent*: ref RootObj
  CastNested* = ref CastNestedObj
  CastNestedObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: CastNested
    parent*: ref RootObj

### CastNestedopcodeintval ###
proc read*(_: typedesc[CastNestedopcodeintval], io: KaitaiStream, root: CastNested, parent: CastNestedopcode): CastNestedopcodeintval =
  result = new(CastNestedopcodeintval)
  let root = if root == nil: cast[CastNested](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = result.io.readU1()

proc fromFile*(_: typedesc[CastNestedopcodeintval], filename: string): CastNestedopcodeintval =
  CastNestedopcodeintval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var CastNestedopcodeintvalObj) =
  close(x.io)

### CastNestedopcodestrval ###
proc read*(_: typedesc[CastNestedopcodestrval], io: KaitaiStream, root: CastNested, parent: CastNestedopcode): CastNestedopcodestrval =
  result = new(CastNestedopcodestrval)
  let root = if root == nil: cast[CastNested](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = convert(result.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")

proc fromFile*(_: typedesc[CastNestedopcodestrval], filename: string): CastNestedopcodestrval =
  CastNestedopcodestrval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var CastNestedopcodestrvalObj) =
  close(x.io)

### CastNestedopcode ###
proc read*(_: typedesc[CastNestedopcode], io: KaitaiStream, root: CastNested, parent: CastNested): CastNestedopcode =
  result = new(CastNestedopcode)
  let root = if root == nil: cast[CastNested](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.code = result.io.readU1()
  result.body = Intval.read(result.io, result, root)
  result.body = Strval.read(result.io, result, root)

proc fromFile*(_: typedesc[CastNestedopcode], filename: string): CastNestedopcode =
  CastNestedopcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var CastNestedopcodeObj) =
  close(x.io)

### CastNested ###
proc read*(_: typedesc[CastNested], io: KaitaiStream, root: CastNested, parent: ref RootObj): CastNested =
  result = new(CastNested)
  let root = if root == nil: cast[CastNested](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.opcodes = newSeq[Opcode]()
  block:
    var i: int
    while not result.io.eof:
      result.opcodes.add(Opcode.read(result.io, result, root))
      inc i

proc fromFile*(_: typedesc[CastNested], filename: string): CastNested =
  CastNested.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var CastNestedObj) =
  close(x.io)


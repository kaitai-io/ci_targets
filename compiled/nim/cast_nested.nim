import kaitai_struct_nim_runtime
import encodings

type
  CastNested_Opcode_Intval* = ref CastNested_Opcode_IntvalObj
  CastNested_Opcode_IntvalObj* = object
    value*: uint8
    io*: KaitaiStream
    root*: CastNested
    parent*: CastNested_Opcode
  CastNested_Opcode_Strval* = ref CastNested_Opcode_StrvalObj
  CastNested_Opcode_StrvalObj* = object
    value*: string
    io*: KaitaiStream
    root*: CastNested
    parent*: CastNested_Opcode
  CastNested_Opcode* = ref CastNested_OpcodeObj
  CastNested_OpcodeObj* = object
    code*: uint8
    body*: ref RootObj
    io*: KaitaiStream
    root*: CastNested
    parent*: CastNested
  CastNested* = ref CastNestedObj
  CastNestedObj* = object
    opcodes*: seq[CastNested_Opcode]
    io*: KaitaiStream
    root*: CastNested
    parent*: ref RootObj

### CastNested_Opcode_Intval ###
proc read*(_: typedesc[CastNested_Opcode_Intval], io: KaitaiStream, root: CastNested, parent: CastNested_Opcode): CastNested_Opcode_Intval =
  result = new(CastNested_Opcode_Intval)
  let root = if root == nil: cast[CastNested](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let value = io.readU1()
  result.value = value

proc fromFile*(_: typedesc[CastNested_Opcode_Intval], filename: string): CastNested_Opcode_Intval =
  CastNested_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var CastNested_Opcode_IntvalObj) =
  close(x.io)

### CastNested_Opcode_Strval ###
proc read*(_: typedesc[CastNested_Opcode_Strval], io: KaitaiStream, root: CastNested, parent: CastNested_Opcode): CastNested_Opcode_Strval =
  result = new(CastNested_Opcode_Strval)
  let root = if root == nil: cast[CastNested](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let value = convert(io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")
  result.value = value

proc fromFile*(_: typedesc[CastNested_Opcode_Strval], filename: string): CastNested_Opcode_Strval =
  CastNested_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var CastNested_Opcode_StrvalObj) =
  close(x.io)

### CastNested_Opcode ###
proc read*(_: typedesc[CastNested_Opcode], io: KaitaiStream, root: CastNested, parent: CastNested): CastNested_Opcode =
  result = new(CastNested_Opcode)
  let root = if root == nil: cast[CastNested](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let code = io.readU1()
  result.code = code
  let body = CastNested_Opcode_Intval.read(io, result, root)
  result.body = body
  let body = CastNested_Opcode_Strval.read(io, result, root)
  result.body = body

proc fromFile*(_: typedesc[CastNested_Opcode], filename: string): CastNested_Opcode =
  CastNested_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var CastNested_OpcodeObj) =
  close(x.io)

### CastNested ###
proc read*(_: typedesc[CastNested], io: KaitaiStream, root: CastNested, parent: ref RootObj): CastNested =
  result = new(CastNested)
  let root = if root == nil: cast[CastNested](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  opcodes = newSeq[CastNested_Opcode]()
  block:
    var i: int
    while not io.eof:
      opcodes.add(CastNested_Opcode.read(io, result, root))
      inc i

proc fromFile*(_: typedesc[CastNested], filename: string): CastNested =
  CastNested.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var CastNestedObj) =
  close(x.io)


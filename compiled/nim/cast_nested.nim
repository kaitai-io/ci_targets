import kaitai_struct_nim_runtime
import options
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
    opcodes0StrInst*: Option[CastNested_Opcode_Strval]
    opcodes0StrValueInst*: Option[string]
    opcodes1IntInst*: Option[CastNested_Opcode_Intval]
    opcodes1IntValueInst*: Option[uint8]

### CastNested_Opcode_Intval ###
proc read*(_: typedesc[CastNested_Opcode_Intval], io: KaitaiStream, root: CastNested, parent: CastNested_Opcode): CastNested_Opcode_Intval =
  let this = new(CastNested_Opcode_Intval)
  let root = if root == nil: cast[CastNested](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let value = this.io.readU1()
  this.value = value
  result = this

proc fromFile*(_: typedesc[CastNested_Opcode_Intval], filename: string): CastNested_Opcode_Intval =
  CastNested_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var CastNested_Opcode_IntvalObj) =
  close(x.io)

### CastNested_Opcode_Strval ###
proc read*(_: typedesc[CastNested_Opcode_Strval], io: KaitaiStream, root: CastNested, parent: CastNested_Opcode): CastNested_Opcode_Strval =
  let this = new(CastNested_Opcode_Strval)
  let root = if root == nil: cast[CastNested](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let value = convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")
  this.value = value
  result = this

proc fromFile*(_: typedesc[CastNested_Opcode_Strval], filename: string): CastNested_Opcode_Strval =
  CastNested_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var CastNested_Opcode_StrvalObj) =
  close(x.io)

### CastNested_Opcode ###
proc read*(_: typedesc[CastNested_Opcode], io: KaitaiStream, root: CastNested, parent: CastNested): CastNested_Opcode =
  let this = new(CastNested_Opcode)
  let root = if root == nil: cast[CastNested](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let code = this.io.readU1()
  this.code = code
  let body = CastNested_Opcode_Intval.read(this.io, this.root, this)
  this.body = body
  let body = CastNested_Opcode_Strval.read(this.io, this.root, this)
  this.body = body
  result = this

proc fromFile*(_: typedesc[CastNested_Opcode], filename: string): CastNested_Opcode =
  CastNested_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var CastNested_OpcodeObj) =
  close(x.io)

### CastNested ###
proc opcodes0Str*(this: CastNested): CastNested_Opcode_Strval
proc opcodes0StrValue*(this: CastNested): string
proc opcodes1Int*(this: CastNested): CastNested_Opcode_Intval
proc opcodes1IntValue*(this: CastNested): uint8
proc opcodes0Str(this: CastNested): CastNested_Opcode_Strval = 
  if isSome(this.opcodes0StrInst):
    return get(this.opcodes0StrInst)
  let opcodes0StrInst = this.opcodes[0].this.body
  this.opcodes0StrInst = some(opcodes0StrInst)
  return get(this.opcodes0StrInst)

proc opcodes0StrValue(this: CastNested): string = 
  if isSome(this.opcodes0StrValueInst):
    return get(this.opcodes0StrValueInst)
  let opcodes0StrValueInst = this.opcodes[0].this.body.this.value
  this.opcodes0StrValueInst = some(opcodes0StrValueInst)
  return get(this.opcodes0StrValueInst)

proc opcodes1Int(this: CastNested): CastNested_Opcode_Intval = 
  if isSome(this.opcodes1IntInst):
    return get(this.opcodes1IntInst)
  let opcodes1IntInst = this.opcodes[1].this.body
  this.opcodes1IntInst = some(opcodes1IntInst)
  return get(this.opcodes1IntInst)

proc opcodes1IntValue(this: CastNested): uint8 = 
  if isSome(this.opcodes1IntValueInst):
    return get(this.opcodes1IntValueInst)
  let opcodes1IntValueInst = this.opcodes[1].this.body.this.value
  this.opcodes1IntValueInst = some(opcodes1IntValueInst)
  return get(this.opcodes1IntValueInst)

proc read*(_: typedesc[CastNested], io: KaitaiStream, root: CastNested, parent: ref RootObj): CastNested =
  let this = new(CastNested)
  let root = if root == nil: cast[CastNested](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.opcodes = newSeq[CastNested_Opcode]()
  block:
    var i: int
    while not this.io.eof:
      this.opcodes.add(CastNested_Opcode.read(this.io, this.root, this))
      inc i
  result = this

proc fromFile*(_: typedesc[CastNested], filename: string): CastNested =
  CastNested.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var CastNestedObj) =
  close(x.io)


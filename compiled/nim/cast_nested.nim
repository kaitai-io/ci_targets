import kaitai_struct_nim_runtime
import options
import encodings

type
  CastNested* = ref object of KaitaiStruct
    opcodes*: seq[CastNested_Opcode]
    parent*: KaitaiStruct
    opcodes0StrInst*: Option[CastNested_Opcode_Strval]
    opcodes0StrValueInst*: Option[string]
    opcodes1IntInst*: Option[CastNested_Opcode_Intval]
    opcodes1IntValueInst*: Option[uint8]
  CastNested_Opcode* = ref object of KaitaiStruct
    code*: uint8
    body*: KaitaiStruct
    parent*: CastNested
  CastNested_Opcode_Intval* = ref object of KaitaiStruct
    value*: uint8
    parent*: CastNested_Opcode
  CastNested_Opcode_Strval* = ref object of KaitaiStruct
    value*: string
    parent*: CastNested_Opcode

proc read*(_: typedesc[CastNested_Opcode_Intval], io: KaitaiStream, root: KaitaiStruct, parent: CastNested_Opcode): CastNested_Opcode_Intval =
  template this: untyped = result
  this = new(CastNested_Opcode_Intval)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.value = this.io.readU1()

proc fromFile*(_: typedesc[CastNested_Opcode_Intval], filename: string): CastNested_Opcode_Intval =
  CastNested_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[CastNested_Opcode_Strval], io: KaitaiStream, root: KaitaiStruct, parent: CastNested_Opcode): CastNested_Opcode_Strval =
  template this: untyped = result
  this = new(CastNested_Opcode_Strval)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.value = convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")

proc fromFile*(_: typedesc[CastNested_Opcode_Strval], filename: string): CastNested_Opcode_Strval =
  CastNested_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[CastNested_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: CastNested): CastNested_Opcode =
  template this: untyped = result
  this = new(CastNested_Opcode)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.code = this.io.readU1()

  ##[
  ]##
  case this.code
  of 73:
    this.body = CastNested_Opcode_Intval.read(this.io, this.root, this)
  of 83:
    this.body = CastNested_Opcode_Strval.read(this.io, this.root, this)

proc fromFile*(_: typedesc[CastNested_Opcode], filename: string): CastNested_Opcode =
  CastNested_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc opcodes0Str*(this: CastNested): CastNested_Opcode_Strval
proc opcodes0StrValue*(this: CastNested): string
proc opcodes1Int*(this: CastNested): CastNested_Opcode_Intval
proc opcodes1IntValue*(this: CastNested): uint8
proc read*(_: typedesc[CastNested], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): CastNested =
  template this: untyped = result
  this = new(CastNested)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.opcodes = newSeq[CastNested_Opcode]()
  block:
    var i: int
    while not this.io.eof:
      this.opcodes.add(CastNested_Opcode.read(this.io, this.root, this))
      inc i

proc opcodes0Str(this: CastNested): CastNested_Opcode_Strval = 
  if isSome(this.opcodes0StrInst):
    return get(this.opcodes0StrInst)
  this.opcodes0StrInst = some((CastNested_Opcode_Strval(this.opcodes[0].body)))
  return get(this.opcodes0StrInst)

proc opcodes0StrValue(this: CastNested): string = 
  if isSome(this.opcodes0StrValueInst):
    return get(this.opcodes0StrValueInst)
  this.opcodes0StrValueInst = some((CastNested_Opcode_Strval(this.opcodes[0].body)).value)
  return get(this.opcodes0StrValueInst)

proc opcodes1Int(this: CastNested): CastNested_Opcode_Intval = 
  if isSome(this.opcodes1IntInst):
    return get(this.opcodes1IntInst)
  this.opcodes1IntInst = some((CastNested_Opcode_Intval(this.opcodes[1].body)))
  return get(this.opcodes1IntInst)

proc opcodes1IntValue(this: CastNested): uint8 = 
  if isSome(this.opcodes1IntValueInst):
    return get(this.opcodes1IntValueInst)
  this.opcodes1IntValueInst = some((CastNested_Opcode_Intval(this.opcodes[1].body)).value)
  return get(this.opcodes1IntValueInst)

proc fromFile*(_: typedesc[CastNested], filename: string): CastNested =
  CastNested.read(newKaitaiFileStream(filename), nil, nil)


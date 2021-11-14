import kaitai_struct_nim_runtime
import options

type
  CastNested* = ref object of KaitaiStruct
    `opcodes`*: seq[CastNested_Opcode]
    `parent`*: KaitaiStruct
    `opcodes0StrInst`: CastNested_Opcode_Strval
    `opcodes0StrInstFlag`: bool
    `opcodes0StrValueInst`: string
    `opcodes0StrValueInstFlag`: bool
    `opcodes1IntInst`: CastNested_Opcode_Intval
    `opcodes1IntInstFlag`: bool
    `opcodes1IntValueInst`: uint8
    `opcodes1IntValueInstFlag`: bool
  CastNested_Opcode* = ref object of KaitaiStruct
    `code`*: uint8
    `body`*: KaitaiStruct
    `parent`*: CastNested
  CastNested_Opcode_Intval* = ref object of KaitaiStruct
    `value`*: uint8
    `parent`*: CastNested_Opcode
  CastNested_Opcode_Strval* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: CastNested_Opcode

proc read*(_: typedesc[CastNested], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): CastNested
proc read*(_: typedesc[CastNested_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: CastNested): CastNested_Opcode
proc read*(_: typedesc[CastNested_Opcode_Intval], io: KaitaiStream, root: KaitaiStruct, parent: CastNested_Opcode): CastNested_Opcode_Intval
proc read*(_: typedesc[CastNested_Opcode_Strval], io: KaitaiStream, root: KaitaiStruct, parent: CastNested_Opcode): CastNested_Opcode_Strval

proc opcodes0Str*(this: CastNested): CastNested_Opcode_Strval
proc opcodes0StrValue*(this: CastNested): string
proc opcodes1Int*(this: CastNested): CastNested_Opcode_Intval
proc opcodes1IntValue*(this: CastNested): uint8

proc read*(_: typedesc[CastNested], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): CastNested =
  template this: untyped = result
  this = new(CastNested)
  let root = if root == nil: cast[CastNested](this) else: cast[CastNested](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = CastNested_Opcode.read(this.io, this.root, this)
      this.opcodes.add(it)
      inc i

proc opcodes0Str(this: CastNested): CastNested_Opcode_Strval = 
  if this.opcodes0StrInstFlag:
    return this.opcodes0StrInst
  let opcodes0StrInstExpr = CastNested_Opcode_Strval((CastNested_Opcode_Strval(this.opcodes[0].body)))
  this.opcodes0StrInst = opcodes0StrInstExpr
  this.opcodes0StrInstFlag = true
  return this.opcodes0StrInst

proc opcodes0StrValue(this: CastNested): string = 
  if this.opcodes0StrValueInstFlag:
    return this.opcodes0StrValueInst
  let opcodes0StrValueInstExpr = string((CastNested_Opcode_Strval(this.opcodes[0].body)).value)
  this.opcodes0StrValueInst = opcodes0StrValueInstExpr
  this.opcodes0StrValueInstFlag = true
  return this.opcodes0StrValueInst

proc opcodes1Int(this: CastNested): CastNested_Opcode_Intval = 
  if this.opcodes1IntInstFlag:
    return this.opcodes1IntInst
  let opcodes1IntInstExpr = CastNested_Opcode_Intval((CastNested_Opcode_Intval(this.opcodes[1].body)))
  this.opcodes1IntInst = opcodes1IntInstExpr
  this.opcodes1IntInstFlag = true
  return this.opcodes1IntInst

proc opcodes1IntValue(this: CastNested): uint8 = 
  if this.opcodes1IntValueInstFlag:
    return this.opcodes1IntValueInst
  let opcodes1IntValueInstExpr = uint8((CastNested_Opcode_Intval(this.opcodes[1].body)).value)
  this.opcodes1IntValueInst = opcodes1IntValueInstExpr
  this.opcodes1IntValueInstFlag = true
  return this.opcodes1IntValueInst

proc fromFile*(_: typedesc[CastNested], filename: string): CastNested =
  CastNested.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[CastNested_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: CastNested): CastNested_Opcode =
  template this: untyped = result
  this = new(CastNested_Opcode)
  let root = if root == nil: cast[CastNested](this) else: cast[CastNested](root)
  this.io = io
  this.root = root
  this.parent = parent

  let codeExpr = this.io.readU1()
  this.code = codeExpr
  block:
    let on = this.code
    if on == 73:
      let bodyExpr = CastNested_Opcode_Intval.read(this.io, this.root, this)
      this.body = bodyExpr
    elif on == 83:
      let bodyExpr = CastNested_Opcode_Strval.read(this.io, this.root, this)
      this.body = bodyExpr

proc fromFile*(_: typedesc[CastNested_Opcode], filename: string): CastNested_Opcode =
  CastNested_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[CastNested_Opcode_Intval], io: KaitaiStream, root: KaitaiStruct, parent: CastNested_Opcode): CastNested_Opcode_Intval =
  template this: untyped = result
  this = new(CastNested_Opcode_Intval)
  let root = if root == nil: cast[CastNested](this) else: cast[CastNested](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readU1()
  this.value = valueExpr

proc fromFile*(_: typedesc[CastNested_Opcode_Intval], filename: string): CastNested_Opcode_Intval =
  CastNested_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[CastNested_Opcode_Strval], io: KaitaiStream, root: KaitaiStruct, parent: CastNested_Opcode): CastNested_Opcode_Strval =
  template this: untyped = result
  this = new(CastNested_Opcode_Strval)
  let root = if root == nil: cast[CastNested](this) else: cast[CastNested](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesTerm(0, false, true, true), "ASCII")
  this.value = valueExpr

proc fromFile*(_: typedesc[CastNested_Opcode_Strval], filename: string): CastNested_Opcode_Strval =
  CastNested_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)


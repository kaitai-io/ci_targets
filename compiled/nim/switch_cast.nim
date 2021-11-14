import kaitai_struct_nim_runtime
import options

type
  SwitchCast* = ref object of KaitaiStruct
    `opcodes`*: seq[SwitchCast_Opcode]
    `parent`*: KaitaiStruct
    `firstObjInst`: SwitchCast_Strval
    `firstObjInstFlag`: bool
    `secondValInst`: uint8
    `secondValInstFlag`: bool
    `errCastInst`: SwitchCast_Strval
    `errCastInstFlag`: bool
  SwitchCast_Opcode* = ref object of KaitaiStruct
    `code`*: uint8
    `body`*: KaitaiStruct
    `parent`*: SwitchCast
  SwitchCast_Intval* = ref object of KaitaiStruct
    `value`*: uint8
    `parent`*: SwitchCast_Opcode
  SwitchCast_Strval* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: SwitchCast_Opcode

proc read*(_: typedesc[SwitchCast], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchCast
proc read*(_: typedesc[SwitchCast_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchCast): SwitchCast_Opcode
proc read*(_: typedesc[SwitchCast_Intval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchCast_Opcode): SwitchCast_Intval
proc read*(_: typedesc[SwitchCast_Strval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchCast_Opcode): SwitchCast_Strval

proc firstObj*(this: SwitchCast): SwitchCast_Strval
proc secondVal*(this: SwitchCast): uint8
proc errCast*(this: SwitchCast): SwitchCast_Strval

proc read*(_: typedesc[SwitchCast], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchCast =
  template this: untyped = result
  this = new(SwitchCast)
  let root = if root == nil: cast[SwitchCast](this) else: cast[SwitchCast](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = SwitchCast_Opcode.read(this.io, this.root, this)
      this.opcodes.add(it)
      inc i

proc firstObj(this: SwitchCast): SwitchCast_Strval = 
  if this.firstObjInstFlag:
    return this.firstObjInst
  let firstObjInstExpr = SwitchCast_Strval((SwitchCast_Strval(this.opcodes[0].body)))
  this.firstObjInst = firstObjInstExpr
  this.firstObjInstFlag = true
  return this.firstObjInst

proc secondVal(this: SwitchCast): uint8 = 
  if this.secondValInstFlag:
    return this.secondValInst
  let secondValInstExpr = uint8((SwitchCast_Intval(this.opcodes[1].body)).value)
  this.secondValInst = secondValInstExpr
  this.secondValInstFlag = true
  return this.secondValInst

proc errCast(this: SwitchCast): SwitchCast_Strval = 
  if this.errCastInstFlag:
    return this.errCastInst
  let errCastInstExpr = SwitchCast_Strval((SwitchCast_Strval(this.opcodes[2].body)))
  this.errCastInst = errCastInstExpr
  this.errCastInstFlag = true
  return this.errCastInst

proc fromFile*(_: typedesc[SwitchCast], filename: string): SwitchCast =
  SwitchCast.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchCast_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchCast): SwitchCast_Opcode =
  template this: untyped = result
  this = new(SwitchCast_Opcode)
  let root = if root == nil: cast[SwitchCast](this) else: cast[SwitchCast](root)
  this.io = io
  this.root = root
  this.parent = parent

  let codeExpr = this.io.readU1()
  this.code = codeExpr
  block:
    let on = this.code
    if on == 73:
      let bodyExpr = SwitchCast_Intval.read(this.io, this.root, this)
      this.body = bodyExpr
    elif on == 83:
      let bodyExpr = SwitchCast_Strval.read(this.io, this.root, this)
      this.body = bodyExpr

proc fromFile*(_: typedesc[SwitchCast_Opcode], filename: string): SwitchCast_Opcode =
  SwitchCast_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchCast_Intval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchCast_Opcode): SwitchCast_Intval =
  template this: untyped = result
  this = new(SwitchCast_Intval)
  let root = if root == nil: cast[SwitchCast](this) else: cast[SwitchCast](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readU1()
  this.value = valueExpr

proc fromFile*(_: typedesc[SwitchCast_Intval], filename: string): SwitchCast_Intval =
  SwitchCast_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchCast_Strval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchCast_Opcode): SwitchCast_Strval =
  template this: untyped = result
  this = new(SwitchCast_Strval)
  let root = if root == nil: cast[SwitchCast](this) else: cast[SwitchCast](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesTerm(0, false, true, true), "ASCII")
  this.value = valueExpr

proc fromFile*(_: typedesc[SwitchCast_Strval], filename: string): SwitchCast_Strval =
  SwitchCast_Strval.read(newKaitaiFileStream(filename), nil, nil)


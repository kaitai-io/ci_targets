import kaitai_struct_nim_runtime
import options

type
  ExprIoTernary* = ref object of KaitaiStruct
    `flag`*: uint8
    `obj1`*: ExprIoTernary_One
    `obj2`*: ExprIoTernary_Two
    `parent`*: KaitaiStruct
    `rawObj1`*: seq[byte]
    `rawObj2`*: seq[byte]
    `oneOrTwoIoInst`: KaitaiStream
    `oneOrTwoIoInstFlag`: bool
    `oneOrTwoIoSize1Inst`: int
    `oneOrTwoIoSize1InstFlag`: bool
    `oneOrTwoIoSize2Inst`: int
    `oneOrTwoIoSize2InstFlag`: bool
    `oneOrTwoIoSizeAdd3Inst`: int
    `oneOrTwoIoSizeAdd3InstFlag`: bool
    `oneOrTwoObjInst`: KaitaiStruct
    `oneOrTwoObjInstFlag`: bool
  ExprIoTernary_One* = ref object of KaitaiStruct
    `one`*: uint8
    `parent`*: ExprIoTernary
  ExprIoTernary_Two* = ref object of KaitaiStruct
    `two`*: uint8
    `parent`*: ExprIoTernary

proc read*(_: typedesc[ExprIoTernary], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIoTernary
proc read*(_: typedesc[ExprIoTernary_One], io: KaitaiStream, root: KaitaiStruct, parent: ExprIoTernary): ExprIoTernary_One
proc read*(_: typedesc[ExprIoTernary_Two], io: KaitaiStream, root: KaitaiStruct, parent: ExprIoTernary): ExprIoTernary_Two

proc oneOrTwoIo*(this: ExprIoTernary): KaitaiStream
proc oneOrTwoIoSize1*(this: ExprIoTernary): int
proc oneOrTwoIoSize2*(this: ExprIoTernary): int
proc oneOrTwoIoSizeAdd3*(this: ExprIoTernary): int
proc oneOrTwoObj*(this: ExprIoTernary): KaitaiStruct

proc read*(_: typedesc[ExprIoTernary], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIoTernary =
  template this: untyped = result
  this = new(ExprIoTernary)
  let root = if root == nil: cast[ExprIoTernary](this) else: cast[ExprIoTernary](root)
  this.io = io
  this.root = root
  this.parent = parent

  let flagExpr = this.io.readU1()
  this.flag = flagExpr
  let rawObj1Expr = this.io.readBytes(int(4))
  this.rawObj1 = rawObj1Expr
  let rawObj1Io = newKaitaiStream(rawObj1Expr)
  let obj1Expr = ExprIoTernary_One.read(rawObj1Io, this.root, this)
  this.obj1 = obj1Expr
  let rawObj2Expr = this.io.readBytes(int(8))
  this.rawObj2 = rawObj2Expr
  let rawObj2Io = newKaitaiStream(rawObj2Expr)
  let obj2Expr = ExprIoTernary_Two.read(rawObj2Io, this.root, this)
  this.obj2 = obj2Expr

proc oneOrTwoIo(this: ExprIoTernary): KaitaiStream = 
  if this.oneOrTwoIoInstFlag:
    return this.oneOrTwoIoInst
  let oneOrTwoIoInstExpr = KaitaiStream((if this.flag == 64: this.obj1 else: this.obj2).io)
  this.oneOrTwoIoInst = oneOrTwoIoInstExpr
  this.oneOrTwoIoInstFlag = true
  return this.oneOrTwoIoInst

proc oneOrTwoIoSize1(this: ExprIoTernary): int = 
  if this.oneOrTwoIoSize1InstFlag:
    return this.oneOrTwoIoSize1Inst
  let oneOrTwoIoSize1InstExpr = int((if this.flag == 64: this.obj1 else: this.obj2).io.size)
  this.oneOrTwoIoSize1Inst = oneOrTwoIoSize1InstExpr
  this.oneOrTwoIoSize1InstFlag = true
  return this.oneOrTwoIoSize1Inst

proc oneOrTwoIoSize2(this: ExprIoTernary): int = 
  if this.oneOrTwoIoSize2InstFlag:
    return this.oneOrTwoIoSize2Inst
  let oneOrTwoIoSize2InstExpr = int(this.oneOrTwoIo.size)
  this.oneOrTwoIoSize2Inst = oneOrTwoIoSize2InstExpr
  this.oneOrTwoIoSize2InstFlag = true
  return this.oneOrTwoIoSize2Inst

proc oneOrTwoIoSizeAdd3(this: ExprIoTernary): int = 
  if this.oneOrTwoIoSizeAdd3InstFlag:
    return this.oneOrTwoIoSizeAdd3Inst
  let oneOrTwoIoSizeAdd3InstExpr = int((if this.flag == 64: this.obj1 else: this.obj2).io.size + 3)
  this.oneOrTwoIoSizeAdd3Inst = oneOrTwoIoSizeAdd3InstExpr
  this.oneOrTwoIoSizeAdd3InstFlag = true
  return this.oneOrTwoIoSizeAdd3Inst

proc oneOrTwoObj(this: ExprIoTernary): KaitaiStruct = 
  if this.oneOrTwoObjInstFlag:
    return this.oneOrTwoObjInst
  let oneOrTwoObjInstExpr = KaitaiStruct((if this.flag == 64: this.obj1 else: this.obj2))
  this.oneOrTwoObjInst = oneOrTwoObjInstExpr
  this.oneOrTwoObjInstFlag = true
  return this.oneOrTwoObjInst

proc fromFile*(_: typedesc[ExprIoTernary], filename: string): ExprIoTernary =
  ExprIoTernary.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ExprIoTernary_One], io: KaitaiStream, root: KaitaiStruct, parent: ExprIoTernary): ExprIoTernary_One =
  template this: untyped = result
  this = new(ExprIoTernary_One)
  let root = if root == nil: cast[ExprIoTernary](this) else: cast[ExprIoTernary](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = this.io.readU1()
  this.one = oneExpr

proc fromFile*(_: typedesc[ExprIoTernary_One], filename: string): ExprIoTernary_One =
  ExprIoTernary_One.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ExprIoTernary_Two], io: KaitaiStream, root: KaitaiStruct, parent: ExprIoTernary): ExprIoTernary_Two =
  template this: untyped = result
  this = new(ExprIoTernary_Two)
  let root = if root == nil: cast[ExprIoTernary](this) else: cast[ExprIoTernary](root)
  this.io = io
  this.root = root
  this.parent = parent

  let twoExpr = this.io.readU1()
  this.two = twoExpr

proc fromFile*(_: typedesc[ExprIoTernary_Two], filename: string): ExprIoTernary_Two =
  ExprIoTernary_Two.read(newKaitaiFileStream(filename), nil, nil)


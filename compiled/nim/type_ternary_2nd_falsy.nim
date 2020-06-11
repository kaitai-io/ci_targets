import kaitai_struct_nim_runtime
import options

type
  TypeTernary2ndFalsy* = ref object of KaitaiStruct
    `intTruthy`*: uint8
    `ut`*: TypeTernary2ndFalsy_Foo
    `intArray`*: seq[uint8]
    `intArrayEmpty`*: seq[uint8]
    `parent`*: KaitaiStruct
    `nullUtInst`*: TypeTernary2ndFalsy_Foo
    `vFloatZeroInst`*: float64
    `tInst`*: bool
    `vIntNegZeroInst`*: int
    `vIntZeroInst`*: int8
    `vFalseInst`*: bool
    `vStrEmptyInst`*: string
    `vIntArrayEmptyInst`*: seq[uint8]
    `vNullUtInst`*: TypeTernary2ndFalsy_Foo
    `vFloatNegZeroInst`*: float64
    `vStrWZeroInst`*: string
  TypeTernary2ndFalsy_Foo* = ref object of KaitaiStruct
    `m`*: uint8
    `parent`*: TypeTernary2ndFalsy

proc read*(_: typedesc[TypeTernary2ndFalsy], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TypeTernary2ndFalsy
proc read*(_: typedesc[TypeTernary2ndFalsy_Foo], io: KaitaiStream, root: KaitaiStruct, parent: TypeTernary2ndFalsy): TypeTernary2ndFalsy_Foo

proc nullUt*(this: TypeTernary2ndFalsy): TypeTernary2ndFalsy_Foo
proc vFloatZero*(this: TypeTernary2ndFalsy): float64
proc t*(this: TypeTernary2ndFalsy): bool
proc vIntNegZero*(this: TypeTernary2ndFalsy): int
proc vIntZero*(this: TypeTernary2ndFalsy): int8
proc vFalse*(this: TypeTernary2ndFalsy): bool
proc vStrEmpty*(this: TypeTernary2ndFalsy): string
proc vIntArrayEmpty*(this: TypeTernary2ndFalsy): seq[uint8]
proc vNullUt*(this: TypeTernary2ndFalsy): TypeTernary2ndFalsy_Foo
proc vFloatNegZero*(this: TypeTernary2ndFalsy): float64
proc vStrWZero*(this: TypeTernary2ndFalsy): string

proc read*(_: typedesc[TypeTernary2ndFalsy], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TypeTernary2ndFalsy =
  template this: untyped = result
  this = new(TypeTernary2ndFalsy)
  let root = if root == nil: cast[TypeTernary2ndFalsy](this) else: cast[TypeTernary2ndFalsy](root)
  this.io = io
  this.root = root
  this.parent = parent

  let intTruthyExpr = this.io.readU1()
  this.intTruthy = intTruthyExpr
  let utExpr = TypeTernary2ndFalsy_Foo.read(this.io, this.root, this)
  this.ut = utExpr
  for i in 0 ..< int(2):
    let it = this.io.readU1()
    this.intArray.add(it)
  for i in 0 ..< int(0):
    let it = this.io.readU1()
    this.intArrayEmpty.add(it)

proc nullUt(this: TypeTernary2ndFalsy): TypeTernary2ndFalsy_Foo = 
  if this.nullUtInst != nil:
    return this.nullUtInst
  if false:
    let nullUtInstExpr = TypeTernary2ndFalsy_Foo(this.ut)
    this.nullUtInst = nullUtInstExpr
  if this.nullUtInst != nil:
    return this.nullUtInst

proc vFloatZero(this: TypeTernary2ndFalsy): float64 = 
  if this.vFloatZeroInst != nil:
    return this.vFloatZeroInst
  let vFloatZeroInstExpr = float64((if this.t: 0.0 else: 3.14))
  this.vFloatZeroInst = vFloatZeroInstExpr
  if this.vFloatZeroInst != nil:
    return this.vFloatZeroInst

proc t(this: TypeTernary2ndFalsy): bool = 
  if this.tInst != nil:
    return this.tInst
  let tInstExpr = bool(true)
  this.tInst = tInstExpr
  if this.tInst != nil:
    return this.tInst

proc vIntNegZero(this: TypeTernary2ndFalsy): int = 
  if this.vIntNegZeroInst != nil:
    return this.vIntNegZeroInst
  let vIntNegZeroInstExpr = int((if this.t: -0 else: -20))
  this.vIntNegZeroInst = vIntNegZeroInstExpr
  if this.vIntNegZeroInst != nil:
    return this.vIntNegZeroInst

proc vIntZero(this: TypeTernary2ndFalsy): int8 = 
  if this.vIntZeroInst != nil:
    return this.vIntZeroInst
  let vIntZeroInstExpr = int8((if this.t: 0 else: 10))
  this.vIntZeroInst = vIntZeroInstExpr
  if this.vIntZeroInst != nil:
    return this.vIntZeroInst

proc vFalse(this: TypeTernary2ndFalsy): bool = 
  if this.vFalseInst != nil:
    return this.vFalseInst
  let vFalseInstExpr = bool((if this.t: false else: true))
  this.vFalseInst = vFalseInstExpr
  if this.vFalseInst != nil:
    return this.vFalseInst

proc vStrEmpty(this: TypeTernary2ndFalsy): string = 
  if this.vStrEmptyInst.len != 0:
    return this.vStrEmptyInst
  let vStrEmptyInstExpr = string((if this.t: "" else: "kaitai"))
  this.vStrEmptyInst = vStrEmptyInstExpr
  if this.vStrEmptyInst.len != 0:
    return this.vStrEmptyInst

proc vIntArrayEmpty(this: TypeTernary2ndFalsy): seq[uint8] = 
  if this.vIntArrayEmptyInst.len != 0:
    return this.vIntArrayEmptyInst
  let vIntArrayEmptyInstExpr = seq[uint8]((if this.t: this.intArrayEmpty else: this.intArray))
  this.vIntArrayEmptyInst = vIntArrayEmptyInstExpr
  if this.vIntArrayEmptyInst.len != 0:
    return this.vIntArrayEmptyInst

proc vNullUt(this: TypeTernary2ndFalsy): TypeTernary2ndFalsy_Foo = 
  if this.vNullUtInst != nil:
    return this.vNullUtInst
  let vNullUtInstExpr = TypeTernary2ndFalsy_Foo((if this.t: this.nullUt else: this.ut))
  this.vNullUtInst = vNullUtInstExpr
  if this.vNullUtInst != nil:
    return this.vNullUtInst

proc vFloatNegZero(this: TypeTernary2ndFalsy): float64 = 
  if this.vFloatNegZeroInst != nil:
    return this.vFloatNegZeroInst
  let vFloatNegZeroInstExpr = float64((if this.t: -0.0 else: -2.72))
  this.vFloatNegZeroInst = vFloatNegZeroInstExpr
  if this.vFloatNegZeroInst != nil:
    return this.vFloatNegZeroInst

proc vStrWZero(this: TypeTernary2ndFalsy): string = 
  if this.vStrWZeroInst.len != 0:
    return this.vStrWZeroInst
  let vStrWZeroInstExpr = string((if this.t: "0" else: "30"))
  this.vStrWZeroInst = vStrWZeroInstExpr
  if this.vStrWZeroInst.len != 0:
    return this.vStrWZeroInst

proc fromFile*(_: typedesc[TypeTernary2ndFalsy], filename: string): TypeTernary2ndFalsy =
  TypeTernary2ndFalsy.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[TypeTernary2ndFalsy_Foo], io: KaitaiStream, root: KaitaiStruct, parent: TypeTernary2ndFalsy): TypeTernary2ndFalsy_Foo =
  template this: untyped = result
  this = new(TypeTernary2ndFalsy_Foo)
  let root = if root == nil: cast[TypeTernary2ndFalsy](this) else: cast[TypeTernary2ndFalsy](root)
  this.io = io
  this.root = root
  this.parent = parent

  let mExpr = this.io.readU1()
  this.m = mExpr

proc fromFile*(_: typedesc[TypeTernary2ndFalsy_Foo], filename: string): TypeTernary2ndFalsy_Foo =
  TypeTernary2ndFalsy_Foo.read(newKaitaiFileStream(filename), nil, nil)


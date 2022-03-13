import kaitai_struct_nim_runtime
import options

type
  TypeTernary2ndFalsy* = ref object of KaitaiStruct
    `intTruthy`*: uint8
    `ut`*: TypeTernary2ndFalsy_Foo
    `intArray`*: seq[uint8]
    `intArrayEmpty`*: seq[uint8]
    `parent`*: KaitaiStruct
    `nullUtInst`: TypeTernary2ndFalsy_Foo
    `nullUtInstFlag`: bool
    `vFloatZeroInst`: float64
    `vFloatZeroInstFlag`: bool
    `tInst`: bool
    `tInstFlag`: bool
    `vIntNegZeroInst`: int
    `vIntNegZeroInstFlag`: bool
    `vIntZeroInst`: int8
    `vIntZeroInstFlag`: bool
    `vFalseInst`: bool
    `vFalseInstFlag`: bool
    `vStrEmptyInst`: string
    `vStrEmptyInstFlag`: bool
    `vIntArrayEmptyInst`: seq[uint8]
    `vIntArrayEmptyInstFlag`: bool
    `vNullUtInst`: TypeTernary2ndFalsy_Foo
    `vNullUtInstFlag`: bool
    `vFloatNegZeroInst`: float64
    `vFloatNegZeroInstFlag`: bool
    `vStrWZeroInst`: string
    `vStrWZeroInstFlag`: bool
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
  if this.nullUtInstFlag:
    return this.nullUtInst
  if false:
    let nullUtInstExpr = TypeTernary2ndFalsy_Foo(this.ut)
    this.nullUtInst = nullUtInstExpr
  this.nullUtInstFlag = true
  return this.nullUtInst

proc vFloatZero(this: TypeTernary2ndFalsy): float64 = 
  if this.vFloatZeroInstFlag:
    return this.vFloatZeroInst
  let vFloatZeroInstExpr = float64((if this.t: 0.0 else: 3.14))
  this.vFloatZeroInst = vFloatZeroInstExpr
  this.vFloatZeroInstFlag = true
  return this.vFloatZeroInst

proc t(this: TypeTernary2ndFalsy): bool = 
  if this.tInstFlag:
    return this.tInst
  let tInstExpr = bool(true)
  this.tInst = tInstExpr
  this.tInstFlag = true
  return this.tInst

proc vIntNegZero(this: TypeTernary2ndFalsy): int = 
  if this.vIntNegZeroInstFlag:
    return this.vIntNegZeroInst
  let vIntNegZeroInstExpr = int((if this.t: 0 else: -20))
  this.vIntNegZeroInst = vIntNegZeroInstExpr
  this.vIntNegZeroInstFlag = true
  return this.vIntNegZeroInst

proc vIntZero(this: TypeTernary2ndFalsy): int8 = 
  if this.vIntZeroInstFlag:
    return this.vIntZeroInst
  let vIntZeroInstExpr = int8((if this.t: 0 else: 10))
  this.vIntZeroInst = vIntZeroInstExpr
  this.vIntZeroInstFlag = true
  return this.vIntZeroInst

proc vFalse(this: TypeTernary2ndFalsy): bool = 
  if this.vFalseInstFlag:
    return this.vFalseInst
  let vFalseInstExpr = bool((if this.t: false else: true))
  this.vFalseInst = vFalseInstExpr
  this.vFalseInstFlag = true
  return this.vFalseInst

proc vStrEmpty(this: TypeTernary2ndFalsy): string = 
  if this.vStrEmptyInstFlag:
    return this.vStrEmptyInst
  let vStrEmptyInstExpr = string((if this.t: "" else: "kaitai"))
  this.vStrEmptyInst = vStrEmptyInstExpr
  this.vStrEmptyInstFlag = true
  return this.vStrEmptyInst

proc vIntArrayEmpty(this: TypeTernary2ndFalsy): seq[uint8] = 
  if this.vIntArrayEmptyInstFlag:
    return this.vIntArrayEmptyInst
  let vIntArrayEmptyInstExpr = seq[uint8]((if this.t: this.intArrayEmpty else: this.intArray))
  this.vIntArrayEmptyInst = vIntArrayEmptyInstExpr
  this.vIntArrayEmptyInstFlag = true
  return this.vIntArrayEmptyInst

proc vNullUt(this: TypeTernary2ndFalsy): TypeTernary2ndFalsy_Foo = 
  if this.vNullUtInstFlag:
    return this.vNullUtInst
  let vNullUtInstExpr = TypeTernary2ndFalsy_Foo((if this.t: this.nullUt else: this.ut))
  this.vNullUtInst = vNullUtInstExpr
  this.vNullUtInstFlag = true
  return this.vNullUtInst

proc vFloatNegZero(this: TypeTernary2ndFalsy): float64 = 
  if this.vFloatNegZeroInstFlag:
    return this.vFloatNegZeroInst
  let vFloatNegZeroInstExpr = float64((if this.t: -0.0 else: -2.72))
  this.vFloatNegZeroInst = vFloatNegZeroInstExpr
  this.vFloatNegZeroInstFlag = true
  return this.vFloatNegZeroInst

proc vStrWZero(this: TypeTernary2ndFalsy): string = 
  if this.vStrWZeroInstFlag:
    return this.vStrWZeroInst
  let vStrWZeroInstExpr = string((if this.t: "0" else: "30"))
  this.vStrWZeroInst = vStrWZeroInstExpr
  this.vStrWZeroInstFlag = true
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


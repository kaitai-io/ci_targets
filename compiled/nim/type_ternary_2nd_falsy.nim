import kaitai_struct_nim_runtime
import options

type
  TypeTernary2ndFalsy* = ref object of KaitaiStruct
    intTruthy*: uint8
    ut*: TypeTernary2ndFalsy_Foo
    intArray*: seq[uint8]
    intArrayEmpty*: seq[uint8]
    parent*: KaitaiStruct
    nullUtInst*: Option[TypeTernary2ndFalsy_Foo]
    vFloatZeroInst*: Option[float64]
    tInst*: Option[bool]
    vIntNegZeroInst*: Option[int]
    vIntZeroInst*: Option[int8]
    vFalseInst*: Option[bool]
    vStrEmptyInst*: string
    vIntArrayEmptyInst*: seq[uint8]
    vNullUtInst*: Option[TypeTernary2ndFalsy_Foo]
    vFloatNegZeroInst*: Option[float64]
    vStrWZeroInst*: string
  TypeTernary2ndFalsy_Foo* = ref object of KaitaiStruct
    m*: uint8
    parent*: TypeTernary2ndFalsy

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
  if isSome(this.nullUtInst):
    return get(this.nullUtInst)
  if false:
    let nullUtInstExpr = TypeTernary2ndFalsy_Foo(this.ut)
    this.nullUtInst = nullUtInstExpr
  if isSome(this.nullUtInst):
    return get(this.nullUtInst)

proc vFloatZero(this: TypeTernary2ndFalsy): float64 = 
  if isSome(this.vFloatZeroInst):
    return get(this.vFloatZeroInst)
  let vFloatZeroInstExpr = float64((if this.t: 0.0 else: 3.14))
  this.vFloatZeroInst = vFloatZeroInstExpr
  if isSome(this.vFloatZeroInst):
    return get(this.vFloatZeroInst)

proc t(this: TypeTernary2ndFalsy): bool = 
  if isSome(this.tInst):
    return get(this.tInst)
  let tInstExpr = bool(true)
  this.tInst = tInstExpr
  if isSome(this.tInst):
    return get(this.tInst)

proc vIntNegZero(this: TypeTernary2ndFalsy): int = 
  if isSome(this.vIntNegZeroInst):
    return get(this.vIntNegZeroInst)
  let vIntNegZeroInstExpr = int((if this.t: -0 else: -20))
  this.vIntNegZeroInst = vIntNegZeroInstExpr
  if isSome(this.vIntNegZeroInst):
    return get(this.vIntNegZeroInst)

proc vIntZero(this: TypeTernary2ndFalsy): int8 = 
  if isSome(this.vIntZeroInst):
    return get(this.vIntZeroInst)
  let vIntZeroInstExpr = int8((if this.t: 0 else: 10))
  this.vIntZeroInst = vIntZeroInstExpr
  if isSome(this.vIntZeroInst):
    return get(this.vIntZeroInst)

proc vFalse(this: TypeTernary2ndFalsy): bool = 
  if isSome(this.vFalseInst):
    return get(this.vFalseInst)
  let vFalseInstExpr = bool((if this.t: false else: true))
  this.vFalseInst = vFalseInstExpr
  if isSome(this.vFalseInst):
    return get(this.vFalseInst)

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
  if isSome(this.vNullUtInst):
    return get(this.vNullUtInst)
  let vNullUtInstExpr = TypeTernary2ndFalsy_Foo((if this.t: this.nullUt else: this.ut))
  this.vNullUtInst = vNullUtInstExpr
  if isSome(this.vNullUtInst):
    return get(this.vNullUtInst)

proc vFloatNegZero(this: TypeTernary2ndFalsy): float64 = 
  if isSome(this.vFloatNegZeroInst):
    return get(this.vFloatNegZeroInst)
  let vFloatNegZeroInstExpr = float64((if this.t: -0.0 else: -2.72))
  this.vFloatNegZeroInst = vFloatNegZeroInstExpr
  if isSome(this.vFloatNegZeroInst):
    return get(this.vFloatNegZeroInst)

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


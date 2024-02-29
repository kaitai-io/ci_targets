import kaitai_struct_nim_runtime
import options

type
  ExprArray* = ref object of KaitaiStruct
    `aint`*: seq[uint32]
    `afloat`*: seq[float64]
    `astr`*: seq[string]
    `parent`*: KaitaiStruct
    `afloatFirstInst`: float64
    `afloatFirstInstFlag`: bool
    `afloatLastInst`: float64
    `afloatLastInstFlag`: bool
    `afloatMaxInst`: float64
    `afloatMaxInstFlag`: bool
    `afloatMinInst`: float64
    `afloatMinInstFlag`: bool
    `afloatSizeInst`: int
    `afloatSizeInstFlag`: bool
    `aintFirstInst`: uint32
    `aintFirstInstFlag`: bool
    `aintLastInst`: uint32
    `aintLastInstFlag`: bool
    `aintMaxInst`: uint32
    `aintMaxInstFlag`: bool
    `aintMinInst`: uint32
    `aintMinInstFlag`: bool
    `aintSizeInst`: int
    `aintSizeInstFlag`: bool
    `astrFirstInst`: string
    `astrFirstInstFlag`: bool
    `astrLastInst`: string
    `astrLastInstFlag`: bool
    `astrMaxInst`: string
    `astrMaxInstFlag`: bool
    `astrMinInst`: string
    `astrMinInstFlag`: bool
    `astrSizeInst`: int
    `astrSizeInstFlag`: bool

proc read*(_: typedesc[ExprArray], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprArray

proc afloatFirst*(this: ExprArray): float64
proc afloatLast*(this: ExprArray): float64
proc afloatMax*(this: ExprArray): float64
proc afloatMin*(this: ExprArray): float64
proc afloatSize*(this: ExprArray): int
proc aintFirst*(this: ExprArray): uint32
proc aintLast*(this: ExprArray): uint32
proc aintMax*(this: ExprArray): uint32
proc aintMin*(this: ExprArray): uint32
proc aintSize*(this: ExprArray): int
proc astrFirst*(this: ExprArray): string
proc astrLast*(this: ExprArray): string
proc astrMax*(this: ExprArray): string
proc astrMin*(this: ExprArray): string
proc astrSize*(this: ExprArray): int

proc read*(_: typedesc[ExprArray], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprArray =
  template this: untyped = result
  this = new(ExprArray)
  let root = if root == nil: cast[ExprArray](this) else: cast[ExprArray](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< int(4):
    let it = this.io.readU4le()
    this.aint.add(it)
  for i in 0 ..< int(3):
    let it = this.io.readF8le()
    this.afloat.add(it)
  for i in 0 ..< int(3):
    let it = encode(this.io.readBytesTerm(0, false, true, true), "UTF-8")
    this.astr.add(it)

proc afloatFirst(this: ExprArray): float64 = 
  if this.afloatFirstInstFlag:
    return this.afloatFirstInst
  let afloatFirstInstExpr = float64(this.afloat[0])
  this.afloatFirstInst = afloatFirstInstExpr
  this.afloatFirstInstFlag = true
  return this.afloatFirstInst

proc afloatLast(this: ExprArray): float64 = 
  if this.afloatLastInstFlag:
    return this.afloatLastInst
  let afloatLastInstExpr = float64(this.afloat[^1])
  this.afloatLastInst = afloatLastInstExpr
  this.afloatLastInstFlag = true
  return this.afloatLastInst

proc afloatMax(this: ExprArray): float64 = 
  if this.afloatMaxInstFlag:
    return this.afloatMaxInst
  let afloatMaxInstExpr = float64(max(this.afloat))
  this.afloatMaxInst = afloatMaxInstExpr
  this.afloatMaxInstFlag = true
  return this.afloatMaxInst

proc afloatMin(this: ExprArray): float64 = 
  if this.afloatMinInstFlag:
    return this.afloatMinInst
  let afloatMinInstExpr = float64(min(this.afloat))
  this.afloatMinInst = afloatMinInstExpr
  this.afloatMinInstFlag = true
  return this.afloatMinInst

proc afloatSize(this: ExprArray): int = 
  if this.afloatSizeInstFlag:
    return this.afloatSizeInst
  let afloatSizeInstExpr = int(len(this.afloat))
  this.afloatSizeInst = afloatSizeInstExpr
  this.afloatSizeInstFlag = true
  return this.afloatSizeInst

proc aintFirst(this: ExprArray): uint32 = 
  if this.aintFirstInstFlag:
    return this.aintFirstInst
  let aintFirstInstExpr = uint32(this.aint[0])
  this.aintFirstInst = aintFirstInstExpr
  this.aintFirstInstFlag = true
  return this.aintFirstInst

proc aintLast(this: ExprArray): uint32 = 
  if this.aintLastInstFlag:
    return this.aintLastInst
  let aintLastInstExpr = uint32(this.aint[^1])
  this.aintLastInst = aintLastInstExpr
  this.aintLastInstFlag = true
  return this.aintLastInst

proc aintMax(this: ExprArray): uint32 = 
  if this.aintMaxInstFlag:
    return this.aintMaxInst
  let aintMaxInstExpr = uint32(max(this.aint))
  this.aintMaxInst = aintMaxInstExpr
  this.aintMaxInstFlag = true
  return this.aintMaxInst

proc aintMin(this: ExprArray): uint32 = 
  if this.aintMinInstFlag:
    return this.aintMinInst
  let aintMinInstExpr = uint32(min(this.aint))
  this.aintMinInst = aintMinInstExpr
  this.aintMinInstFlag = true
  return this.aintMinInst

proc aintSize(this: ExprArray): int = 
  if this.aintSizeInstFlag:
    return this.aintSizeInst
  let aintSizeInstExpr = int(len(this.aint))
  this.aintSizeInst = aintSizeInstExpr
  this.aintSizeInstFlag = true
  return this.aintSizeInst

proc astrFirst(this: ExprArray): string = 
  if this.astrFirstInstFlag:
    return this.astrFirstInst
  let astrFirstInstExpr = string(this.astr[0])
  this.astrFirstInst = astrFirstInstExpr
  this.astrFirstInstFlag = true
  return this.astrFirstInst

proc astrLast(this: ExprArray): string = 
  if this.astrLastInstFlag:
    return this.astrLastInst
  let astrLastInstExpr = string(this.astr[^1])
  this.astrLastInst = astrLastInstExpr
  this.astrLastInstFlag = true
  return this.astrLastInst

proc astrMax(this: ExprArray): string = 
  if this.astrMaxInstFlag:
    return this.astrMaxInst
  let astrMaxInstExpr = string(max(this.astr))
  this.astrMaxInst = astrMaxInstExpr
  this.astrMaxInstFlag = true
  return this.astrMaxInst

proc astrMin(this: ExprArray): string = 
  if this.astrMinInstFlag:
    return this.astrMinInst
  let astrMinInstExpr = string(min(this.astr))
  this.astrMinInst = astrMinInstExpr
  this.astrMinInstFlag = true
  return this.astrMinInst

proc astrSize(this: ExprArray): int = 
  if this.astrSizeInstFlag:
    return this.astrSizeInst
  let astrSizeInstExpr = int(len(this.astr))
  this.astrSizeInst = astrSizeInstExpr
  this.astrSizeInstFlag = true
  return this.astrSizeInst

proc fromFile*(_: typedesc[ExprArray], filename: string): ExprArray =
  ExprArray.read(newKaitaiFileStream(filename), nil, nil)


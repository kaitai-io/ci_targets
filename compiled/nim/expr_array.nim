import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ExprArray* = ref object of KaitaiStruct
    aint*: seq[uint32]
    afloat*: seq[float64]
    astr*: seq[string]
    parent*: KaitaiStruct
    aintFirstInst*: Option[uint32]
    afloatSizeInst*: Option[int]
    astrSizeInst*: Option[int]
    aintMinInst*: Option[uint32]
    afloatMinInst*: Option[float64]
    aintSizeInst*: Option[int]
    aintLastInst*: Option[uint32]
    afloatLastInst*: Option[float64]
    astrFirstInst*: string
    astrLastInst*: string
    aintMaxInst*: Option[uint32]
    afloatFirstInst*: Option[float64]
    astrMinInst*: string
    astrMaxInst*: string
    afloatMaxInst*: Option[float64]

proc read*(_: typedesc[ExprArray], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprArray

proc aintFirst*(this: ExprArray): uint32
proc afloatSize*(this: ExprArray): int
proc astrSize*(this: ExprArray): int
proc aintMin*(this: ExprArray): uint32
proc afloatMin*(this: ExprArray): float64
proc aintSize*(this: ExprArray): int
proc aintLast*(this: ExprArray): uint32
proc afloatLast*(this: ExprArray): float64
proc astrFirst*(this: ExprArray): string
proc astrLast*(this: ExprArray): string
proc aintMax*(this: ExprArray): uint32
proc afloatFirst*(this: ExprArray): float64
proc astrMin*(this: ExprArray): string
proc astrMax*(this: ExprArray): string
proc afloatMax*(this: ExprArray): float64

proc read*(_: typedesc[ExprArray], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprArray =
  template this: untyped = result
  this = new(ExprArray)
  let root = if root == nil: cast[ExprArray](this) else: cast[ExprArray](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< 4:
    let aintExpr = this.io.readU4le()
    this.aint.add(aintExpr)
  for i in 0 ..< 3:
    let afloatExpr = this.io.readF8le()
    this.afloat.add(afloatExpr)
  for i in 0 ..< 3:
    let astrExpr = encode(this.io.readBytesTerm(0, false, true, true), "UTF-8")
    this.astr.add(astrExpr)

proc aintFirst(this: ExprArray): uint32 = 
  if isSome(this.aintFirstInst):
    return get(this.aintFirstInst)
  let aintFirstInstExpr = uint32(this.aint[0])
  this.aintFirstInst = aintFirstInstExpr
  if isSome(this.aintFirstInst):
    return get(this.aintFirstInst)

proc afloatSize(this: ExprArray): int = 
  if isSome(this.afloatSizeInst):
    return get(this.afloatSizeInst)
  let afloatSizeInstExpr = int(len(this.afloat))
  this.afloatSizeInst = afloatSizeInstExpr
  if isSome(this.afloatSizeInst):
    return get(this.afloatSizeInst)

proc astrSize(this: ExprArray): int = 
  if isSome(this.astrSizeInst):
    return get(this.astrSizeInst)
  let astrSizeInstExpr = int(len(this.astr))
  this.astrSizeInst = astrSizeInstExpr
  if isSome(this.astrSizeInst):
    return get(this.astrSizeInst)

proc aintMin(this: ExprArray): uint32 = 
  if isSome(this.aintMinInst):
    return get(this.aintMinInst)
  let aintMinInstExpr = uint32(min(this.aint))
  this.aintMinInst = aintMinInstExpr
  if isSome(this.aintMinInst):
    return get(this.aintMinInst)

proc afloatMin(this: ExprArray): float64 = 
  if isSome(this.afloatMinInst):
    return get(this.afloatMinInst)
  let afloatMinInstExpr = float64(min(this.afloat))
  this.afloatMinInst = afloatMinInstExpr
  if isSome(this.afloatMinInst):
    return get(this.afloatMinInst)

proc aintSize(this: ExprArray): int = 
  if isSome(this.aintSizeInst):
    return get(this.aintSizeInst)
  let aintSizeInstExpr = int(len(this.aint))
  this.aintSizeInst = aintSizeInstExpr
  if isSome(this.aintSizeInst):
    return get(this.aintSizeInst)

proc aintLast(this: ExprArray): uint32 = 
  if isSome(this.aintLastInst):
    return get(this.aintLastInst)
  let aintLastInstExpr = uint32(this.aint[^1])
  this.aintLastInst = aintLastInstExpr
  if isSome(this.aintLastInst):
    return get(this.aintLastInst)

proc afloatLast(this: ExprArray): float64 = 
  if isSome(this.afloatLastInst):
    return get(this.afloatLastInst)
  let afloatLastInstExpr = float64(this.afloat[^1])
  this.afloatLastInst = afloatLastInstExpr
  if isSome(this.afloatLastInst):
    return get(this.afloatLastInst)

proc astrFirst(this: ExprArray): string = 
  if this.astrFirstInst.len != 0:
    return this.astrFirstInst
  let astrFirstInstExpr = string(this.astr[0])
  this.astrFirstInst = astrFirstInstExpr
  if this.astrFirstInst.len != 0:
    return this.astrFirstInst

proc astrLast(this: ExprArray): string = 
  if this.astrLastInst.len != 0:
    return this.astrLastInst
  let astrLastInstExpr = string(this.astr[^1])
  this.astrLastInst = astrLastInstExpr
  if this.astrLastInst.len != 0:
    return this.astrLastInst

proc aintMax(this: ExprArray): uint32 = 
  if isSome(this.aintMaxInst):
    return get(this.aintMaxInst)
  let aintMaxInstExpr = uint32(max(this.aint))
  this.aintMaxInst = aintMaxInstExpr
  if isSome(this.aintMaxInst):
    return get(this.aintMaxInst)

proc afloatFirst(this: ExprArray): float64 = 
  if isSome(this.afloatFirstInst):
    return get(this.afloatFirstInst)
  let afloatFirstInstExpr = float64(this.afloat[0])
  this.afloatFirstInst = afloatFirstInstExpr
  if isSome(this.afloatFirstInst):
    return get(this.afloatFirstInst)

proc astrMin(this: ExprArray): string = 
  if this.astrMinInst.len != 0:
    return this.astrMinInst
  let astrMinInstExpr = string(min(this.astr))
  this.astrMinInst = astrMinInstExpr
  if this.astrMinInst.len != 0:
    return this.astrMinInst

proc astrMax(this: ExprArray): string = 
  if this.astrMaxInst.len != 0:
    return this.astrMaxInst
  let astrMaxInstExpr = string(max(this.astr))
  this.astrMaxInst = astrMaxInstExpr
  if this.astrMaxInst.len != 0:
    return this.astrMaxInst

proc afloatMax(this: ExprArray): float64 = 
  if isSome(this.afloatMaxInst):
    return get(this.afloatMaxInst)
  let afloatMaxInstExpr = float64(max(this.afloat))
  this.afloatMaxInst = afloatMaxInstExpr
  if isSome(this.afloatMaxInst):
    return get(this.afloatMaxInst)

proc fromFile*(_: typedesc[ExprArray], filename: string): ExprArray =
  ExprArray.read(newKaitaiFileStream(filename), nil, nil)


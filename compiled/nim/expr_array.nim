import kaitai_struct_nim_runtime
import options

type
  ExprArray* = ref object of KaitaiStruct
    `aint`*: seq[uint32]
    `afloat`*: seq[float64]
    `astr`*: seq[string]
    `parent`*: KaitaiStruct
    `aintFirstInst`*: uint32
    `afloatSizeInst`*: int
    `astrSizeInst`*: int
    `aintMinInst`*: uint32
    `afloatMinInst`*: float64
    `aintSizeInst`*: int
    `aintLastInst`*: uint32
    `afloatLastInst`*: float64
    `astrFirstInst`*: string
    `astrLastInst`*: string
    `aintMaxInst`*: uint32
    `afloatFirstInst`*: float64
    `astrMinInst`*: string
    `astrMaxInst`*: string
    `afloatMaxInst`*: float64

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

  for i in 0 ..< int(4):
    let it = this.io.readU4le()
    this.aint.add(it)
  for i in 0 ..< int(3):
    let it = this.io.readF8le()
    this.afloat.add(it)
  for i in 0 ..< int(3):
    let it = encode(this.io.readBytesTerm(0, false, true, true), "UTF-8")
    this.astr.add(it)

proc aintFirst(this: ExprArray): uint32 = 
  if this.aintFirstInst != nil:
    return this.aintFirstInst
  let aintFirstInstExpr = uint32(this.aint[0])
  this.aintFirstInst = aintFirstInstExpr
  if this.aintFirstInst != nil:
    return this.aintFirstInst

proc afloatSize(this: ExprArray): int = 
  if this.afloatSizeInst != nil:
    return this.afloatSizeInst
  let afloatSizeInstExpr = int(len(this.afloat))
  this.afloatSizeInst = afloatSizeInstExpr
  if this.afloatSizeInst != nil:
    return this.afloatSizeInst

proc astrSize(this: ExprArray): int = 
  if this.astrSizeInst != nil:
    return this.astrSizeInst
  let astrSizeInstExpr = int(len(this.astr))
  this.astrSizeInst = astrSizeInstExpr
  if this.astrSizeInst != nil:
    return this.astrSizeInst

proc aintMin(this: ExprArray): uint32 = 
  if this.aintMinInst != nil:
    return this.aintMinInst
  let aintMinInstExpr = uint32(min(this.aint))
  this.aintMinInst = aintMinInstExpr
  if this.aintMinInst != nil:
    return this.aintMinInst

proc afloatMin(this: ExprArray): float64 = 
  if this.afloatMinInst != nil:
    return this.afloatMinInst
  let afloatMinInstExpr = float64(min(this.afloat))
  this.afloatMinInst = afloatMinInstExpr
  if this.afloatMinInst != nil:
    return this.afloatMinInst

proc aintSize(this: ExprArray): int = 
  if this.aintSizeInst != nil:
    return this.aintSizeInst
  let aintSizeInstExpr = int(len(this.aint))
  this.aintSizeInst = aintSizeInstExpr
  if this.aintSizeInst != nil:
    return this.aintSizeInst

proc aintLast(this: ExprArray): uint32 = 
  if this.aintLastInst != nil:
    return this.aintLastInst
  let aintLastInstExpr = uint32(this.aint[^1])
  this.aintLastInst = aintLastInstExpr
  if this.aintLastInst != nil:
    return this.aintLastInst

proc afloatLast(this: ExprArray): float64 = 
  if this.afloatLastInst != nil:
    return this.afloatLastInst
  let afloatLastInstExpr = float64(this.afloat[^1])
  this.afloatLastInst = afloatLastInstExpr
  if this.afloatLastInst != nil:
    return this.afloatLastInst

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
  if this.aintMaxInst != nil:
    return this.aintMaxInst
  let aintMaxInstExpr = uint32(max(this.aint))
  this.aintMaxInst = aintMaxInstExpr
  if this.aintMaxInst != nil:
    return this.aintMaxInst

proc afloatFirst(this: ExprArray): float64 = 
  if this.afloatFirstInst != nil:
    return this.afloatFirstInst
  let afloatFirstInstExpr = float64(this.afloat[0])
  this.afloatFirstInst = afloatFirstInstExpr
  if this.afloatFirstInst != nil:
    return this.afloatFirstInst

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
  if this.afloatMaxInst != nil:
    return this.afloatMaxInst
  let afloatMaxInstExpr = float64(max(this.afloat))
  this.afloatMaxInst = afloatMaxInstExpr
  if this.afloatMaxInst != nil:
    return this.afloatMaxInst

proc fromFile*(_: typedesc[ExprArray], filename: string): ExprArray =
  ExprArray.read(newKaitaiFileStream(filename), nil, nil)


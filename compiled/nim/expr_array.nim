import kaitai_struct_nim_runtime
import options
import encodings

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
    this.aint.add(this.io.readU4le())
  for i in 0 ..< 3:
    this.afloat.add(this.io.readF8le())
  for i in 0 ..< 3:
    this.astr.add(convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8"))

proc aintFirst(this: ExprArray): uint32 = 
  if isSome(this.aintFirstInst):
    return get(this.aintFirstInst)
  this.aintFirstInst = uint32(this.aint[0])
  if isSome(this.aintFirstInst):
    return get(this.aintFirstInst)

proc afloatSize(this: ExprArray): int = 
  if isSome(this.afloatSizeInst):
    return get(this.afloatSizeInst)
  this.afloatSizeInst = int(len(this.afloat))
  if isSome(this.afloatSizeInst):
    return get(this.afloatSizeInst)

proc astrSize(this: ExprArray): int = 
  if isSome(this.astrSizeInst):
    return get(this.astrSizeInst)
  this.astrSizeInst = int(len(this.astr))
  if isSome(this.astrSizeInst):
    return get(this.astrSizeInst)

proc aintMin(this: ExprArray): uint32 = 
  if isSome(this.aintMinInst):
    return get(this.aintMinInst)
  this.aintMinInst = uint32(min(this.aint))
  if isSome(this.aintMinInst):
    return get(this.aintMinInst)

proc afloatMin(this: ExprArray): float64 = 
  if isSome(this.afloatMinInst):
    return get(this.afloatMinInst)
  this.afloatMinInst = float64(min(this.afloat))
  if isSome(this.afloatMinInst):
    return get(this.afloatMinInst)

proc aintSize(this: ExprArray): int = 
  if isSome(this.aintSizeInst):
    return get(this.aintSizeInst)
  this.aintSizeInst = int(len(this.aint))
  if isSome(this.aintSizeInst):
    return get(this.aintSizeInst)

proc aintLast(this: ExprArray): uint32 = 
  if isSome(this.aintLastInst):
    return get(this.aintLastInst)
  this.aintLastInst = uint32(this.aint[^1])
  if isSome(this.aintLastInst):
    return get(this.aintLastInst)

proc afloatLast(this: ExprArray): float64 = 
  if isSome(this.afloatLastInst):
    return get(this.afloatLastInst)
  this.afloatLastInst = float64(this.afloat[^1])
  if isSome(this.afloatLastInst):
    return get(this.afloatLastInst)

proc astrFirst(this: ExprArray): string = 
  if this.astrFirstInst.len != 0:
    return this.astrFirstInst
  this.astrFirstInst = string(this.astr[0])
  if this.astrFirstInst.len != 0:
    return this.astrFirstInst

proc astrLast(this: ExprArray): string = 
  if this.astrLastInst.len != 0:
    return this.astrLastInst
  this.astrLastInst = string(this.astr[^1])
  if this.astrLastInst.len != 0:
    return this.astrLastInst

proc aintMax(this: ExprArray): uint32 = 
  if isSome(this.aintMaxInst):
    return get(this.aintMaxInst)
  this.aintMaxInst = uint32(max(this.aint))
  if isSome(this.aintMaxInst):
    return get(this.aintMaxInst)

proc afloatFirst(this: ExprArray): float64 = 
  if isSome(this.afloatFirstInst):
    return get(this.afloatFirstInst)
  this.afloatFirstInst = float64(this.afloat[0])
  if isSome(this.afloatFirstInst):
    return get(this.afloatFirstInst)

proc astrMin(this: ExprArray): string = 
  if this.astrMinInst.len != 0:
    return this.astrMinInst
  this.astrMinInst = string(min(this.astr))
  if this.astrMinInst.len != 0:
    return this.astrMinInst

proc astrMax(this: ExprArray): string = 
  if this.astrMaxInst.len != 0:
    return this.astrMaxInst
  this.astrMaxInst = string(max(this.astr))
  if this.astrMaxInst.len != 0:
    return this.astrMaxInst

proc afloatMax(this: ExprArray): float64 = 
  if isSome(this.afloatMaxInst):
    return get(this.afloatMaxInst)
  this.afloatMaxInst = float64(max(this.afloat))
  if isSome(this.afloatMaxInst):
    return get(this.afloatMaxInst)

proc fromFile*(_: typedesc[ExprArray], filename: string): ExprArray =
  ExprArray.read(newKaitaiFileStream(filename), nil, nil)


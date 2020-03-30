import kaitai_struct_nim_runtime
import options
import encodings

type
  ExprArray* = ref ExprArrayObj
  ExprArrayObj* = object
    aint*: seq[uint32]
    afloat*: seq[float64]
    astr*: seq[string]
    io*: KaitaiStream
    root*: ExprArray
    parent*: ref RootObj
    aintFirstInst*: Option[uint32]
    afloatSizeInst*: Option[int]
    astrSizeInst*: Option[int]
    aintMinInst*: Option[uint32]
    afloatMinInst*: Option[float64]
    aintSizeInst*: Option[int]
    aintLastInst*: Option[uint32]
    afloatLastInst*: Option[float64]
    astrFirstInst*: Option[string]
    astrLastInst*: Option[string]
    aintMaxInst*: Option[uint32]
    afloatFirstInst*: Option[float64]
    astrMinInst*: Option[string]
    astrMaxInst*: Option[string]
    afloatMaxInst*: Option[float64]

### ExprArray ###
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
proc aintFirst(this: ExprArray): uint32 = 
  if isSome(this.aintFirstInst):
    return get(this.aintFirstInst)
  let aintFirstInst = this.aint[0]
  this.aintFirstInst = some(aintFirstInst)
  return get(this.aintFirstInst)

proc afloatSize(this: ExprArray): int = 
  if isSome(this.afloatSizeInst):
    return get(this.afloatSizeInst)
  let afloatSizeInst = len(this.afloat)
  this.afloatSizeInst = some(afloatSizeInst)
  return get(this.afloatSizeInst)

proc astrSize(this: ExprArray): int = 
  if isSome(this.astrSizeInst):
    return get(this.astrSizeInst)
  let astrSizeInst = len(this.astr)
  this.astrSizeInst = some(astrSizeInst)
  return get(this.astrSizeInst)

proc aintMin(this: ExprArray): uint32 = 
  if isSome(this.aintMinInst):
    return get(this.aintMinInst)
  let aintMinInst = min(this.aint)
  this.aintMinInst = some(aintMinInst)
  return get(this.aintMinInst)

proc afloatMin(this: ExprArray): float64 = 
  if isSome(this.afloatMinInst):
    return get(this.afloatMinInst)
  let afloatMinInst = min(this.afloat)
  this.afloatMinInst = some(afloatMinInst)
  return get(this.afloatMinInst)

proc aintSize(this: ExprArray): int = 
  if isSome(this.aintSizeInst):
    return get(this.aintSizeInst)
  let aintSizeInst = len(this.aint)
  this.aintSizeInst = some(aintSizeInst)
  return get(this.aintSizeInst)

proc aintLast(this: ExprArray): uint32 = 
  if isSome(this.aintLastInst):
    return get(this.aintLastInst)
  let aintLastInst = this.aint[^1]
  this.aintLastInst = some(aintLastInst)
  return get(this.aintLastInst)

proc afloatLast(this: ExprArray): float64 = 
  if isSome(this.afloatLastInst):
    return get(this.afloatLastInst)
  let afloatLastInst = this.afloat[^1]
  this.afloatLastInst = some(afloatLastInst)
  return get(this.afloatLastInst)

proc astrFirst(this: ExprArray): string = 
  if isSome(this.astrFirstInst):
    return get(this.astrFirstInst)
  let astrFirstInst = this.astr[0]
  this.astrFirstInst = some(astrFirstInst)
  return get(this.astrFirstInst)

proc astrLast(this: ExprArray): string = 
  if isSome(this.astrLastInst):
    return get(this.astrLastInst)
  let astrLastInst = this.astr[^1]
  this.astrLastInst = some(astrLastInst)
  return get(this.astrLastInst)

proc aintMax(this: ExprArray): uint32 = 
  if isSome(this.aintMaxInst):
    return get(this.aintMaxInst)
  let aintMaxInst = max(this.aint)
  this.aintMaxInst = some(aintMaxInst)
  return get(this.aintMaxInst)

proc afloatFirst(this: ExprArray): float64 = 
  if isSome(this.afloatFirstInst):
    return get(this.afloatFirstInst)
  let afloatFirstInst = this.afloat[0]
  this.afloatFirstInst = some(afloatFirstInst)
  return get(this.afloatFirstInst)

proc astrMin(this: ExprArray): string = 
  if isSome(this.astrMinInst):
    return get(this.astrMinInst)
  let astrMinInst = min(this.astr)
  this.astrMinInst = some(astrMinInst)
  return get(this.astrMinInst)

proc astrMax(this: ExprArray): string = 
  if isSome(this.astrMaxInst):
    return get(this.astrMaxInst)
  let astrMaxInst = max(this.astr)
  this.astrMaxInst = some(astrMaxInst)
  return get(this.astrMaxInst)

proc afloatMax(this: ExprArray): float64 = 
  if isSome(this.afloatMaxInst):
    return get(this.afloatMaxInst)
  let afloatMaxInst = max(this.afloat)
  this.afloatMaxInst = some(afloatMaxInst)
  return get(this.afloatMaxInst)

proc read*(_: typedesc[ExprArray], io: KaitaiStream, root: ExprArray, parent: ref RootObj): ExprArray =
  let this = new(ExprArray)
  let root = if root == nil: cast[ExprArray](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  aint = newSeq[uint32](4)
  for i in 0 ..< 4:
    this.aint.add(this.io.readU4le())
  afloat = newSeq[float64](3)
  for i in 0 ..< 3:
    this.afloat.add(this.io.readF8le())
  astr = newSeq[string](3)
  for i in 0 ..< 3:
    this.astr.add(convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8"))
  result = this

proc fromFile*(_: typedesc[ExprArray], filename: string): ExprArray =
  ExprArray.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprArrayObj) =
  close(x.io)


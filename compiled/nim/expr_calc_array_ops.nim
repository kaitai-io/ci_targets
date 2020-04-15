import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ExprCalcArrayOps* = ref object of KaitaiStruct
    parent*: KaitaiStruct
    doubleArrayInst*: seq[float64]
    intArraySizeInst*: Option[int]
    intArrayMaxInst*: Option[int]
    doubleArrayMaxInst*: Option[float64]
    strArrayMaxInst*: string
    strArrayMinInst*: string
    doubleArrayMidInst*: Option[float64]
    strArrayInst*: seq[string]
    doubleArraySizeInst*: Option[int]
    strArrayFirstInst*: string
    strArrayLastInst*: string
    strArrayMidInst*: string
    doubleArrayLastInst*: Option[float64]
    intArrayMinInst*: Option[int]
    strArraySizeInst*: Option[int]
    intArrayFirstInst*: Option[int]
    doubleArrayFirstInst*: Option[float64]
    intArrayMidInst*: Option[int]
    doubleArrayMinInst*: Option[float64]
    intArrayInst*: seq[int]
    intArrayLastInst*: Option[int]

proc read*(_: typedesc[ExprCalcArrayOps], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprCalcArrayOps

proc doubleArray*(this: ExprCalcArrayOps): seq[float64]
proc intArraySize*(this: ExprCalcArrayOps): int
proc intArrayMax*(this: ExprCalcArrayOps): int
proc doubleArrayMax*(this: ExprCalcArrayOps): float64
proc strArrayMax*(this: ExprCalcArrayOps): string
proc strArrayMin*(this: ExprCalcArrayOps): string
proc doubleArrayMid*(this: ExprCalcArrayOps): float64
proc strArray*(this: ExprCalcArrayOps): seq[string]
proc doubleArraySize*(this: ExprCalcArrayOps): int
proc strArrayFirst*(this: ExprCalcArrayOps): string
proc strArrayLast*(this: ExprCalcArrayOps): string
proc strArrayMid*(this: ExprCalcArrayOps): string
proc doubleArrayLast*(this: ExprCalcArrayOps): float64
proc intArrayMin*(this: ExprCalcArrayOps): int
proc strArraySize*(this: ExprCalcArrayOps): int
proc intArrayFirst*(this: ExprCalcArrayOps): int
proc doubleArrayFirst*(this: ExprCalcArrayOps): float64
proc intArrayMid*(this: ExprCalcArrayOps): int
proc doubleArrayMin*(this: ExprCalcArrayOps): float64
proc intArray*(this: ExprCalcArrayOps): seq[int]
proc intArrayLast*(this: ExprCalcArrayOps): int

proc read*(_: typedesc[ExprCalcArrayOps], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprCalcArrayOps =
  template this: untyped = result
  this = new(ExprCalcArrayOps)
  let root = if root == nil: cast[ExprCalcArrayOps](this) else: cast[ExprCalcArrayOps](root)
  this.io = io
  this.root = root
  this.parent = parent


proc doubleArray(this: ExprCalcArrayOps): seq[float64] = 
  if this.doubleArrayInst.len != 0:
    return this.doubleArrayInst
  let doubleArrayInstExpr = seq[float64](@[float64(10.0), float64(25.0), float64(50.0), float64(100.0), float64(3.14159)])
  this.doubleArrayInst = doubleArrayInstExpr
  if this.doubleArrayInst.len != 0:
    return this.doubleArrayInst

proc intArraySize(this: ExprCalcArrayOps): int = 
  if isSome(this.intArraySizeInst):
    return get(this.intArraySizeInst)
  let intArraySizeInstExpr = int(len(this.intArray))
  this.intArraySizeInst = intArraySizeInstExpr
  if isSome(this.intArraySizeInst):
    return get(this.intArraySizeInst)

proc intArrayMax(this: ExprCalcArrayOps): int = 
  if isSome(this.intArrayMaxInst):
    return get(this.intArrayMaxInst)
  let intArrayMaxInstExpr = int(max(this.intArray))
  this.intArrayMaxInst = intArrayMaxInstExpr
  if isSome(this.intArrayMaxInst):
    return get(this.intArrayMaxInst)

proc doubleArrayMax(this: ExprCalcArrayOps): float64 = 
  if isSome(this.doubleArrayMaxInst):
    return get(this.doubleArrayMaxInst)
  let doubleArrayMaxInstExpr = float64(max(this.doubleArray))
  this.doubleArrayMaxInst = doubleArrayMaxInstExpr
  if isSome(this.doubleArrayMaxInst):
    return get(this.doubleArrayMaxInst)

proc strArrayMax(this: ExprCalcArrayOps): string = 
  if this.strArrayMaxInst.len != 0:
    return this.strArrayMaxInst
  let strArrayMaxInstExpr = string(max(this.strArray))
  this.strArrayMaxInst = strArrayMaxInstExpr
  if this.strArrayMaxInst.len != 0:
    return this.strArrayMaxInst

proc strArrayMin(this: ExprCalcArrayOps): string = 
  if this.strArrayMinInst.len != 0:
    return this.strArrayMinInst
  let strArrayMinInstExpr = string(min(this.strArray))
  this.strArrayMinInst = strArrayMinInstExpr
  if this.strArrayMinInst.len != 0:
    return this.strArrayMinInst

proc doubleArrayMid(this: ExprCalcArrayOps): float64 = 
  if isSome(this.doubleArrayMidInst):
    return get(this.doubleArrayMidInst)
  let doubleArrayMidInstExpr = float64(this.doubleArray[1])
  this.doubleArrayMidInst = doubleArrayMidInstExpr
  if isSome(this.doubleArrayMidInst):
    return get(this.doubleArrayMidInst)

proc strArray(this: ExprCalcArrayOps): seq[string] = 
  if this.strArrayInst.len != 0:
    return this.strArrayInst
  let strArrayInstExpr = seq[string](@[string("un"), string("deux"), string("trois"), string("quatre")])
  this.strArrayInst = strArrayInstExpr
  if this.strArrayInst.len != 0:
    return this.strArrayInst

proc doubleArraySize(this: ExprCalcArrayOps): int = 
  if isSome(this.doubleArraySizeInst):
    return get(this.doubleArraySizeInst)
  let doubleArraySizeInstExpr = int(len(this.doubleArray))
  this.doubleArraySizeInst = doubleArraySizeInstExpr
  if isSome(this.doubleArraySizeInst):
    return get(this.doubleArraySizeInst)

proc strArrayFirst(this: ExprCalcArrayOps): string = 
  if this.strArrayFirstInst.len != 0:
    return this.strArrayFirstInst
  let strArrayFirstInstExpr = string(this.strArray[0])
  this.strArrayFirstInst = strArrayFirstInstExpr
  if this.strArrayFirstInst.len != 0:
    return this.strArrayFirstInst

proc strArrayLast(this: ExprCalcArrayOps): string = 
  if this.strArrayLastInst.len != 0:
    return this.strArrayLastInst
  let strArrayLastInstExpr = string(this.strArray[^1])
  this.strArrayLastInst = strArrayLastInstExpr
  if this.strArrayLastInst.len != 0:
    return this.strArrayLastInst

proc strArrayMid(this: ExprCalcArrayOps): string = 
  if this.strArrayMidInst.len != 0:
    return this.strArrayMidInst
  let strArrayMidInstExpr = string(this.strArray[1])
  this.strArrayMidInst = strArrayMidInstExpr
  if this.strArrayMidInst.len != 0:
    return this.strArrayMidInst

proc doubleArrayLast(this: ExprCalcArrayOps): float64 = 
  if isSome(this.doubleArrayLastInst):
    return get(this.doubleArrayLastInst)
  let doubleArrayLastInstExpr = float64(this.doubleArray[^1])
  this.doubleArrayLastInst = doubleArrayLastInstExpr
  if isSome(this.doubleArrayLastInst):
    return get(this.doubleArrayLastInst)

proc intArrayMin(this: ExprCalcArrayOps): int = 
  if isSome(this.intArrayMinInst):
    return get(this.intArrayMinInst)
  let intArrayMinInstExpr = int(min(this.intArray))
  this.intArrayMinInst = intArrayMinInstExpr
  if isSome(this.intArrayMinInst):
    return get(this.intArrayMinInst)

proc strArraySize(this: ExprCalcArrayOps): int = 
  if isSome(this.strArraySizeInst):
    return get(this.strArraySizeInst)
  let strArraySizeInstExpr = int(len(this.strArray))
  this.strArraySizeInst = strArraySizeInstExpr
  if isSome(this.strArraySizeInst):
    return get(this.strArraySizeInst)

proc intArrayFirst(this: ExprCalcArrayOps): int = 
  if isSome(this.intArrayFirstInst):
    return get(this.intArrayFirstInst)
  let intArrayFirstInstExpr = int(this.intArray[0])
  this.intArrayFirstInst = intArrayFirstInstExpr
  if isSome(this.intArrayFirstInst):
    return get(this.intArrayFirstInst)

proc doubleArrayFirst(this: ExprCalcArrayOps): float64 = 
  if isSome(this.doubleArrayFirstInst):
    return get(this.doubleArrayFirstInst)
  let doubleArrayFirstInstExpr = float64(this.doubleArray[0])
  this.doubleArrayFirstInst = doubleArrayFirstInstExpr
  if isSome(this.doubleArrayFirstInst):
    return get(this.doubleArrayFirstInst)

proc intArrayMid(this: ExprCalcArrayOps): int = 
  if isSome(this.intArrayMidInst):
    return get(this.intArrayMidInst)
  let intArrayMidInstExpr = int(this.intArray[1])
  this.intArrayMidInst = intArrayMidInstExpr
  if isSome(this.intArrayMidInst):
    return get(this.intArrayMidInst)

proc doubleArrayMin(this: ExprCalcArrayOps): float64 = 
  if isSome(this.doubleArrayMinInst):
    return get(this.doubleArrayMinInst)
  let doubleArrayMinInstExpr = float64(min(this.doubleArray))
  this.doubleArrayMinInst = doubleArrayMinInstExpr
  if isSome(this.doubleArrayMinInst):
    return get(this.doubleArrayMinInst)

proc intArray(this: ExprCalcArrayOps): seq[int] = 
  if this.intArrayInst.len != 0:
    return this.intArrayInst
  let intArrayInstExpr = seq[int](@[int(10), int(25), int(50), int(100), int(200), int(500), int(1000)])
  this.intArrayInst = intArrayInstExpr
  if this.intArrayInst.len != 0:
    return this.intArrayInst

proc intArrayLast(this: ExprCalcArrayOps): int = 
  if isSome(this.intArrayLastInst):
    return get(this.intArrayLastInst)
  let intArrayLastInstExpr = int(this.intArray[^1])
  this.intArrayLastInst = intArrayLastInstExpr
  if isSome(this.intArrayLastInst):
    return get(this.intArrayLastInst)

proc fromFile*(_: typedesc[ExprCalcArrayOps], filename: string): ExprCalcArrayOps =
  ExprCalcArrayOps.read(newKaitaiFileStream(filename), nil, nil)


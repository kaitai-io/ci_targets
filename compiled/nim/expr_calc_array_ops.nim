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
  this.doubleArrayInst = seq[float64](@[float64(10.0), float64(25.0), float64(50.0), float64(100.0), float64(3.14159)])
  if this.doubleArrayInst.len != 0:
    return this.doubleArrayInst

proc intArraySize(this: ExprCalcArrayOps): int = 
  if isSome(this.intArraySizeInst):
    return get(this.intArraySizeInst)
  this.intArraySizeInst = int(len(this.intArray))
  if isSome(this.intArraySizeInst):
    return get(this.intArraySizeInst)

proc intArrayMax(this: ExprCalcArrayOps): int = 
  if isSome(this.intArrayMaxInst):
    return get(this.intArrayMaxInst)
  this.intArrayMaxInst = int(max(this.intArray))
  if isSome(this.intArrayMaxInst):
    return get(this.intArrayMaxInst)

proc doubleArrayMax(this: ExprCalcArrayOps): float64 = 
  if isSome(this.doubleArrayMaxInst):
    return get(this.doubleArrayMaxInst)
  this.doubleArrayMaxInst = float64(max(this.doubleArray))
  if isSome(this.doubleArrayMaxInst):
    return get(this.doubleArrayMaxInst)

proc strArrayMax(this: ExprCalcArrayOps): string = 
  if this.strArrayMaxInst.len != 0:
    return this.strArrayMaxInst
  this.strArrayMaxInst = string(max(this.strArray))
  if this.strArrayMaxInst.len != 0:
    return this.strArrayMaxInst

proc strArrayMin(this: ExprCalcArrayOps): string = 
  if this.strArrayMinInst.len != 0:
    return this.strArrayMinInst
  this.strArrayMinInst = string(min(this.strArray))
  if this.strArrayMinInst.len != 0:
    return this.strArrayMinInst

proc doubleArrayMid(this: ExprCalcArrayOps): float64 = 
  if isSome(this.doubleArrayMidInst):
    return get(this.doubleArrayMidInst)
  this.doubleArrayMidInst = float64(this.doubleArray[1])
  if isSome(this.doubleArrayMidInst):
    return get(this.doubleArrayMidInst)

proc strArray(this: ExprCalcArrayOps): seq[string] = 
  if this.strArrayInst.len != 0:
    return this.strArrayInst
  this.strArrayInst = seq[string](@[string("un"), string("deux"), string("trois"), string("quatre")])
  if this.strArrayInst.len != 0:
    return this.strArrayInst

proc doubleArraySize(this: ExprCalcArrayOps): int = 
  if isSome(this.doubleArraySizeInst):
    return get(this.doubleArraySizeInst)
  this.doubleArraySizeInst = int(len(this.doubleArray))
  if isSome(this.doubleArraySizeInst):
    return get(this.doubleArraySizeInst)

proc strArrayFirst(this: ExprCalcArrayOps): string = 
  if this.strArrayFirstInst.len != 0:
    return this.strArrayFirstInst
  this.strArrayFirstInst = string(this.strArray[0])
  if this.strArrayFirstInst.len != 0:
    return this.strArrayFirstInst

proc strArrayLast(this: ExprCalcArrayOps): string = 
  if this.strArrayLastInst.len != 0:
    return this.strArrayLastInst
  this.strArrayLastInst = string(this.strArray[^1])
  if this.strArrayLastInst.len != 0:
    return this.strArrayLastInst

proc strArrayMid(this: ExprCalcArrayOps): string = 
  if this.strArrayMidInst.len != 0:
    return this.strArrayMidInst
  this.strArrayMidInst = string(this.strArray[1])
  if this.strArrayMidInst.len != 0:
    return this.strArrayMidInst

proc doubleArrayLast(this: ExprCalcArrayOps): float64 = 
  if isSome(this.doubleArrayLastInst):
    return get(this.doubleArrayLastInst)
  this.doubleArrayLastInst = float64(this.doubleArray[^1])
  if isSome(this.doubleArrayLastInst):
    return get(this.doubleArrayLastInst)

proc intArrayMin(this: ExprCalcArrayOps): int = 
  if isSome(this.intArrayMinInst):
    return get(this.intArrayMinInst)
  this.intArrayMinInst = int(min(this.intArray))
  if isSome(this.intArrayMinInst):
    return get(this.intArrayMinInst)

proc strArraySize(this: ExprCalcArrayOps): int = 
  if isSome(this.strArraySizeInst):
    return get(this.strArraySizeInst)
  this.strArraySizeInst = int(len(this.strArray))
  if isSome(this.strArraySizeInst):
    return get(this.strArraySizeInst)

proc intArrayFirst(this: ExprCalcArrayOps): int = 
  if isSome(this.intArrayFirstInst):
    return get(this.intArrayFirstInst)
  this.intArrayFirstInst = int(this.intArray[0])
  if isSome(this.intArrayFirstInst):
    return get(this.intArrayFirstInst)

proc doubleArrayFirst(this: ExprCalcArrayOps): float64 = 
  if isSome(this.doubleArrayFirstInst):
    return get(this.doubleArrayFirstInst)
  this.doubleArrayFirstInst = float64(this.doubleArray[0])
  if isSome(this.doubleArrayFirstInst):
    return get(this.doubleArrayFirstInst)

proc intArrayMid(this: ExprCalcArrayOps): int = 
  if isSome(this.intArrayMidInst):
    return get(this.intArrayMidInst)
  this.intArrayMidInst = int(this.intArray[1])
  if isSome(this.intArrayMidInst):
    return get(this.intArrayMidInst)

proc doubleArrayMin(this: ExprCalcArrayOps): float64 = 
  if isSome(this.doubleArrayMinInst):
    return get(this.doubleArrayMinInst)
  this.doubleArrayMinInst = float64(min(this.doubleArray))
  if isSome(this.doubleArrayMinInst):
    return get(this.doubleArrayMinInst)

proc intArray(this: ExprCalcArrayOps): seq[int] = 
  if this.intArrayInst.len != 0:
    return this.intArrayInst
  this.intArrayInst = seq[int](@[int(10), int(25), int(50), int(100), int(200), int(500), int(1000)])
  if this.intArrayInst.len != 0:
    return this.intArrayInst

proc intArrayLast(this: ExprCalcArrayOps): int = 
  if isSome(this.intArrayLastInst):
    return get(this.intArrayLastInst)
  this.intArrayLastInst = int(this.intArray[^1])
  if isSome(this.intArrayLastInst):
    return get(this.intArrayLastInst)

proc fromFile*(_: typedesc[ExprCalcArrayOps], filename: string): ExprCalcArrayOps =
  ExprCalcArrayOps.read(newKaitaiFileStream(filename), nil, nil)


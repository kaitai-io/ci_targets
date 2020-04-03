import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ExprCalcArrayOps* = ref object of KaitaiStruct
    parent*: KaitaiStruct
    doubleArrayInst*: Option[seq[float64]]
    intArraySizeInst*: Option[int]
    intArrayMaxInst*: Option[int]
    doubleArrayMaxInst*: Option[float64]
    strArrayMaxInst*: Option[string]
    strArrayMinInst*: Option[string]
    doubleArrayMidInst*: Option[float64]
    strArrayInst*: Option[seq[string]]
    doubleArraySizeInst*: Option[int]
    strArrayFirstInst*: Option[string]
    strArrayLastInst*: Option[string]
    strArrayMidInst*: Option[string]
    doubleArrayLastInst*: Option[float64]
    intArrayMinInst*: Option[int]
    strArraySizeInst*: Option[int]
    intArrayFirstInst*: Option[int]
    doubleArrayFirstInst*: Option[float64]
    intArrayMidInst*: Option[int]
    doubleArrayMinInst*: Option[float64]
    intArrayInst*: Option[seq[int]]
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
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


proc doubleArray(this: ExprCalcArrayOps): seq[float64] = 
  if isSome(this.doubleArrayInst):
    return get(this.doubleArrayInst)
  this.doubleArrayInst = some(@[10.0, 25.0, 50.0, 100.0, 3.14159])
  return get(this.doubleArrayInst)

proc intArraySize(this: ExprCalcArrayOps): int = 
  if isSome(this.intArraySizeInst):
    return get(this.intArraySizeInst)
  this.intArraySizeInst = some(len(this.intArray))
  return get(this.intArraySizeInst)

proc intArrayMax(this: ExprCalcArrayOps): int = 
  if isSome(this.intArrayMaxInst):
    return get(this.intArrayMaxInst)
  this.intArrayMaxInst = some(max(this.intArray))
  return get(this.intArrayMaxInst)

proc doubleArrayMax(this: ExprCalcArrayOps): float64 = 
  if isSome(this.doubleArrayMaxInst):
    return get(this.doubleArrayMaxInst)
  this.doubleArrayMaxInst = some(max(this.doubleArray))
  return get(this.doubleArrayMaxInst)

proc strArrayMax(this: ExprCalcArrayOps): string = 
  if isSome(this.strArrayMaxInst):
    return get(this.strArrayMaxInst)
  this.strArrayMaxInst = some(max(this.strArray))
  return get(this.strArrayMaxInst)

proc strArrayMin(this: ExprCalcArrayOps): string = 
  if isSome(this.strArrayMinInst):
    return get(this.strArrayMinInst)
  this.strArrayMinInst = some(min(this.strArray))
  return get(this.strArrayMinInst)

proc doubleArrayMid(this: ExprCalcArrayOps): float64 = 
  if isSome(this.doubleArrayMidInst):
    return get(this.doubleArrayMidInst)
  this.doubleArrayMidInst = some(this.doubleArray[1])
  return get(this.doubleArrayMidInst)

proc strArray(this: ExprCalcArrayOps): seq[string] = 
  if isSome(this.strArrayInst):
    return get(this.strArrayInst)
  this.strArrayInst = some(@["un", "deux", "trois", "quatre"])
  return get(this.strArrayInst)

proc doubleArraySize(this: ExprCalcArrayOps): int = 
  if isSome(this.doubleArraySizeInst):
    return get(this.doubleArraySizeInst)
  this.doubleArraySizeInst = some(len(this.doubleArray))
  return get(this.doubleArraySizeInst)

proc strArrayFirst(this: ExprCalcArrayOps): string = 
  if isSome(this.strArrayFirstInst):
    return get(this.strArrayFirstInst)
  this.strArrayFirstInst = some(this.strArray[0])
  return get(this.strArrayFirstInst)

proc strArrayLast(this: ExprCalcArrayOps): string = 
  if isSome(this.strArrayLastInst):
    return get(this.strArrayLastInst)
  this.strArrayLastInst = some(this.strArray[^1])
  return get(this.strArrayLastInst)

proc strArrayMid(this: ExprCalcArrayOps): string = 
  if isSome(this.strArrayMidInst):
    return get(this.strArrayMidInst)
  this.strArrayMidInst = some(this.strArray[1])
  return get(this.strArrayMidInst)

proc doubleArrayLast(this: ExprCalcArrayOps): float64 = 
  if isSome(this.doubleArrayLastInst):
    return get(this.doubleArrayLastInst)
  this.doubleArrayLastInst = some(this.doubleArray[^1])
  return get(this.doubleArrayLastInst)

proc intArrayMin(this: ExprCalcArrayOps): int = 
  if isSome(this.intArrayMinInst):
    return get(this.intArrayMinInst)
  this.intArrayMinInst = some(min(this.intArray))
  return get(this.intArrayMinInst)

proc strArraySize(this: ExprCalcArrayOps): int = 
  if isSome(this.strArraySizeInst):
    return get(this.strArraySizeInst)
  this.strArraySizeInst = some(len(this.strArray))
  return get(this.strArraySizeInst)

proc intArrayFirst(this: ExprCalcArrayOps): int = 
  if isSome(this.intArrayFirstInst):
    return get(this.intArrayFirstInst)
  this.intArrayFirstInst = some(this.intArray[0])
  return get(this.intArrayFirstInst)

proc doubleArrayFirst(this: ExprCalcArrayOps): float64 = 
  if isSome(this.doubleArrayFirstInst):
    return get(this.doubleArrayFirstInst)
  this.doubleArrayFirstInst = some(this.doubleArray[0])
  return get(this.doubleArrayFirstInst)

proc intArrayMid(this: ExprCalcArrayOps): int = 
  if isSome(this.intArrayMidInst):
    return get(this.intArrayMidInst)
  this.intArrayMidInst = some(this.intArray[1])
  return get(this.intArrayMidInst)

proc doubleArrayMin(this: ExprCalcArrayOps): float64 = 
  if isSome(this.doubleArrayMinInst):
    return get(this.doubleArrayMinInst)
  this.doubleArrayMinInst = some(min(this.doubleArray))
  return get(this.doubleArrayMinInst)

proc intArray(this: ExprCalcArrayOps): seq[int] = 
  if isSome(this.intArrayInst):
    return get(this.intArrayInst)
  this.intArrayInst = some(@[10, 25, 50, 100, 200, 500, 1000])
  return get(this.intArrayInst)

proc intArrayLast(this: ExprCalcArrayOps): int = 
  if isSome(this.intArrayLastInst):
    return get(this.intArrayLastInst)
  this.intArrayLastInst = some(this.intArray[^1])
  return get(this.intArrayLastInst)

proc fromFile*(_: typedesc[ExprCalcArrayOps], filename: string): ExprCalcArrayOps =
  ExprCalcArrayOps.read(newKaitaiFileStream(filename), nil, nil)


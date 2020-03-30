import kaitai_struct_nim_runtime
import options

type
  ExprCalcArrayOps* = ref ExprCalcArrayOpsObj
  ExprCalcArrayOpsObj* = object
    io*: KaitaiStream
    root*: ExprCalcArrayOps
    parent*: ref RootObj
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

### ExprCalcArrayOps ###
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
proc doubleArray(this: ExprCalcArrayOps): seq[float64] = 
  if isSome(this.doubleArrayInst):
    return get(this.doubleArrayInst)
  let doubleArrayInst = @[10.0, 25.0, 50.0, 100.0, 3.14159].mapIt(float64(it))
  this.doubleArrayInst = some(doubleArrayInst)
  return get(this.doubleArrayInst)

proc intArraySize(this: ExprCalcArrayOps): int = 
  if isSome(this.intArraySizeInst):
    return get(this.intArraySizeInst)
  let intArraySizeInst = len(this.intArray)
  this.intArraySizeInst = some(intArraySizeInst)
  return get(this.intArraySizeInst)

proc intArrayMax(this: ExprCalcArrayOps): int = 
  if isSome(this.intArrayMaxInst):
    return get(this.intArrayMaxInst)
  let intArrayMaxInst = max(this.intArray)
  this.intArrayMaxInst = some(intArrayMaxInst)
  return get(this.intArrayMaxInst)

proc doubleArrayMax(this: ExprCalcArrayOps): float64 = 
  if isSome(this.doubleArrayMaxInst):
    return get(this.doubleArrayMaxInst)
  let doubleArrayMaxInst = max(this.doubleArray)
  this.doubleArrayMaxInst = some(doubleArrayMaxInst)
  return get(this.doubleArrayMaxInst)

proc strArrayMax(this: ExprCalcArrayOps): string = 
  if isSome(this.strArrayMaxInst):
    return get(this.strArrayMaxInst)
  let strArrayMaxInst = max(this.strArray)
  this.strArrayMaxInst = some(strArrayMaxInst)
  return get(this.strArrayMaxInst)

proc strArrayMin(this: ExprCalcArrayOps): string = 
  if isSome(this.strArrayMinInst):
    return get(this.strArrayMinInst)
  let strArrayMinInst = min(this.strArray)
  this.strArrayMinInst = some(strArrayMinInst)
  return get(this.strArrayMinInst)

proc doubleArrayMid(this: ExprCalcArrayOps): float64 = 
  if isSome(this.doubleArrayMidInst):
    return get(this.doubleArrayMidInst)
  let doubleArrayMidInst = this.doubleArray[1]
  this.doubleArrayMidInst = some(doubleArrayMidInst)
  return get(this.doubleArrayMidInst)

proc strArray(this: ExprCalcArrayOps): seq[string] = 
  if isSome(this.strArrayInst):
    return get(this.strArrayInst)
  let strArrayInst = @["un", "deux", "trois", "quatre"].mapIt(string(it))
  this.strArrayInst = some(strArrayInst)
  return get(this.strArrayInst)

proc doubleArraySize(this: ExprCalcArrayOps): int = 
  if isSome(this.doubleArraySizeInst):
    return get(this.doubleArraySizeInst)
  let doubleArraySizeInst = len(this.doubleArray)
  this.doubleArraySizeInst = some(doubleArraySizeInst)
  return get(this.doubleArraySizeInst)

proc strArrayFirst(this: ExprCalcArrayOps): string = 
  if isSome(this.strArrayFirstInst):
    return get(this.strArrayFirstInst)
  let strArrayFirstInst = this.strArray[0]
  this.strArrayFirstInst = some(strArrayFirstInst)
  return get(this.strArrayFirstInst)

proc strArrayLast(this: ExprCalcArrayOps): string = 
  if isSome(this.strArrayLastInst):
    return get(this.strArrayLastInst)
  let strArrayLastInst = this.strArray[^1]
  this.strArrayLastInst = some(strArrayLastInst)
  return get(this.strArrayLastInst)

proc strArrayMid(this: ExprCalcArrayOps): string = 
  if isSome(this.strArrayMidInst):
    return get(this.strArrayMidInst)
  let strArrayMidInst = this.strArray[1]
  this.strArrayMidInst = some(strArrayMidInst)
  return get(this.strArrayMidInst)

proc doubleArrayLast(this: ExprCalcArrayOps): float64 = 
  if isSome(this.doubleArrayLastInst):
    return get(this.doubleArrayLastInst)
  let doubleArrayLastInst = this.doubleArray[^1]
  this.doubleArrayLastInst = some(doubleArrayLastInst)
  return get(this.doubleArrayLastInst)

proc intArrayMin(this: ExprCalcArrayOps): int = 
  if isSome(this.intArrayMinInst):
    return get(this.intArrayMinInst)
  let intArrayMinInst = min(this.intArray)
  this.intArrayMinInst = some(intArrayMinInst)
  return get(this.intArrayMinInst)

proc strArraySize(this: ExprCalcArrayOps): int = 
  if isSome(this.strArraySizeInst):
    return get(this.strArraySizeInst)
  let strArraySizeInst = len(this.strArray)
  this.strArraySizeInst = some(strArraySizeInst)
  return get(this.strArraySizeInst)

proc intArrayFirst(this: ExprCalcArrayOps): int = 
  if isSome(this.intArrayFirstInst):
    return get(this.intArrayFirstInst)
  let intArrayFirstInst = this.intArray[0]
  this.intArrayFirstInst = some(intArrayFirstInst)
  return get(this.intArrayFirstInst)

proc doubleArrayFirst(this: ExprCalcArrayOps): float64 = 
  if isSome(this.doubleArrayFirstInst):
    return get(this.doubleArrayFirstInst)
  let doubleArrayFirstInst = this.doubleArray[0]
  this.doubleArrayFirstInst = some(doubleArrayFirstInst)
  return get(this.doubleArrayFirstInst)

proc intArrayMid(this: ExprCalcArrayOps): int = 
  if isSome(this.intArrayMidInst):
    return get(this.intArrayMidInst)
  let intArrayMidInst = this.intArray[1]
  this.intArrayMidInst = some(intArrayMidInst)
  return get(this.intArrayMidInst)

proc doubleArrayMin(this: ExprCalcArrayOps): float64 = 
  if isSome(this.doubleArrayMinInst):
    return get(this.doubleArrayMinInst)
  let doubleArrayMinInst = min(this.doubleArray)
  this.doubleArrayMinInst = some(doubleArrayMinInst)
  return get(this.doubleArrayMinInst)

proc intArray(this: ExprCalcArrayOps): seq[int] = 
  if isSome(this.intArrayInst):
    return get(this.intArrayInst)
  let intArrayInst = @[10, 25, 50, 100, 200, 500, 1000].mapIt(int(it))
  this.intArrayInst = some(intArrayInst)
  return get(this.intArrayInst)

proc intArrayLast(this: ExprCalcArrayOps): int = 
  if isSome(this.intArrayLastInst):
    return get(this.intArrayLastInst)
  let intArrayLastInst = this.intArray[^1]
  this.intArrayLastInst = some(intArrayLastInst)
  return get(this.intArrayLastInst)

proc read*(_: typedesc[ExprCalcArrayOps], io: KaitaiStream, root: ExprCalcArrayOps, parent: ref RootObj): ExprCalcArrayOps =
  let this = new(ExprCalcArrayOps)
  let root = if root == nil: cast[ExprCalcArrayOps](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[ExprCalcArrayOps], filename: string): ExprCalcArrayOps =
  ExprCalcArrayOps.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprCalcArrayOpsObj) =
  close(x.io)


import ../runtime/nim/kaitai_struct_nim_runtime
import options

{.experimental: "dotOperators".}

type
  ExprCalcArrayOps* = ref ExprCalcArrayOpsObj
  ExprCalcArrayOpsObj* = object
    io: KaitaiStream
    root*: ExprCalcArrayOps
    parent*: ref RootObj
    doubleArrayInst: proc(): seq[float64]
    intArraySizeInst: proc(): int
    intArrayMaxInst: proc(): int
    doubleArrayMaxInst: proc(): float64
    strArrayMaxInst: proc(): string
    strArrayMinInst: proc(): string
    doubleArrayMidInst: proc(): float64
    strArrayInst: proc(): seq[string]
    doubleArraySizeInst: proc(): int
    strArrayFirstInst: proc(): string
    strArrayLastInst: proc(): string
    strArrayMidInst: proc(): string
    doubleArrayLastInst: proc(): float64
    intArrayMinInst: proc(): int
    strArraySizeInst: proc(): int
    intArrayFirstInst: proc(): int
    doubleArrayFirstInst: proc(): float64
    intArrayMidInst: proc(): int
    doubleArrayMinInst: proc(): float64
    intArrayInst: proc(): seq[int]
    intArrayLastInst: proc(): int

# ExprCalcArrayOps
template `.`*(a: ExprCalcArrayOps, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[ExprCalcArrayOps], io: KaitaiStream, root: ExprCalcArrayOps, parent: ref RootObj): owned ExprCalcArrayOps =
  result = new(ExprCalcArrayOps)
  let root = if root == nil: cast[ExprCalcArrayOps](result) else: root
  result.io = io
  result.root = root
  result.parent = parent


  var doubleArrayVal: Option[seq[float64]]
  let doubleArray = proc(): seq[float64] =
    if isNone(doubleArrayVal):
      doubleArrayVal = some(seq[float64](@[10.0, 25.0, 50.0, 100.0, 3.14159].mapIt(float64(it))))
    get(doubleArrayVal)
  result.doubleArrayInst = doubleArray
  var intArraySizeVal: Option[int]
  let intArraySize = proc(): int =
    if isNone(intArraySizeVal):
      intArraySizeVal = some(int(len(intArray)))
    get(intArraySizeVal)
  result.intArraySizeInst = intArraySize
  var intArrayMaxVal: Option[int]
  let intArrayMax = proc(): int =
    if isNone(intArrayMaxVal):
      intArrayMaxVal = some(int(max(intArray)))
    get(intArrayMaxVal)
  result.intArrayMaxInst = intArrayMax
  var doubleArrayMaxVal: Option[float64]
  let doubleArrayMax = proc(): float64 =
    if isNone(doubleArrayMaxVal):
      doubleArrayMaxVal = some(float64(max(doubleArray)))
    get(doubleArrayMaxVal)
  result.doubleArrayMaxInst = doubleArrayMax
  var strArrayMaxVal: Option[string]
  let strArrayMax = proc(): string =
    if isNone(strArrayMaxVal):
      strArrayMaxVal = some(string(max(strArray)))
    get(strArrayMaxVal)
  result.strArrayMaxInst = strArrayMax
  var strArrayMinVal: Option[string]
  let strArrayMin = proc(): string =
    if isNone(strArrayMinVal):
      strArrayMinVal = some(string(min(strArray)))
    get(strArrayMinVal)
  result.strArrayMinInst = strArrayMin
  var doubleArrayMidVal: Option[float64]
  let doubleArrayMid = proc(): float64 =
    if isNone(doubleArrayMidVal):
      doubleArrayMidVal = some(float64(doubleArray[1]))
    get(doubleArrayMidVal)
  result.doubleArrayMidInst = doubleArrayMid
  var strArrayVal: Option[seq[string]]
  let strArray = proc(): seq[string] =
    if isNone(strArrayVal):
      strArrayVal = some(seq[string](@["un", "deux", "trois", "quatre"].mapIt(string(it))))
    get(strArrayVal)
  result.strArrayInst = strArray
  var doubleArraySizeVal: Option[int]
  let doubleArraySize = proc(): int =
    if isNone(doubleArraySizeVal):
      doubleArraySizeVal = some(int(len(doubleArray)))
    get(doubleArraySizeVal)
  result.doubleArraySizeInst = doubleArraySize
  var strArrayFirstVal: Option[string]
  let strArrayFirst = proc(): string =
    if isNone(strArrayFirstVal):
      strArrayFirstVal = some(string(strArray[0]))
    get(strArrayFirstVal)
  result.strArrayFirstInst = strArrayFirst
  var strArrayLastVal: Option[string]
  let strArrayLast = proc(): string =
    if isNone(strArrayLastVal):
      strArrayLastVal = some(string(strArray[^1]))
    get(strArrayLastVal)
  result.strArrayLastInst = strArrayLast
  var strArrayMidVal: Option[string]
  let strArrayMid = proc(): string =
    if isNone(strArrayMidVal):
      strArrayMidVal = some(string(strArray[1]))
    get(strArrayMidVal)
  result.strArrayMidInst = strArrayMid
  var doubleArrayLastVal: Option[float64]
  let doubleArrayLast = proc(): float64 =
    if isNone(doubleArrayLastVal):
      doubleArrayLastVal = some(float64(doubleArray[^1]))
    get(doubleArrayLastVal)
  result.doubleArrayLastInst = doubleArrayLast
  var intArrayMinVal: Option[int]
  let intArrayMin = proc(): int =
    if isNone(intArrayMinVal):
      intArrayMinVal = some(int(min(intArray)))
    get(intArrayMinVal)
  result.intArrayMinInst = intArrayMin
  var strArraySizeVal: Option[int]
  let strArraySize = proc(): int =
    if isNone(strArraySizeVal):
      strArraySizeVal = some(int(len(strArray)))
    get(strArraySizeVal)
  result.strArraySizeInst = strArraySize
  var intArrayFirstVal: Option[int]
  let intArrayFirst = proc(): int =
    if isNone(intArrayFirstVal):
      intArrayFirstVal = some(int(intArray[0]))
    get(intArrayFirstVal)
  result.intArrayFirstInst = intArrayFirst
  var doubleArrayFirstVal: Option[float64]
  let doubleArrayFirst = proc(): float64 =
    if isNone(doubleArrayFirstVal):
      doubleArrayFirstVal = some(float64(doubleArray[0]))
    get(doubleArrayFirstVal)
  result.doubleArrayFirstInst = doubleArrayFirst
  var intArrayMidVal: Option[int]
  let intArrayMid = proc(): int =
    if isNone(intArrayMidVal):
      intArrayMidVal = some(int(intArray[1]))
    get(intArrayMidVal)
  result.intArrayMidInst = intArrayMid
  var doubleArrayMinVal: Option[float64]
  let doubleArrayMin = proc(): float64 =
    if isNone(doubleArrayMinVal):
      doubleArrayMinVal = some(float64(min(doubleArray)))
    get(doubleArrayMinVal)
  result.doubleArrayMinInst = doubleArrayMin
  var intArrayVal: Option[seq[int]]
  let intArray = proc(): seq[int] =
    if isNone(intArrayVal):
      intArrayVal = some(seq[int](@[10, 25, 50, 100, 200, 500, 1000].mapIt(int(it))))
    get(intArrayVal)
  result.intArrayInst = intArray
  var intArrayLastVal: Option[int]
  let intArrayLast = proc(): int =
    if isNone(intArrayLastVal):
      intArrayLastVal = some(int(intArray[^1]))
    get(intArrayLastVal)
  result.intArrayLastInst = intArrayLast

proc fromFile*(_: typedesc[ExprCalcArrayOps], filename: string): owned ExprCalcArrayOps =
  ExprCalcArrayOps.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ExprCalcArrayOpsObj) =
  close(x.io)


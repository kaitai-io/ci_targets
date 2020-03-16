import kaitai_struct_nim_runtime
import options

{.experimental: "dotOperators".}

type
  FloatToI* = ref FloatToIObj
  FloatToIObj* = object
    io: KaitaiStream
    root*: FloatToI
    parent*: ref RootObj
    singleValue*: float32
    doubleValue*: float64
    float2IInst: proc(): int
    calcFloat1Inst: proc(): float64
    float4IInst: proc(): int
    calcFloat3Inst: proc(): float64
    calcFloat2Inst: proc(): float64
    float1IInst: proc(): int
    doubleIInst: proc(): int
    float3IInst: proc(): int
    singleIInst: proc(): int
    calcFloat4Inst: proc(): float64

# FloatToI
template `.`*(a: FloatToI, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[FloatToI], io: KaitaiStream, root: FloatToI, parent: ref RootObj): owned FloatToI =
  result = new(FloatToI)
  let root = if root == nil: cast[FloatToI](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let singleValue = readF4le(io)
  result.singleValue = singleValue
  let doubleValue = readF8le(io)
  result.doubleValue = doubleValue

  var float2IVal: Option[int]
  let float2I = proc(): int =
    if isNone(float2IVal):
      float2IVal = some(int(int(calcFloat2)))
    get(float2IVal)
  result.float2IInst = float2I
  var calcFloat1Val: Option[float64]
  let calcFloat1 = proc(): float64 =
    if isNone(calcFloat1Val):
      calcFloat1Val = some(float64(1.234))
    get(calcFloat1Val)
  result.calcFloat1Inst = calcFloat1
  var float4IVal: Option[int]
  let float4I = proc(): int =
    if isNone(float4IVal):
      float4IVal = some(int(int(calcFloat4)))
    get(float4IVal)
  result.float4IInst = float4I
  var calcFloat3Val: Option[float64]
  let calcFloat3 = proc(): float64 =
    if isNone(calcFloat3Val):
      calcFloat3Val = some(float64(1.9))
    get(calcFloat3Val)
  result.calcFloat3Inst = calcFloat3
  var calcFloat2Val: Option[float64]
  let calcFloat2 = proc(): float64 =
    if isNone(calcFloat2Val):
      calcFloat2Val = some(float64(1.5))
    get(calcFloat2Val)
  result.calcFloat2Inst = calcFloat2
  var float1IVal: Option[int]
  let float1I = proc(): int =
    if isNone(float1IVal):
      float1IVal = some(int(int(calcFloat1)))
    get(float1IVal)
  result.float1IInst = float1I
  var doubleIVal: Option[int]
  let doubleI = proc(): int =
    if isNone(doubleIVal):
      doubleIVal = some(int(int(doubleValue)))
    get(doubleIVal)
  result.doubleIInst = doubleI
  var float3IVal: Option[int]
  let float3I = proc(): int =
    if isNone(float3IVal):
      float3IVal = some(int(int(calcFloat3)))
    get(float3IVal)
  result.float3IInst = float3I
  var singleIVal: Option[int]
  let singleI = proc(): int =
    if isNone(singleIVal):
      singleIVal = some(int(int(singleValue)))
    get(singleIVal)
  result.singleIInst = singleI
  var calcFloat4Val: Option[float64]
  let calcFloat4 = proc(): float64 =
    if isNone(calcFloat4Val):
      calcFloat4Val = some(float64(-2.7))
    get(calcFloat4Val)
  result.calcFloat4Inst = calcFloat4

proc fromFile*(_: typedesc[FloatToI], filename: string): owned FloatToI =
  FloatToI.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var FloatToIObj) =
  close(x.io)


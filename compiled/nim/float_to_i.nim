import ../../runtime/nim/kaitai
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

  result.singleValue = readF4le(io)
  result.doubleValue = readF8le(io)

  let shadow = result
  var float2I: Option[int]
  result.float2IInst = proc(): int =
    if isNone(float2I):
      float2I = some(int(int(shadow.calcFloat2)))
    get(float2I)
  var calcFloat1: Option[float64]
  result.calcFloat1Inst = proc(): float64 =
    if isNone(calcFloat1):
      calcFloat1 = some(float64(1.234))
    get(calcFloat1)
  var float4I: Option[int]
  result.float4IInst = proc(): int =
    if isNone(float4I):
      float4I = some(int(int(shadow.calcFloat4)))
    get(float4I)
  var calcFloat3: Option[float64]
  result.calcFloat3Inst = proc(): float64 =
    if isNone(calcFloat3):
      calcFloat3 = some(float64(1.9))
    get(calcFloat3)
  var calcFloat2: Option[float64]
  result.calcFloat2Inst = proc(): float64 =
    if isNone(calcFloat2):
      calcFloat2 = some(float64(1.5))
    get(calcFloat2)
  var float1I: Option[int]
  result.float1IInst = proc(): int =
    if isNone(float1I):
      float1I = some(int(int(shadow.calcFloat1)))
    get(float1I)
  var doubleI: Option[int]
  result.doubleIInst = proc(): int =
    if isNone(doubleI):
      doubleI = some(int(int(shadow.doubleValue)))
    get(doubleI)
  var float3I: Option[int]
  result.float3IInst = proc(): int =
    if isNone(float3I):
      float3I = some(int(int(shadow.calcFloat3)))
    get(float3I)
  var singleI: Option[int]
  result.singleIInst = proc(): int =
    if isNone(singleI):
      singleI = some(int(int(shadow.singleValue)))
    get(singleI)
  var calcFloat4: Option[float64]
  result.calcFloat4Inst = proc(): float64 =
    if isNone(calcFloat4):
      calcFloat4 = some(float64(-2.7))
    get(calcFloat4)

proc fromFile*(_: typedesc[FloatToI], filename: string): owned FloatToI =
  FloatToI.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var FloatToIObj) =
  close(x.io)


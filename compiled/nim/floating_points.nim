import kaitai_struct_nim_runtime
import options

{.experimental: "dotOperators".}

type
  FloatingPoints* = ref FloatingPointsObj
  FloatingPointsObj* = object
    io: KaitaiStream
    root*: FloatingPoints
    parent*: ref RootObj
    singleValue*: float32
    doubleValue*: float64
    singleValueBe*: float32
    doubleValueBe*: float64
    approximateValue*: float32
    singleValuePlusIntInst: proc(): float64
    singleValuePlusFloatInst: proc(): float64
    doubleValuePlusFloatInst: proc(): float64

# FloatingPoints
template `.`*(a: FloatingPoints, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[FloatingPoints], io: KaitaiStream, root: FloatingPoints, parent: ref RootObj): owned FloatingPoints =
  result = new(FloatingPoints)
  let root = if root == nil: cast[FloatingPoints](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let singleValue = readF4le(io)
  result.singleValue = singleValue
  let doubleValue = readF8le(io)
  result.doubleValue = doubleValue
  let singleValueBe = readF4be(io)
  result.singleValueBe = singleValueBe
  let doubleValueBe = readF8be(io)
  result.doubleValueBe = doubleValueBe
  let approximateValue = readF4le(io)
  result.approximateValue = approximateValue

  var singleValuePlusIntVal: Option[float64]
  let singleValuePlusInt = proc(): float64 =
    if isNone(singleValuePlusIntVal):
      singleValuePlusIntVal = some(float64((singleValue + 1)))
    get(singleValuePlusIntVal)
  result.singleValuePlusIntInst = singleValuePlusInt
  var singleValuePlusFloatVal: Option[float64]
  let singleValuePlusFloat = proc(): float64 =
    if isNone(singleValuePlusFloatVal):
      singleValuePlusFloatVal = some(float64((singleValue + 0.5)))
    get(singleValuePlusFloatVal)
  result.singleValuePlusFloatInst = singleValuePlusFloat
  var doubleValuePlusFloatVal: Option[float64]
  let doubleValuePlusFloat = proc(): float64 =
    if isNone(doubleValuePlusFloatVal):
      doubleValuePlusFloatVal = some(float64((doubleValue + 0.05)))
    get(doubleValuePlusFloatVal)
  result.doubleValuePlusFloatInst = doubleValuePlusFloat

proc fromFile*(_: typedesc[FloatingPoints], filename: string): owned FloatingPoints =
  FloatingPoints.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var FloatingPointsObj) =
  close(x.io)


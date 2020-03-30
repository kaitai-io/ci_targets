import kaitai_struct_nim_runtime
import options

type
  FloatingPoints* = ref FloatingPointsObj
  FloatingPointsObj* = object
    singleValue*: float32
    doubleValue*: float64
    singleValueBe*: float32
    doubleValueBe*: float64
    approximateValue*: float32
    io*: KaitaiStream
    root*: FloatingPoints
    parent*: ref RootObj
    singleValuePlusIntInst*: Option[float64]
    singleValuePlusFloatInst*: Option[float64]
    doubleValuePlusFloatInst*: Option[float64]

## FloatingPoints
proc singleValuePlusInt*(this: FloatingPoints): float64
proc singleValuePlusFloat*(this: FloatingPoints): float64
proc doubleValuePlusFloat*(this: FloatingPoints): float64
proc singleValuePlusInt(this: FloatingPoints): float64 = 
  if isSome(this.singleValuePlusIntInst):
    return get(this.singleValuePlusIntInst)
  this.singleValuePlusIntInst = some((this.singleValue + 1))
  return get(this.singleValuePlusIntInst)

proc singleValuePlusFloat(this: FloatingPoints): float64 = 
  if isSome(this.singleValuePlusFloatInst):
    return get(this.singleValuePlusFloatInst)
  this.singleValuePlusFloatInst = some((this.singleValue + 0.5))
  return get(this.singleValuePlusFloatInst)

proc doubleValuePlusFloat(this: FloatingPoints): float64 = 
  if isSome(this.doubleValuePlusFloatInst):
    return get(this.doubleValuePlusFloatInst)
  this.doubleValuePlusFloatInst = some((this.doubleValue + 0.05))
  return get(this.doubleValuePlusFloatInst)

proc read*(_: typedesc[FloatingPoints], io: KaitaiStream, root: FloatingPoints, parent: ref RootObj): FloatingPoints =
  let this = new(FloatingPoints)
  let root = if root == nil: cast[FloatingPoints](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.singleValue = this.io.readF4le()
  this.doubleValue = this.io.readF8le()
  this.singleValueBe = this.io.readF4be()
  this.doubleValueBe = this.io.readF8be()
  this.approximateValue = this.io.readF4le()
  result = this

proc fromFile*(_: typedesc[FloatingPoints], filename: string): FloatingPoints =
  FloatingPoints.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var FloatingPointsObj) =
  close(x.io)


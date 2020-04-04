import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  FloatingPoints* = ref object of KaitaiStruct
    singleValue*: float32
    doubleValue*: float64
    singleValueBe*: float32
    doubleValueBe*: float64
    approximateValue*: float32
    parent*: KaitaiStruct
    singleValuePlusIntInst*: Option[float64]
    singleValuePlusFloatInst*: Option[float64]
    doubleValuePlusFloatInst*: Option[float64]

proc read*(_: typedesc[FloatingPoints], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): FloatingPoints

proc singleValuePlusInt*(this: FloatingPoints): float64
proc singleValuePlusFloat*(this: FloatingPoints): float64
proc doubleValuePlusFloat*(this: FloatingPoints): float64

proc read*(_: typedesc[FloatingPoints], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): FloatingPoints =
  template this: untyped = result
  this = new(FloatingPoints)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.singleValue = this.io.readF4le()
  this.doubleValue = this.io.readF8le()
  this.singleValueBe = this.io.readF4be()
  this.doubleValueBe = this.io.readF8be()
  this.approximateValue = this.io.readF4le()

proc singleValuePlusInt(this: FloatingPoints): float64 = 
  if isSome(this.singleValuePlusIntInst):
    return get(this.singleValuePlusIntInst)
  this.singleValuePlusIntInst = some((this.singleValue + 1))
  if isSome(this.singleValuePlusIntInst):
    return get(this.singleValuePlusIntInst)

proc singleValuePlusFloat(this: FloatingPoints): float64 = 
  if isSome(this.singleValuePlusFloatInst):
    return get(this.singleValuePlusFloatInst)
  this.singleValuePlusFloatInst = some((this.singleValue + 0.5))
  if isSome(this.singleValuePlusFloatInst):
    return get(this.singleValuePlusFloatInst)

proc doubleValuePlusFloat(this: FloatingPoints): float64 = 
  if isSome(this.doubleValuePlusFloatInst):
    return get(this.doubleValuePlusFloatInst)
  this.doubleValuePlusFloatInst = some((this.doubleValue + 0.05))
  if isSome(this.doubleValuePlusFloatInst):
    return get(this.doubleValuePlusFloatInst)

proc fromFile*(_: typedesc[FloatingPoints], filename: string): FloatingPoints =
  FloatingPoints.read(newKaitaiFileStream(filename), nil, nil)


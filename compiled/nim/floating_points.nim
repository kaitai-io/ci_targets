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
  let root = if root == nil: cast[FloatingPoints](this) else: cast[FloatingPoints](root)
  this.io = io
  this.root = root
  this.parent = parent

  let singleValueExpr = this.io.readF4le()
  this.singleValue = singleValueExpr
  let doubleValueExpr = this.io.readF8le()
  this.doubleValue = doubleValueExpr
  let singleValueBeExpr = this.io.readF4be()
  this.singleValueBe = singleValueBeExpr
  let doubleValueBeExpr = this.io.readF8be()
  this.doubleValueBe = doubleValueBeExpr
  let approximateValueExpr = this.io.readF4le()
  this.approximateValue = approximateValueExpr

proc singleValuePlusInt(this: FloatingPoints): float64 = 
  if isSome(this.singleValuePlusIntInst):
    return get(this.singleValuePlusIntInst)
  let singleValuePlusIntInstExpr = float64((this.singleValue + 1))
  this.singleValuePlusIntInst = singleValuePlusIntInstExpr
  if isSome(this.singleValuePlusIntInst):
    return get(this.singleValuePlusIntInst)

proc singleValuePlusFloat(this: FloatingPoints): float64 = 
  if isSome(this.singleValuePlusFloatInst):
    return get(this.singleValuePlusFloatInst)
  let singleValuePlusFloatInstExpr = float64((this.singleValue + 0.5))
  this.singleValuePlusFloatInst = singleValuePlusFloatInstExpr
  if isSome(this.singleValuePlusFloatInst):
    return get(this.singleValuePlusFloatInst)

proc doubleValuePlusFloat(this: FloatingPoints): float64 = 
  if isSome(this.doubleValuePlusFloatInst):
    return get(this.doubleValuePlusFloatInst)
  let doubleValuePlusFloatInstExpr = float64((this.doubleValue + 0.05))
  this.doubleValuePlusFloatInst = doubleValuePlusFloatInstExpr
  if isSome(this.doubleValuePlusFloatInst):
    return get(this.doubleValuePlusFloatInst)

proc fromFile*(_: typedesc[FloatingPoints], filename: string): FloatingPoints =
  FloatingPoints.read(newKaitaiFileStream(filename), nil, nil)


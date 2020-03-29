import kaitai_struct_nim_runtime

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

### FloatingPoints ###
proc read*(_: typedesc[FloatingPoints], io: KaitaiStream, root: FloatingPoints, parent: ref RootObj): FloatingPoints =
  result = new(FloatingPoints)
  let root = if root == nil: cast[FloatingPoints](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let singleValue = io.readF4le()
  result.singleValue = singleValue
  let doubleValue = io.readF8le()
  result.doubleValue = doubleValue
  let singleValueBe = io.readF4be()
  result.singleValueBe = singleValueBe
  let doubleValueBe = io.readF8be()
  result.doubleValueBe = doubleValueBe
  let approximateValue = io.readF4le()
  result.approximateValue = approximateValue

proc fromFile*(_: typedesc[FloatingPoints], filename: string): FloatingPoints =
  FloatingPoints.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var FloatingPointsObj) =
  close(x.io)


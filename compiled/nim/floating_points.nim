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
  result.singleValue = result.io.readF4le()
  result.doubleValue = result.io.readF8le()
  result.singleValueBe = result.io.readF4be()
  result.doubleValueBe = result.io.readF8be()
  result.approximateValue = result.io.readF4le()

proc fromFile*(_: typedesc[FloatingPoints], filename: string): FloatingPoints =
  FloatingPoints.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var FloatingPointsObj) =
  close(x.io)


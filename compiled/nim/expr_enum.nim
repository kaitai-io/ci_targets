import kaitai_struct_nim_runtime
import options

{.experimental: "dotOperators".}

type
  ExprEnum* = ref ExprEnumObj
  ExprEnumObj* = object
    io: KaitaiStream
    root*: ExprEnum
    parent*: ref RootObj
    one*: uint8
    constDogInst: proc(): Animal
    derivedBoomInst: proc(): Animal
    derivedDogInst: proc(): Animal

# ExprEnum
template `.`*(a: ExprEnum, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[ExprEnum], io: KaitaiStream, root: ExprEnum, parent: ref RootObj): owned ExprEnum =
  result = new(ExprEnum)
  let root = if root == nil: cast[ExprEnum](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let one = readU1(io)
  result.one = one

  var constDogVal: Option[Animal]
  let constDog = proc(): Animal =
    if isNone(constDogVal):
      constDogVal = some(Animal())
    get(constDogVal)
  result.constDogInst = constDog
  var derivedBoomVal: Option[Animal]
  let derivedBoom = proc(): Animal =
    if isNone(derivedBoomVal):
      derivedBoomVal = some(Animal())
    get(derivedBoomVal)
  result.derivedBoomInst = derivedBoom
  var derivedDogVal: Option[Animal]
  let derivedDog = proc(): Animal =
    if isNone(derivedDogVal):
      derivedDogVal = some(Animal())
    get(derivedDogVal)
  result.derivedDogInst = derivedDog

proc fromFile*(_: typedesc[ExprEnum], filename: string): owned ExprEnum =
  ExprEnum.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ExprEnumObj) =
  close(x.io)


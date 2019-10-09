import ../../runtime/nim/kaitai
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

  result.one = readU1(io)

proc fromFile*(_: typedesc[ExprEnum], filename: string): owned ExprEnum =
  ExprEnum.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ExprEnumObj) =
  close(x.io)


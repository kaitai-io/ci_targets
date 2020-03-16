import ../runtime/nim/kaitai_struct_nim_runtime
import options

{.experimental: "dotOperators".}

type
  ComplexSubtype* = ref ComplexSubtypeObj
  ComplexSubtypeObj* = object
    io: KaitaiStream
    root*: Docstrings
    parent*: ref RootObj
  Docstrings* = ref DocstringsObj
  DocstringsObj* = object
    io: KaitaiStream
    root*: Docstrings
    parent*: ref RootObj
    one*: uint8
    twoInst: proc(): uint8
    threeInst: proc(): int8

# ComplexSubtype
proc read*(_: typedesc[ComplexSubtype], io: KaitaiStream, root: Docstrings, parent: ref RootObj): owned ComplexSubtype =
  result = new(ComplexSubtype)
  let root = if root == nil: cast[Docstrings](result) else: root
  result.io = io
  result.root = root
  result.parent = parent



proc fromFile*(_: typedesc[ComplexSubtype], filename: string): owned ComplexSubtype =
  ComplexSubtype.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ComplexSubtypeObj) =
  close(x.io)

# Docstrings
template `.`*(a: Docstrings, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[Docstrings], io: KaitaiStream, root: Docstrings, parent: ref RootObj): owned Docstrings =
  result = new(Docstrings)
  let root = if root == nil: cast[Docstrings](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let one = readU1(io)
  result.one = one

  var twoVal: Option[uint8]
  let two = proc(): uint8 =
    if isNone(twoVal):
      twoVal = readU1(io)
    get(twoVal)
  result.twoInst = two
  var threeVal: Option[int8]
  let three = proc(): int8 =
    if isNone(threeVal):
      threeVal = some(int8(66))
    get(threeVal)
  result.threeInst = three

proc fromFile*(_: typedesc[Docstrings], filename: string): owned Docstrings =
  Docstrings.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var DocstringsObj) =
  close(x.io)


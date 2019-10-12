import ../../runtime/nim/kaitai
import options

{.experimental: "dotOperators".}

type
  Multi* = ref MultiObj
  MultiObj* = object
    io: KaitaiStream
    root*: MultipleUse
    parent*: ref RootObj
    value*: int32
  Type1* = ref Type1Obj
  Type1Obj* = object
    io: KaitaiStream
    root*: MultipleUse
    parent*: MultipleUse
    firstUse*: Multi
  Type2* = ref Type2Obj
  Type2Obj* = object
    io: KaitaiStream
    root*: MultipleUse
    parent*: MultipleUse
    secondUseInst: proc(): Multi
  MultipleUse* = ref MultipleUseObj
  MultipleUseObj* = object
    io: KaitaiStream
    root*: MultipleUse
    parent*: ref RootObj
    t1*: Type1
    t2*: Type2

# Multi
proc read*(_: typedesc[Multi], io: KaitaiStream, root: MultipleUse, parent: ref RootObj): owned Multi =
  result = new(Multi)
  let root = if root == nil: cast[MultipleUse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.value = readS4le(io)


proc fromFile*(_: typedesc[Multi], filename: string): owned Multi =
  Multi.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var MultiObj) =
  close(x.io)

# Type1
proc read*(_: typedesc[Type1], io: KaitaiStream, root: MultipleUse, parent: MultipleUse): owned Type1 =
  result = new(Type1)
  let root = if root == nil: cast[MultipleUse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.firstUse = Multi.read(io, root, result)


proc fromFile*(_: typedesc[Type1], filename: string): owned Type1 =
  Type1.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var Type1Obj) =
  close(x.io)

# Type2
template `.`*(a: Type2, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[Type2], io: KaitaiStream, root: MultipleUse, parent: MultipleUse): owned Type2 =
  result = new(Type2)
  let root = if root == nil: cast[MultipleUse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent


  let shadow = result
  var secondUse: Option[Multi]
  result.secondUseInst = proc(): Multi =
    if isNone(secondUse):
      secondUse = Multi.read(io, root, shadow)
    get(secondUse)

proc fromFile*(_: typedesc[Type2], filename: string): owned Type2 =
  Type2.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var Type2Obj) =
  close(x.io)

# MultipleUse
proc read*(_: typedesc[MultipleUse], io: KaitaiStream, root: MultipleUse, parent: ref RootObj): owned MultipleUse =
  result = new(MultipleUse)
  let root = if root == nil: cast[MultipleUse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.t1 = Type1.read(io, root, result)
  result.t2 = Type2.read(io, root, result)


proc fromFile*(_: typedesc[MultipleUse], filename: string): owned MultipleUse =
  MultipleUse.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var MultipleUseObj) =
  close(x.io)


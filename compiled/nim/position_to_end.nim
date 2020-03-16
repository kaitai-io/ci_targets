import kaitai_struct_nim_runtime
import options

{.experimental: "dotOperators".}

type
  IndexObj* = ref IndexObjObj
  IndexObjObj* = object
    io: KaitaiStream
    root*: PositionToEnd
    parent*: PositionToEnd
    foo*: uint32
    bar*: uint32
  PositionToEnd* = ref PositionToEndObj
  PositionToEndObj* = object
    io: KaitaiStream
    root*: PositionToEnd
    parent*: ref RootObj
    indexInst: proc(): IndexObj

# IndexObj
proc read*(_: typedesc[IndexObj], io: KaitaiStream, root: PositionToEnd, parent: PositionToEnd): owned IndexObj =
  result = new(IndexObj)
  let root = if root == nil: cast[PositionToEnd](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let foo = readU4le(io)
  result.foo = foo
  let bar = readU4le(io)
  result.bar = bar


proc fromFile*(_: typedesc[IndexObj], filename: string): owned IndexObj =
  IndexObj.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var IndexObjObj) =
  close(x.io)

# PositionToEnd
template `.`*(a: PositionToEnd, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[PositionToEnd], io: KaitaiStream, root: PositionToEnd, parent: ref RootObj): owned PositionToEnd =
  result = new(PositionToEnd)
  let root = if root == nil: cast[PositionToEnd](result) else: root
  result.io = io
  result.root = root
  result.parent = parent


  var indexVal: Option[IndexObj]
  let index = proc(): IndexObj =
    if isNone(indexVal):
      indexVal = IndexObj.read(io, root, result)
    get(indexVal)
  result.indexInst = index

proc fromFile*(_: typedesc[PositionToEnd], filename: string): owned PositionToEnd =
  PositionToEnd.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var PositionToEndObj) =
  close(x.io)


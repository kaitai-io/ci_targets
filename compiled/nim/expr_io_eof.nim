import ../../runtime/nim/kaitai
import options

{.experimental: "dotOperators".}

type
  OneOrTwo* = ref OneOrTwoObj
  OneOrTwoObj* = object
    io: KaitaiStream
    root*: ExprIoEof
    parent*: ExprIoEof
    one*: uint32
    two*: uint32
    reflectEofInst: proc(): bool
  ExprIoEof* = ref ExprIoEofObj
  ExprIoEofObj* = object
    io: KaitaiStream
    root*: ExprIoEof
    parent*: ref RootObj
    substream1*: OneOrTwo
    substream2*: OneOrTwo

# OneOrTwo
template `.`*(a: OneOrTwo, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[OneOrTwo], io: KaitaiStream, root: ExprIoEof, parent: ExprIoEof): owned OneOrTwo =
  result = new(OneOrTwo)
  let root = if root == nil: cast[ExprIoEof](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.one = readU4le(io)
  result.two = readU4le(io)

proc fromFile*(_: typedesc[OneOrTwo], filename: string): owned OneOrTwo =
  OneOrTwo.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var OneOrTwoObj) =
  close(x.io)

# ExprIoEof
proc read*(_: typedesc[ExprIoEof], io: KaitaiStream, root: ExprIoEof, parent: ref RootObj): owned ExprIoEof =
  result = new(ExprIoEof)
  let root = if root == nil: cast[ExprIoEof](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.substream1 = OneOrTwo.read(io, root, result)
  result.substream2 = OneOrTwo.read(io, root, result)

proc fromFile*(_: typedesc[ExprIoEof], filename: string): owned ExprIoEof =
  ExprIoEof.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ExprIoEofObj) =
  close(x.io)


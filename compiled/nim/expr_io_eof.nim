import ../runtime/nim/kaitai_struct_nim_runtime
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

  let one = readU4le(io)
  result.one = one
  let two = readU4le(io)
  result.two = two

  var reflectEofVal: Option[bool]
  let reflectEof = proc(): bool =
    if isNone(reflectEofVal):
      reflectEofVal = some(bool(stream.isEof))
    get(reflectEofVal)
  result.reflectEofInst = reflectEof

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

  let substream1 = readBytes(io, int(4))
  result.substream1 = substream1
  let substream2 = readBytes(io, int(8))
  result.substream2 = substream2


proc fromFile*(_: typedesc[ExprIoEof], filename: string): owned ExprIoEof =
  ExprIoEof.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ExprIoEofObj) =
  close(x.io)


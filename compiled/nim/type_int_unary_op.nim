import kaitai_struct_nim_runtime
import options

{.experimental: "dotOperators".}

type
  TypeIntUnaryOp* = ref TypeIntUnaryOpObj
  TypeIntUnaryOpObj* = object
    io: KaitaiStream
    root*: TypeIntUnaryOp
    parent*: ref RootObj
    valueS2*: int16
    valueS8*: int64
    unaryS2Inst: proc(): int
    unaryS8Inst: proc(): int64

# TypeIntUnaryOp
template `.`*(a: TypeIntUnaryOp, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[TypeIntUnaryOp], io: KaitaiStream, root: TypeIntUnaryOp, parent: ref RootObj): owned TypeIntUnaryOp =
  result = new(TypeIntUnaryOp)
  let root = if root == nil: cast[TypeIntUnaryOp](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let valueS2 = readS2le(io)
  result.valueS2 = valueS2
  let valueS8 = readS8le(io)
  result.valueS8 = valueS8

  var unaryS2Val: Option[int]
  let unaryS2 = proc(): int =
    if isNone(unaryS2Val):
      unaryS2Val = some(int(-(valueS2)))
    get(unaryS2Val)
  result.unaryS2Inst = unaryS2
  var unaryS8Val: Option[int64]
  let unaryS8 = proc(): int64 =
    if isNone(unaryS8Val):
      unaryS8Val = some(int64(-(valueS8)))
    get(unaryS8Val)
  result.unaryS8Inst = unaryS8

proc fromFile*(_: typedesc[TypeIntUnaryOp], filename: string): owned TypeIntUnaryOp =
  TypeIntUnaryOp.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var TypeIntUnaryOpObj) =
  close(x.io)


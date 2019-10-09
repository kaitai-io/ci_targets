import ../../runtime/nim/kaitai
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

  result.valueS2 = readS2le(io)
  result.valueS8 = readS8le(io)

proc fromFile*(_: typedesc[TypeIntUnaryOp], filename: string): owned TypeIntUnaryOp =
  TypeIntUnaryOp.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var TypeIntUnaryOpObj) =
  close(x.io)


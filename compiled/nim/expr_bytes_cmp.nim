import ../../runtime/nim/kaitai
import options

{.experimental: "dotOperators".}

type
  ExprBytesCmp* = ref ExprBytesCmpObj
  ExprBytesCmpObj* = object
    io: KaitaiStream
    root*: ExprBytesCmp
    parent*: ref RootObj
    one*: seq[byte]
    two*: seq[byte]
    isLeInst: proc(): bool
    ackInst: proc(): seq[byte]
    isGt2Inst: proc(): bool
    isGtInst: proc(): bool
    ack2Inst: proc(): seq[byte]
    isEqInst: proc(): bool
    isLt2Inst: proc(): bool
    isGeInst: proc(): bool
    hiValInst: proc(): seq[byte]
    isNeInst: proc(): bool
    isLtInst: proc(): bool

# ExprBytesCmp
template `.`*(a: ExprBytesCmp, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[ExprBytesCmp], io: KaitaiStream, root: ExprBytesCmp, parent: ref RootObj): owned ExprBytesCmp =
  result = new(ExprBytesCmp)
  let root = if root == nil: cast[ExprBytesCmp](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.one = readBytes(io, int(1))
  result.two = readBytes(io, int(3))

proc fromFile*(_: typedesc[ExprBytesCmp], filename: string): owned ExprBytesCmp =
  ExprBytesCmp.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ExprBytesCmpObj) =
  close(x.io)


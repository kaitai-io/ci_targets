import ../../../runtime/nim/kaitai
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

  let one = readBytes(io, int(1))
  result.one = one
  let two = readBytes(io, int(3))
  result.two = two

  var isLeVal: Option[bool]
  let isLe = proc(): bool =
    if isNone(isLeVal):
      isLeVal = some(bool(two <= ack2))
    get(isLeVal)
  result.isLeInst = isLe
  var ackVal: Option[seq[byte]]
  let ack = proc(): seq[byte] =
    if isNone(ackVal):
      ackVal = some(seq[byte](@[65, 67, 75].mapIt(toByte(it))))
    get(ackVal)
  result.ackInst = ack
  var isGt2Val: Option[bool]
  let isGt2 = proc(): bool =
    if isNone(isGt2Val):
      isGt2Val = some(bool(hiVal > two))
    get(isGt2Val)
  result.isGt2Inst = isGt2
  var isGtVal: Option[bool]
  let isGt = proc(): bool =
    if isNone(isGtVal):
      isGtVal = some(bool(two > ack2))
    get(isGtVal)
  result.isGtInst = isGt
  var ack2Val: Option[seq[byte]]
  let ack2 = proc(): seq[byte] =
    if isNone(ack2Val):
      ack2Val = some(seq[byte](@[65, 67, 75, 50].mapIt(toByte(it))))
    get(ack2Val)
  result.ack2Inst = ack2
  var isEqVal: Option[bool]
  let isEq = proc(): bool =
    if isNone(isEqVal):
      isEqVal = some(bool(two == ack))
    get(isEqVal)
  result.isEqInst = isEq
  var isLt2Val: Option[bool]
  let isLt2 = proc(): bool =
    if isNone(isLt2Val):
      isLt2Val = some(bool(one < two))
    get(isLt2Val)
  result.isLt2Inst = isLt2
  var isGeVal: Option[bool]
  let isGe = proc(): bool =
    if isNone(isGeVal):
      isGeVal = some(bool(two >= ack2))
    get(isGeVal)
  result.isGeInst = isGe
  var hiValVal: Option[seq[byte]]
  let hiVal = proc(): seq[byte] =
    if isNone(hiValVal):
      hiValVal = some(seq[byte](@[-112, 67].mapIt(toByte(it))))
    get(hiValVal)
  result.hiValInst = hiVal
  var isNeVal: Option[bool]
  let isNe = proc(): bool =
    if isNone(isNeVal):
      isNeVal = some(bool(two != ack))
    get(isNeVal)
  result.isNeInst = isNe
  var isLtVal: Option[bool]
  let isLt = proc(): bool =
    if isNone(isLtVal):
      isLtVal = some(bool(two < ack2))
    get(isLtVal)
  result.isLtInst = isLt

proc fromFile*(_: typedesc[ExprBytesCmp], filename: string): owned ExprBytesCmp =
  ExprBytesCmp.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ExprBytesCmpObj) =
  close(x.io)


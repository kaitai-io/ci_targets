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

  let shadow = result
  var isLe: Option[bool]
  result.isLeInst = proc(): bool =
    if isNone(isLe):
      isLe = some(bool(shadow.two <= shadow.ack2))
    get(isLe)
  var ack: Option[seq[byte]]
  result.ackInst = proc(): seq[byte] =
    if isNone(ack):
      ack = some(seq[byte](@[65, 67, 75]))
    get(ack)
  var isGt2: Option[bool]
  result.isGt2Inst = proc(): bool =
    if isNone(isGt2):
      isGt2 = some(bool(shadow.hiVal > shadow.two))
    get(isGt2)
  var isGt: Option[bool]
  result.isGtInst = proc(): bool =
    if isNone(isGt):
      isGt = some(bool(shadow.two > shadow.ack2))
    get(isGt)
  var ack2: Option[seq[byte]]
  result.ack2Inst = proc(): seq[byte] =
    if isNone(ack2):
      ack2 = some(seq[byte](@[65, 67, 75, 50]))
    get(ack2)
  var isEq: Option[bool]
  result.isEqInst = proc(): bool =
    if isNone(isEq):
      isEq = some(bool(shadow.two == shadow.ack))
    get(isEq)
  var isLt2: Option[bool]
  result.isLt2Inst = proc(): bool =
    if isNone(isLt2):
      isLt2 = some(bool(shadow.one < shadow.two))
    get(isLt2)
  var isGe: Option[bool]
  result.isGeInst = proc(): bool =
    if isNone(isGe):
      isGe = some(bool(shadow.two >= shadow.ack2))
    get(isGe)
  var hiVal: Option[seq[byte]]
  result.hiValInst = proc(): seq[byte] =
    if isNone(hiVal):
      hiVal = some(seq[byte](@[-112, 67]))
    get(hiVal)
  var isNe: Option[bool]
  result.isNeInst = proc(): bool =
    if isNone(isNe):
      isNe = some(bool(shadow.two != shadow.ack))
    get(isNe)
  var isLt: Option[bool]
  result.isLtInst = proc(): bool =
    if isNone(isLt):
      isLt = some(bool(shadow.two < shadow.ack2))
    get(isLt)

proc fromFile*(_: typedesc[ExprBytesCmp], filename: string): owned ExprBytesCmp =
  ExprBytesCmp.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ExprBytesCmpObj) =
  close(x.io)


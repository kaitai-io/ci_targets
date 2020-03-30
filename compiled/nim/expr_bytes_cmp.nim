import kaitai_struct_nim_runtime
import options

type
  ExprBytesCmp* = ref ExprBytesCmpObj
  ExprBytesCmpObj* = object
    one*: string
    two*: string
    io*: KaitaiStream
    root*: ExprBytesCmp
    parent*: ref RootObj
    isLeInst*: Option[bool]
    ackInst*: Option[string]
    isGt2Inst*: Option[bool]
    isGtInst*: Option[bool]
    ack2Inst*: Option[string]
    isEqInst*: Option[bool]
    isLt2Inst*: Option[bool]
    isGeInst*: Option[bool]
    hiValInst*: Option[string]
    isNeInst*: Option[bool]
    isLtInst*: Option[bool]

## ExprBytesCmp
proc isLe*(this: ExprBytesCmp): bool
proc ack*(this: ExprBytesCmp): string
proc isGt2*(this: ExprBytesCmp): bool
proc isGt*(this: ExprBytesCmp): bool
proc ack2*(this: ExprBytesCmp): string
proc isEq*(this: ExprBytesCmp): bool
proc isLt2*(this: ExprBytesCmp): bool
proc isGe*(this: ExprBytesCmp): bool
proc hiVal*(this: ExprBytesCmp): string
proc isNe*(this: ExprBytesCmp): bool
proc isLt*(this: ExprBytesCmp): bool
proc isLe(this: ExprBytesCmp): bool = 
  if isSome(this.isLeInst):
    return get(this.isLeInst)
  this.isLeInst = some(this.two <= this.ack2)
  return get(this.isLeInst)

proc ack(this: ExprBytesCmp): string = 
  if isSome(this.ackInst):
    return get(this.ackInst)
  this.ackInst = some(@[65, 67, 75].mapIt(it.toByte).toString)
  return get(this.ackInst)

proc isGt2(this: ExprBytesCmp): bool = 
  if isSome(this.isGt2Inst):
    return get(this.isGt2Inst)
  this.isGt2Inst = some(this.hiVal > this.two)
  return get(this.isGt2Inst)

proc isGt(this: ExprBytesCmp): bool = 
  if isSome(this.isGtInst):
    return get(this.isGtInst)
  this.isGtInst = some(this.two > this.ack2)
  return get(this.isGtInst)

proc ack2(this: ExprBytesCmp): string = 
  if isSome(this.ack2Inst):
    return get(this.ack2Inst)
  this.ack2Inst = some(@[65, 67, 75, 50].mapIt(it.toByte).toString)
  return get(this.ack2Inst)

proc isEq(this: ExprBytesCmp): bool = 
  if isSome(this.isEqInst):
    return get(this.isEqInst)
  this.isEqInst = some(this.two == this.ack)
  return get(this.isEqInst)

proc isLt2(this: ExprBytesCmp): bool = 
  if isSome(this.isLt2Inst):
    return get(this.isLt2Inst)
  this.isLt2Inst = some(this.one < this.two)
  return get(this.isLt2Inst)

proc isGe(this: ExprBytesCmp): bool = 
  if isSome(this.isGeInst):
    return get(this.isGeInst)
  this.isGeInst = some(this.two >= this.ack2)
  return get(this.isGeInst)

proc hiVal(this: ExprBytesCmp): string = 
  if isSome(this.hiValInst):
    return get(this.hiValInst)
  this.hiValInst = some(@[-112, 67].mapIt(it.toByte).toString)
  return get(this.hiValInst)

proc isNe(this: ExprBytesCmp): bool = 
  if isSome(this.isNeInst):
    return get(this.isNeInst)
  this.isNeInst = some(this.two != this.ack)
  return get(this.isNeInst)

proc isLt(this: ExprBytesCmp): bool = 
  if isSome(this.isLtInst):
    return get(this.isLtInst)
  this.isLtInst = some(this.two < this.ack2)
  return get(this.isLtInst)

proc read*(_: typedesc[ExprBytesCmp], io: KaitaiStream, root: ExprBytesCmp, parent: ref RootObj): ExprBytesCmp =
  let this = new(ExprBytesCmp)
  let root = if root == nil: cast[ExprBytesCmp](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readBytes(int(1))
  this.two = this.io.readBytes(int(3))
  result = this

proc fromFile*(_: typedesc[ExprBytesCmp], filename: string): ExprBytesCmp =
  ExprBytesCmp.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprBytesCmpObj) =
  close(x.io)


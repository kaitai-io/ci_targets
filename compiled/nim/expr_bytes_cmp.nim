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

### ExprBytesCmp ###
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
  let isLeInst = this.two <= this.ack2
  this.isLeInst = some(isLeInst)
  return get(this.isLeInst)

proc ack(this: ExprBytesCmp): string = 
  if isSome(this.ackInst):
    return get(this.ackInst)
  let ackInst = @[65, 67, 75].mapIt(it.toByte).toString
  this.ackInst = some(ackInst)
  return get(this.ackInst)

proc isGt2(this: ExprBytesCmp): bool = 
  if isSome(this.isGt2Inst):
    return get(this.isGt2Inst)
  let isGt2Inst = this.hiVal > this.two
  this.isGt2Inst = some(isGt2Inst)
  return get(this.isGt2Inst)

proc isGt(this: ExprBytesCmp): bool = 
  if isSome(this.isGtInst):
    return get(this.isGtInst)
  let isGtInst = this.two > this.ack2
  this.isGtInst = some(isGtInst)
  return get(this.isGtInst)

proc ack2(this: ExprBytesCmp): string = 
  if isSome(this.ack2Inst):
    return get(this.ack2Inst)
  let ack2Inst = @[65, 67, 75, 50].mapIt(it.toByte).toString
  this.ack2Inst = some(ack2Inst)
  return get(this.ack2Inst)

proc isEq(this: ExprBytesCmp): bool = 
  if isSome(this.isEqInst):
    return get(this.isEqInst)
  let isEqInst = this.two == this.ack
  this.isEqInst = some(isEqInst)
  return get(this.isEqInst)

proc isLt2(this: ExprBytesCmp): bool = 
  if isSome(this.isLt2Inst):
    return get(this.isLt2Inst)
  let isLt2Inst = this.one < this.two
  this.isLt2Inst = some(isLt2Inst)
  return get(this.isLt2Inst)

proc isGe(this: ExprBytesCmp): bool = 
  if isSome(this.isGeInst):
    return get(this.isGeInst)
  let isGeInst = this.two >= this.ack2
  this.isGeInst = some(isGeInst)
  return get(this.isGeInst)

proc hiVal(this: ExprBytesCmp): string = 
  if isSome(this.hiValInst):
    return get(this.hiValInst)
  let hiValInst = @[-112, 67].mapIt(it.toByte).toString
  this.hiValInst = some(hiValInst)
  return get(this.hiValInst)

proc isNe(this: ExprBytesCmp): bool = 
  if isSome(this.isNeInst):
    return get(this.isNeInst)
  let isNeInst = this.two != this.ack
  this.isNeInst = some(isNeInst)
  return get(this.isNeInst)

proc isLt(this: ExprBytesCmp): bool = 
  if isSome(this.isLtInst):
    return get(this.isLtInst)
  let isLtInst = this.two < this.ack2
  this.isLtInst = some(isLtInst)
  return get(this.isLtInst)

proc read*(_: typedesc[ExprBytesCmp], io: KaitaiStream, root: ExprBytesCmp, parent: ref RootObj): ExprBytesCmp =
  let this = new(ExprBytesCmp)
  let root = if root == nil: cast[ExprBytesCmp](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let one = this.io.readBytes(int(1))
  this.one = one
  let two = this.io.readBytes(int(3))
  this.two = two
  result = this

proc fromFile*(_: typedesc[ExprBytesCmp], filename: string): ExprBytesCmp =
  ExprBytesCmp.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprBytesCmpObj) =
  close(x.io)


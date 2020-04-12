import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ExprBytesCmp* = ref object of KaitaiStruct
    one*: string
    two*: string
    parent*: KaitaiStruct
    isLeInst*: Option[bool]
    ackInst*: string
    isGt2Inst*: Option[bool]
    isGtInst*: Option[bool]
    ack2Inst*: string
    isEqInst*: Option[bool]
    isLt2Inst*: Option[bool]
    isGeInst*: Option[bool]
    hiValInst*: string
    isNeInst*: Option[bool]
    isLtInst*: Option[bool]

proc read*(_: typedesc[ExprBytesCmp], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprBytesCmp

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

proc read*(_: typedesc[ExprBytesCmp], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprBytesCmp =
  template this: untyped = result
  this = new(ExprBytesCmp)
  let root = if root == nil: cast[ExprBytesCmp](this) else: cast[ExprBytesCmp](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readBytes(int(1))
  this.two = this.io.readBytes(int(3))

proc isLe(this: ExprBytesCmp): bool = 
  if isSome(this.isLeInst):
    return get(this.isLeInst)
  this.isLeInst = bool(this.two <= this.ack2)
  if isSome(this.isLeInst):
    return get(this.isLeInst)

proc ack(this: ExprBytesCmp): string = 
  if this.ackInst.len != 0:
    return this.ackInst
  this.ackInst = string(@[65'i8, 67, 75].toString)
  if this.ackInst.len != 0:
    return this.ackInst

proc isGt2(this: ExprBytesCmp): bool = 
  if isSome(this.isGt2Inst):
    return get(this.isGt2Inst)
  this.isGt2Inst = bool(this.hiVal > this.two)
  if isSome(this.isGt2Inst):
    return get(this.isGt2Inst)

proc isGt(this: ExprBytesCmp): bool = 
  if isSome(this.isGtInst):
    return get(this.isGtInst)
  this.isGtInst = bool(this.two > this.ack2)
  if isSome(this.isGtInst):
    return get(this.isGtInst)

proc ack2(this: ExprBytesCmp): string = 
  if this.ack2Inst.len != 0:
    return this.ack2Inst
  this.ack2Inst = string(@[65'i8, 67, 75, 50].toString)
  if this.ack2Inst.len != 0:
    return this.ack2Inst

proc isEq(this: ExprBytesCmp): bool = 
  if isSome(this.isEqInst):
    return get(this.isEqInst)
  this.isEqInst = bool(this.two == this.ack)
  if isSome(this.isEqInst):
    return get(this.isEqInst)

proc isLt2(this: ExprBytesCmp): bool = 
  if isSome(this.isLt2Inst):
    return get(this.isLt2Inst)
  this.isLt2Inst = bool(this.one < this.two)
  if isSome(this.isLt2Inst):
    return get(this.isLt2Inst)

proc isGe(this: ExprBytesCmp): bool = 
  if isSome(this.isGeInst):
    return get(this.isGeInst)
  this.isGeInst = bool(this.two >= this.ack2)
  if isSome(this.isGeInst):
    return get(this.isGeInst)

proc hiVal(this: ExprBytesCmp): string = 
  if this.hiValInst.len != 0:
    return this.hiValInst
  this.hiValInst = string(@[-112'i8, 67].toString)
  if this.hiValInst.len != 0:
    return this.hiValInst

proc isNe(this: ExprBytesCmp): bool = 
  if isSome(this.isNeInst):
    return get(this.isNeInst)
  this.isNeInst = bool(this.two != this.ack)
  if isSome(this.isNeInst):
    return get(this.isNeInst)

proc isLt(this: ExprBytesCmp): bool = 
  if isSome(this.isLtInst):
    return get(this.isLtInst)
  this.isLtInst = bool(this.two < this.ack2)
  if isSome(this.isLtInst):
    return get(this.isLtInst)

proc fromFile*(_: typedesc[ExprBytesCmp], filename: string): ExprBytesCmp =
  ExprBytesCmp.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  ExprBytesCmp* = ref object of KaitaiStruct
    `one`*: seq[byte]
    `two`*: seq[byte]
    `parent`*: KaitaiStruct
    `ackInst`: seq[byte]
    `ackInstFlag`: bool
    `ack2Inst`: seq[byte]
    `ack2InstFlag`: bool
    `hiValInst`: seq[byte]
    `hiValInstFlag`: bool
    `isEqInst`: bool
    `isEqInstFlag`: bool
    `isGeInst`: bool
    `isGeInstFlag`: bool
    `isGtInst`: bool
    `isGtInstFlag`: bool
    `isGt2Inst`: bool
    `isGt2InstFlag`: bool
    `isLeInst`: bool
    `isLeInstFlag`: bool
    `isLtInst`: bool
    `isLtInstFlag`: bool
    `isLt2Inst`: bool
    `isLt2InstFlag`: bool
    `isNeInst`: bool
    `isNeInstFlag`: bool

proc read*(_: typedesc[ExprBytesCmp], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprBytesCmp

proc ack*(this: ExprBytesCmp): seq[byte]
proc ack2*(this: ExprBytesCmp): seq[byte]
proc hiVal*(this: ExprBytesCmp): seq[byte]
proc isEq*(this: ExprBytesCmp): bool
proc isGe*(this: ExprBytesCmp): bool
proc isGt*(this: ExprBytesCmp): bool
proc isGt2*(this: ExprBytesCmp): bool
proc isLe*(this: ExprBytesCmp): bool
proc isLt*(this: ExprBytesCmp): bool
proc isLt2*(this: ExprBytesCmp): bool
proc isNe*(this: ExprBytesCmp): bool

proc read*(_: typedesc[ExprBytesCmp], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprBytesCmp =
  template this: untyped = result
  this = new(ExprBytesCmp)
  let root = if root == nil: cast[ExprBytesCmp](this) else: cast[ExprBytesCmp](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = this.io.readBytes(int(1))
  this.one = oneExpr
  let twoExpr = this.io.readBytes(int(3))
  this.two = twoExpr

proc ack(this: ExprBytesCmp): seq[byte] = 
  if this.ackInstFlag:
    return this.ackInst
  let ackInstExpr = seq[byte](@[65'u8, 67'u8, 75'u8])
  this.ackInst = ackInstExpr
  this.ackInstFlag = true
  return this.ackInst

proc ack2(this: ExprBytesCmp): seq[byte] = 
  if this.ack2InstFlag:
    return this.ack2Inst
  let ack2InstExpr = seq[byte](@[65'u8, 67'u8, 75'u8, 50'u8])
  this.ack2Inst = ack2InstExpr
  this.ack2InstFlag = true
  return this.ack2Inst

proc hiVal(this: ExprBytesCmp): seq[byte] = 
  if this.hiValInstFlag:
    return this.hiValInst
  let hiValInstExpr = seq[byte](@[144'u8, 67'u8])
  this.hiValInst = hiValInstExpr
  this.hiValInstFlag = true
  return this.hiValInst

proc isEq(this: ExprBytesCmp): bool = 
  if this.isEqInstFlag:
    return this.isEqInst
  let isEqInstExpr = bool(this.two == this.ack)
  this.isEqInst = isEqInstExpr
  this.isEqInstFlag = true
  return this.isEqInst

proc isGe(this: ExprBytesCmp): bool = 
  if this.isGeInstFlag:
    return this.isGeInst
  let isGeInstExpr = bool(this.two >= this.ack2)
  this.isGeInst = isGeInstExpr
  this.isGeInstFlag = true
  return this.isGeInst

proc isGt(this: ExprBytesCmp): bool = 
  if this.isGtInstFlag:
    return this.isGtInst
  let isGtInstExpr = bool(this.two > this.ack2)
  this.isGtInst = isGtInstExpr
  this.isGtInstFlag = true
  return this.isGtInst

proc isGt2(this: ExprBytesCmp): bool = 
  if this.isGt2InstFlag:
    return this.isGt2Inst
  let isGt2InstExpr = bool(this.hiVal > this.two)
  this.isGt2Inst = isGt2InstExpr
  this.isGt2InstFlag = true
  return this.isGt2Inst

proc isLe(this: ExprBytesCmp): bool = 
  if this.isLeInstFlag:
    return this.isLeInst
  let isLeInstExpr = bool(this.two <= this.ack2)
  this.isLeInst = isLeInstExpr
  this.isLeInstFlag = true
  return this.isLeInst

proc isLt(this: ExprBytesCmp): bool = 
  if this.isLtInstFlag:
    return this.isLtInst
  let isLtInstExpr = bool(this.two < this.ack2)
  this.isLtInst = isLtInstExpr
  this.isLtInstFlag = true
  return this.isLtInst

proc isLt2(this: ExprBytesCmp): bool = 
  if this.isLt2InstFlag:
    return this.isLt2Inst
  let isLt2InstExpr = bool(this.one < this.two)
  this.isLt2Inst = isLt2InstExpr
  this.isLt2InstFlag = true
  return this.isLt2Inst

proc isNe(this: ExprBytesCmp): bool = 
  if this.isNeInstFlag:
    return this.isNeInst
  let isNeInstExpr = bool(this.two != this.ack)
  this.isNeInst = isNeInstExpr
  this.isNeInstFlag = true
  return this.isNeInst

proc fromFile*(_: typedesc[ExprBytesCmp], filename: string): ExprBytesCmp =
  ExprBytesCmp.read(newKaitaiFileStream(filename), nil, nil)


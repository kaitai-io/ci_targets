import kaitai_struct_nim_runtime
import options
import encodings

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  Expr3* = ref object of KaitaiStruct
    one*: uint8
    two*: string
    parent*: KaitaiStruct
    threeInst*: Option[string]
    isStrGeInst*: Option[bool]
    isStrNeInst*: Option[bool]
    isStrGtInst*: Option[bool]
    isStrLeInst*: Option[bool]
    isStrLt2Inst*: Option[bool]
    testNotInst*: Option[bool]
    isStrLtInst*: Option[bool]
    fourInst*: Option[string]
    isStrEqInst*: Option[bool]

proc read*(_: typedesc[Expr3], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Expr3

proc three*(this: Expr3): string
proc isStrGe*(this: Expr3): bool
proc isStrNe*(this: Expr3): bool
proc isStrGt*(this: Expr3): bool
proc isStrLe*(this: Expr3): bool
proc isStrLt2*(this: Expr3): bool
proc testNot*(this: Expr3): bool
proc isStrLt*(this: Expr3): bool
proc four*(this: Expr3): string
proc isStrEq*(this: Expr3): bool
proc read*(_: typedesc[Expr3], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Expr3 =
  template this: untyped = result
  this = new(Expr3)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readU1()
  this.two = convert(this.io.readBytes(int(3)), srcEncoding = "ASCII")

proc three(this: Expr3): string = 
  if isSome(this.threeInst):
    return get(this.threeInst)
  this.threeInst = some("@" & this.two)
  return get(this.threeInst)

proc isStrGe(this: Expr3): bool = 
  if isSome(this.isStrGeInst):
    return get(this.isStrGeInst)
  this.isStrGeInst = some(this.two >= "ACK2")
  return get(this.isStrGeInst)

proc isStrNe(this: Expr3): bool = 
  if isSome(this.isStrNeInst):
    return get(this.isStrNeInst)
  this.isStrNeInst = some(this.two != "ACK")
  return get(this.isStrNeInst)

proc isStrGt(this: Expr3): bool = 
  if isSome(this.isStrGtInst):
    return get(this.isStrGtInst)
  this.isStrGtInst = some(this.two > "ACK2")
  return get(this.isStrGtInst)

proc isStrLe(this: Expr3): bool = 
  if isSome(this.isStrLeInst):
    return get(this.isStrLeInst)
  this.isStrLeInst = some(this.two <= "ACK2")
  return get(this.isStrLeInst)

proc isStrLt2(this: Expr3): bool = 
  if isSome(this.isStrLt2Inst):
    return get(this.isStrLt2Inst)
  this.isStrLt2Inst = some(this.three < this.two)
  return get(this.isStrLt2Inst)

proc testNot(this: Expr3): bool = 
  if isSome(this.testNotInst):
    return get(this.testNotInst)
  this.testNotInst = some(not(false))
  return get(this.testNotInst)

proc isStrLt(this: Expr3): bool = 
  if isSome(this.isStrLtInst):
    return get(this.isStrLtInst)
  this.isStrLtInst = some(this.two < "ACK2")
  return get(this.isStrLtInst)

proc four(this: Expr3): string = 
  if isSome(this.fourInst):
    return get(this.fourInst)
  this.fourInst = some("_" & this.two & "_")
  return get(this.fourInst)

proc isStrEq(this: Expr3): bool = 
  if isSome(this.isStrEqInst):
    return get(this.isStrEqInst)
  this.isStrEqInst = some(this.two == "ACK")
  return get(this.isStrEqInst)

proc fromFile*(_: typedesc[Expr3], filename: string): Expr3 =
  Expr3.read(newKaitaiFileStream(filename), nil, nil)


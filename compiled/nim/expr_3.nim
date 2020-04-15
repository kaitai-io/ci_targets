import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  Expr3* = ref object of KaitaiStruct
    one*: uint8
    two*: string
    parent*: KaitaiStruct
    threeInst*: string
    isStrGeInst*: Option[bool]
    isStrNeInst*: Option[bool]
    isStrGtInst*: Option[bool]
    isStrLeInst*: Option[bool]
    isStrLt2Inst*: Option[bool]
    testNotInst*: Option[bool]
    isStrLtInst*: Option[bool]
    fourInst*: string
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
  let root = if root == nil: cast[Expr3](this) else: cast[Expr3](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = this.io.readU1()
  this.one = oneExpr
  let twoExpr = encode(this.io.readBytes(int(3)), "ASCII")
  this.two = twoExpr

proc three(this: Expr3): string = 
  if this.threeInst.len != 0:
    return this.threeInst
  let threeInstExpr = string(($"@" & $this.two))
  this.threeInst = threeInstExpr
  if this.threeInst.len != 0:
    return this.threeInst

proc isStrGe(this: Expr3): bool = 
  if isSome(this.isStrGeInst):
    return get(this.isStrGeInst)
  let isStrGeInstExpr = bool(this.two >= "ACK2")
  this.isStrGeInst = isStrGeInstExpr
  if isSome(this.isStrGeInst):
    return get(this.isStrGeInst)

proc isStrNe(this: Expr3): bool = 
  if isSome(this.isStrNeInst):
    return get(this.isStrNeInst)
  let isStrNeInstExpr = bool(this.two != "ACK")
  this.isStrNeInst = isStrNeInstExpr
  if isSome(this.isStrNeInst):
    return get(this.isStrNeInst)

proc isStrGt(this: Expr3): bool = 
  if isSome(this.isStrGtInst):
    return get(this.isStrGtInst)
  let isStrGtInstExpr = bool(this.two > "ACK2")
  this.isStrGtInst = isStrGtInstExpr
  if isSome(this.isStrGtInst):
    return get(this.isStrGtInst)

proc isStrLe(this: Expr3): bool = 
  if isSome(this.isStrLeInst):
    return get(this.isStrLeInst)
  let isStrLeInstExpr = bool(this.two <= "ACK2")
  this.isStrLeInst = isStrLeInstExpr
  if isSome(this.isStrLeInst):
    return get(this.isStrLeInst)

proc isStrLt2(this: Expr3): bool = 
  if isSome(this.isStrLt2Inst):
    return get(this.isStrLt2Inst)
  let isStrLt2InstExpr = bool(this.three < this.two)
  this.isStrLt2Inst = isStrLt2InstExpr
  if isSome(this.isStrLt2Inst):
    return get(this.isStrLt2Inst)

proc testNot(this: Expr3): bool = 
  if isSome(this.testNotInst):
    return get(this.testNotInst)
  let testNotInstExpr = bool(not(false))
  this.testNotInst = testNotInstExpr
  if isSome(this.testNotInst):
    return get(this.testNotInst)

proc isStrLt(this: Expr3): bool = 
  if isSome(this.isStrLtInst):
    return get(this.isStrLtInst)
  let isStrLtInstExpr = bool(this.two < "ACK2")
  this.isStrLtInst = isStrLtInstExpr
  if isSome(this.isStrLtInst):
    return get(this.isStrLtInst)

proc four(this: Expr3): string = 
  if this.fourInst.len != 0:
    return this.fourInst
  let fourInstExpr = string(($($"_" & $this.two) & $"_"))
  this.fourInst = fourInstExpr
  if this.fourInst.len != 0:
    return this.fourInst

proc isStrEq(this: Expr3): bool = 
  if isSome(this.isStrEqInst):
    return get(this.isStrEqInst)
  let isStrEqInstExpr = bool(this.two == "ACK")
  this.isStrEqInst = isStrEqInstExpr
  if isSome(this.isStrEqInst):
    return get(this.isStrEqInst)

proc fromFile*(_: typedesc[Expr3], filename: string): Expr3 =
  Expr3.read(newKaitaiFileStream(filename), nil, nil)


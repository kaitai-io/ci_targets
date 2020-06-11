import kaitai_struct_nim_runtime
import options

type
  Expr3* = ref object of KaitaiStruct
    `one`*: uint8
    `two`*: string
    `parent`*: KaitaiStruct
    `threeInst`*: string
    `isStrGeInst`*: bool
    `isStrNeInst`*: bool
    `isStrGtInst`*: bool
    `isStrLeInst`*: bool
    `isStrLt2Inst`*: bool
    `testNotInst`*: bool
    `isStrLtInst`*: bool
    `fourInst`*: string
    `isStrEqInst`*: bool

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
  if this.isStrGeInst != nil:
    return this.isStrGeInst
  let isStrGeInstExpr = bool(this.two >= "ACK2")
  this.isStrGeInst = isStrGeInstExpr
  if this.isStrGeInst != nil:
    return this.isStrGeInst

proc isStrNe(this: Expr3): bool = 
  if this.isStrNeInst != nil:
    return this.isStrNeInst
  let isStrNeInstExpr = bool(this.two != "ACK")
  this.isStrNeInst = isStrNeInstExpr
  if this.isStrNeInst != nil:
    return this.isStrNeInst

proc isStrGt(this: Expr3): bool = 
  if this.isStrGtInst != nil:
    return this.isStrGtInst
  let isStrGtInstExpr = bool(this.two > "ACK2")
  this.isStrGtInst = isStrGtInstExpr
  if this.isStrGtInst != nil:
    return this.isStrGtInst

proc isStrLe(this: Expr3): bool = 
  if this.isStrLeInst != nil:
    return this.isStrLeInst
  let isStrLeInstExpr = bool(this.two <= "ACK2")
  this.isStrLeInst = isStrLeInstExpr
  if this.isStrLeInst != nil:
    return this.isStrLeInst

proc isStrLt2(this: Expr3): bool = 
  if this.isStrLt2Inst != nil:
    return this.isStrLt2Inst
  let isStrLt2InstExpr = bool(this.three < this.two)
  this.isStrLt2Inst = isStrLt2InstExpr
  if this.isStrLt2Inst != nil:
    return this.isStrLt2Inst

proc testNot(this: Expr3): bool = 
  if this.testNotInst != nil:
    return this.testNotInst
  let testNotInstExpr = bool(not(false))
  this.testNotInst = testNotInstExpr
  if this.testNotInst != nil:
    return this.testNotInst

proc isStrLt(this: Expr3): bool = 
  if this.isStrLtInst != nil:
    return this.isStrLtInst
  let isStrLtInstExpr = bool(this.two < "ACK2")
  this.isStrLtInst = isStrLtInstExpr
  if this.isStrLtInst != nil:
    return this.isStrLtInst

proc four(this: Expr3): string = 
  if this.fourInst.len != 0:
    return this.fourInst
  let fourInstExpr = string(($($"_" & $this.two) & $"_"))
  this.fourInst = fourInstExpr
  if this.fourInst.len != 0:
    return this.fourInst

proc isStrEq(this: Expr3): bool = 
  if this.isStrEqInst != nil:
    return this.isStrEqInst
  let isStrEqInstExpr = bool(this.two == "ACK")
  this.isStrEqInst = isStrEqInstExpr
  if this.isStrEqInst != nil:
    return this.isStrEqInst

proc fromFile*(_: typedesc[Expr3], filename: string): Expr3 =
  Expr3.read(newKaitaiFileStream(filename), nil, nil)


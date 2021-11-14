import kaitai_struct_nim_runtime
import options

type
  Expr3* = ref object of KaitaiStruct
    `one`*: uint8
    `two`*: string
    `parent`*: KaitaiStruct
    `threeInst`: string
    `threeInstFlag`: bool
    `isStrGeInst`: bool
    `isStrGeInstFlag`: bool
    `isStrNeInst`: bool
    `isStrNeInstFlag`: bool
    `isStrGtInst`: bool
    `isStrGtInstFlag`: bool
    `isStrLeInst`: bool
    `isStrLeInstFlag`: bool
    `isStrLt2Inst`: bool
    `isStrLt2InstFlag`: bool
    `testNotInst`: bool
    `testNotInstFlag`: bool
    `isStrLtInst`: bool
    `isStrLtInstFlag`: bool
    `fourInst`: string
    `fourInstFlag`: bool
    `isStrEqInst`: bool
    `isStrEqInstFlag`: bool

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
  if this.threeInstFlag:
    return this.threeInst
  let threeInstExpr = string(($"@" & $this.two))
  this.threeInst = threeInstExpr
  this.threeInstFlag = true
  return this.threeInst

proc isStrGe(this: Expr3): bool = 
  if this.isStrGeInstFlag:
    return this.isStrGeInst
  let isStrGeInstExpr = bool(this.two >= "ACK2")
  this.isStrGeInst = isStrGeInstExpr
  this.isStrGeInstFlag = true
  return this.isStrGeInst

proc isStrNe(this: Expr3): bool = 
  if this.isStrNeInstFlag:
    return this.isStrNeInst
  let isStrNeInstExpr = bool(this.two != "ACK")
  this.isStrNeInst = isStrNeInstExpr
  this.isStrNeInstFlag = true
  return this.isStrNeInst

proc isStrGt(this: Expr3): bool = 
  if this.isStrGtInstFlag:
    return this.isStrGtInst
  let isStrGtInstExpr = bool(this.two > "ACK2")
  this.isStrGtInst = isStrGtInstExpr
  this.isStrGtInstFlag = true
  return this.isStrGtInst

proc isStrLe(this: Expr3): bool = 
  if this.isStrLeInstFlag:
    return this.isStrLeInst
  let isStrLeInstExpr = bool(this.two <= "ACK2")
  this.isStrLeInst = isStrLeInstExpr
  this.isStrLeInstFlag = true
  return this.isStrLeInst

proc isStrLt2(this: Expr3): bool = 
  if this.isStrLt2InstFlag:
    return this.isStrLt2Inst
  let isStrLt2InstExpr = bool(this.three < this.two)
  this.isStrLt2Inst = isStrLt2InstExpr
  this.isStrLt2InstFlag = true
  return this.isStrLt2Inst

proc testNot(this: Expr3): bool = 
  if this.testNotInstFlag:
    return this.testNotInst
  let testNotInstExpr = bool(not(false))
  this.testNotInst = testNotInstExpr
  this.testNotInstFlag = true
  return this.testNotInst

proc isStrLt(this: Expr3): bool = 
  if this.isStrLtInstFlag:
    return this.isStrLtInst
  let isStrLtInstExpr = bool(this.two < "ACK2")
  this.isStrLtInst = isStrLtInstExpr
  this.isStrLtInstFlag = true
  return this.isStrLtInst

proc four(this: Expr3): string = 
  if this.fourInstFlag:
    return this.fourInst
  let fourInstExpr = string(($($"_" & $this.two) & $"_"))
  this.fourInst = fourInstExpr
  this.fourInstFlag = true
  return this.fourInst

proc isStrEq(this: Expr3): bool = 
  if this.isStrEqInstFlag:
    return this.isStrEqInst
  let isStrEqInstExpr = bool(this.two == "ACK")
  this.isStrEqInst = isStrEqInstExpr
  this.isStrEqInstFlag = true
  return this.isStrEqInst

proc fromFile*(_: typedesc[Expr3], filename: string): Expr3 =
  Expr3.read(newKaitaiFileStream(filename), nil, nil)


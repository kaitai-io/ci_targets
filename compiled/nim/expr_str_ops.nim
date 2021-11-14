import kaitai_struct_nim_runtime
import options
import unicode

type
  ExprStrOps* = ref object of KaitaiStruct
    `one`*: string
    `parent`*: KaitaiStruct
    `oneSubstr3To3Inst`: string
    `oneSubstr3To3InstFlag`: bool
    `toIR8Inst`: int
    `toIR8InstFlag`: bool
    `toIR16Inst`: int
    `toIR16InstFlag`: bool
    `twoSubstr0To10Inst`: string
    `twoSubstr0To10InstFlag`: bool
    `oneLenInst`: int
    `oneLenInstFlag`: bool
    `twoLenInst`: int
    `twoLenInstFlag`: bool
    `oneSubstr2To5Inst`: string
    `oneSubstr2To5InstFlag`: bool
    `toIR2Inst`: int
    `toIR2InstFlag`: bool
    `twoRevInst`: string
    `twoRevInstFlag`: bool
    `twoInst`: string
    `twoInstFlag`: bool
    `twoSubstr4To10Inst`: string
    `twoSubstr4To10InstFlag`: bool
    `toIR10Inst`: int
    `toIR10InstFlag`: bool
    `twoSubstr0To7Inst`: string
    `twoSubstr0To7InstFlag`: bool
    `toIAttrInst`: int
    `toIAttrInstFlag`: bool
    `oneSubstr0To3Inst`: string
    `oneSubstr0To3InstFlag`: bool
    `oneRevInst`: string
    `oneRevInstFlag`: bool

proc read*(_: typedesc[ExprStrOps], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprStrOps

proc oneSubstr3To3*(this: ExprStrOps): string
proc toIR8*(this: ExprStrOps): int
proc toIR16*(this: ExprStrOps): int
proc twoSubstr0To10*(this: ExprStrOps): string
proc oneLen*(this: ExprStrOps): int
proc twoLen*(this: ExprStrOps): int
proc oneSubstr2To5*(this: ExprStrOps): string
proc toIR2*(this: ExprStrOps): int
proc twoRev*(this: ExprStrOps): string
proc two*(this: ExprStrOps): string
proc twoSubstr4To10*(this: ExprStrOps): string
proc toIR10*(this: ExprStrOps): int
proc twoSubstr0To7*(this: ExprStrOps): string
proc toIAttr*(this: ExprStrOps): int
proc oneSubstr0To3*(this: ExprStrOps): string
proc oneRev*(this: ExprStrOps): string

proc read*(_: typedesc[ExprStrOps], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprStrOps =
  template this: untyped = result
  this = new(ExprStrOps)
  let root = if root == nil: cast[ExprStrOps](this) else: cast[ExprStrOps](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = encode(this.io.readBytes(int(5)), "ASCII")
  this.one = oneExpr

proc oneSubstr3To3(this: ExprStrOps): string = 
  if this.oneSubstr3To3InstFlag:
    return this.oneSubstr3To3Inst
  let oneSubstr3To3InstExpr = string(this.one.substr(3, 3 - 1))
  this.oneSubstr3To3Inst = oneSubstr3To3InstExpr
  this.oneSubstr3To3InstFlag = true
  return this.oneSubstr3To3Inst

proc toIR8(this: ExprStrOps): int = 
  if this.toIR8InstFlag:
    return this.toIR8Inst
  let toIR8InstExpr = int("721".parseInt(8))
  this.toIR8Inst = toIR8InstExpr
  this.toIR8InstFlag = true
  return this.toIR8Inst

proc toIR16(this: ExprStrOps): int = 
  if this.toIR16InstFlag:
    return this.toIR16Inst
  let toIR16InstExpr = int("47cf".parseInt(16))
  this.toIR16Inst = toIR16InstExpr
  this.toIR16InstFlag = true
  return this.toIR16Inst

proc twoSubstr0To10(this: ExprStrOps): string = 
  if this.twoSubstr0To10InstFlag:
    return this.twoSubstr0To10Inst
  let twoSubstr0To10InstExpr = string(this.two.substr(0, 10 - 1))
  this.twoSubstr0To10Inst = twoSubstr0To10InstExpr
  this.twoSubstr0To10InstFlag = true
  return this.twoSubstr0To10Inst

proc oneLen(this: ExprStrOps): int = 
  if this.oneLenInstFlag:
    return this.oneLenInst
  let oneLenInstExpr = int(len(this.one))
  this.oneLenInst = oneLenInstExpr
  this.oneLenInstFlag = true
  return this.oneLenInst

proc twoLen(this: ExprStrOps): int = 
  if this.twoLenInstFlag:
    return this.twoLenInst
  let twoLenInstExpr = int(len(this.two))
  this.twoLenInst = twoLenInstExpr
  this.twoLenInstFlag = true
  return this.twoLenInst

proc oneSubstr2To5(this: ExprStrOps): string = 
  if this.oneSubstr2To5InstFlag:
    return this.oneSubstr2To5Inst
  let oneSubstr2To5InstExpr = string(this.one.substr(2, 5 - 1))
  this.oneSubstr2To5Inst = oneSubstr2To5InstExpr
  this.oneSubstr2To5InstFlag = true
  return this.oneSubstr2To5Inst

proc toIR2(this: ExprStrOps): int = 
  if this.toIR2InstFlag:
    return this.toIR2Inst
  let toIR2InstExpr = int("1010110".parseInt(2))
  this.toIR2Inst = toIR2InstExpr
  this.toIR2InstFlag = true
  return this.toIR2Inst

proc twoRev(this: ExprStrOps): string = 
  if this.twoRevInstFlag:
    return this.twoRevInst
  let twoRevInstExpr = string(reversed(this.two))
  this.twoRevInst = twoRevInstExpr
  this.twoRevInstFlag = true
  return this.twoRevInst

proc two(this: ExprStrOps): string = 
  if this.twoInstFlag:
    return this.twoInst
  let twoInstExpr = string("0123456789")
  this.twoInst = twoInstExpr
  this.twoInstFlag = true
  return this.twoInst

proc twoSubstr4To10(this: ExprStrOps): string = 
  if this.twoSubstr4To10InstFlag:
    return this.twoSubstr4To10Inst
  let twoSubstr4To10InstExpr = string(this.two.substr(4, 10 - 1))
  this.twoSubstr4To10Inst = twoSubstr4To10InstExpr
  this.twoSubstr4To10InstFlag = true
  return this.twoSubstr4To10Inst

proc toIR10(this: ExprStrOps): int = 
  if this.toIR10InstFlag:
    return this.toIR10Inst
  let toIR10InstExpr = int("-072".parseInt(10))
  this.toIR10Inst = toIR10InstExpr
  this.toIR10InstFlag = true
  return this.toIR10Inst

proc twoSubstr0To7(this: ExprStrOps): string = 
  if this.twoSubstr0To7InstFlag:
    return this.twoSubstr0To7Inst
  let twoSubstr0To7InstExpr = string(this.two.substr(0, 7 - 1))
  this.twoSubstr0To7Inst = twoSubstr0To7InstExpr
  this.twoSubstr0To7InstFlag = true
  return this.twoSubstr0To7Inst

proc toIAttr(this: ExprStrOps): int = 
  if this.toIAttrInstFlag:
    return this.toIAttrInst
  let toIAttrInstExpr = int("9173".parseInt(10))
  this.toIAttrInst = toIAttrInstExpr
  this.toIAttrInstFlag = true
  return this.toIAttrInst

proc oneSubstr0To3(this: ExprStrOps): string = 
  if this.oneSubstr0To3InstFlag:
    return this.oneSubstr0To3Inst
  let oneSubstr0To3InstExpr = string(this.one.substr(0, 3 - 1))
  this.oneSubstr0To3Inst = oneSubstr0To3InstExpr
  this.oneSubstr0To3InstFlag = true
  return this.oneSubstr0To3Inst

proc oneRev(this: ExprStrOps): string = 
  if this.oneRevInstFlag:
    return this.oneRevInst
  let oneRevInstExpr = string(reversed(this.one))
  this.oneRevInst = oneRevInstExpr
  this.oneRevInstFlag = true
  return this.oneRevInst

proc fromFile*(_: typedesc[ExprStrOps], filename: string): ExprStrOps =
  ExprStrOps.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options
import unicode

type
  ExprStrOps* = ref object of KaitaiStruct
    `one`*: string
    `parent`*: KaitaiStruct
    `oneSubstr3To3Inst`*: string
    `toIR8Inst`*: int
    `toIR16Inst`*: int
    `twoSubstr0To10Inst`*: string
    `oneLenInst`*: int
    `twoLenInst`*: int
    `oneSubstr2To5Inst`*: string
    `toIR2Inst`*: int
    `twoRevInst`*: string
    `twoInst`*: string
    `twoSubstr4To10Inst`*: string
    `toIR10Inst`*: int
    `twoSubstr0To7Inst`*: string
    `toIAttrInst`*: int
    `oneSubstr0To3Inst`*: string
    `oneRevInst`*: string

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
  if this.oneSubstr3To3Inst.len != 0:
    return this.oneSubstr3To3Inst
  let oneSubstr3To3InstExpr = string(this.one.substr(3, 3 - 1))
  this.oneSubstr3To3Inst = oneSubstr3To3InstExpr
  if this.oneSubstr3To3Inst.len != 0:
    return this.oneSubstr3To3Inst

proc toIR8(this: ExprStrOps): int = 
  if this.toIR8Inst != nil:
    return this.toIR8Inst
  let toIR8InstExpr = int("721".parseInt(8))
  this.toIR8Inst = toIR8InstExpr
  if this.toIR8Inst != nil:
    return this.toIR8Inst

proc toIR16(this: ExprStrOps): int = 
  if this.toIR16Inst != nil:
    return this.toIR16Inst
  let toIR16InstExpr = int("47cf".parseInt(16))
  this.toIR16Inst = toIR16InstExpr
  if this.toIR16Inst != nil:
    return this.toIR16Inst

proc twoSubstr0To10(this: ExprStrOps): string = 
  if this.twoSubstr0To10Inst.len != 0:
    return this.twoSubstr0To10Inst
  let twoSubstr0To10InstExpr = string(this.two.substr(0, 10 - 1))
  this.twoSubstr0To10Inst = twoSubstr0To10InstExpr
  if this.twoSubstr0To10Inst.len != 0:
    return this.twoSubstr0To10Inst

proc oneLen(this: ExprStrOps): int = 
  if this.oneLenInst != nil:
    return this.oneLenInst
  let oneLenInstExpr = int(len(this.one))
  this.oneLenInst = oneLenInstExpr
  if this.oneLenInst != nil:
    return this.oneLenInst

proc twoLen(this: ExprStrOps): int = 
  if this.twoLenInst != nil:
    return this.twoLenInst
  let twoLenInstExpr = int(len(this.two))
  this.twoLenInst = twoLenInstExpr
  if this.twoLenInst != nil:
    return this.twoLenInst

proc oneSubstr2To5(this: ExprStrOps): string = 
  if this.oneSubstr2To5Inst.len != 0:
    return this.oneSubstr2To5Inst
  let oneSubstr2To5InstExpr = string(this.one.substr(2, 5 - 1))
  this.oneSubstr2To5Inst = oneSubstr2To5InstExpr
  if this.oneSubstr2To5Inst.len != 0:
    return this.oneSubstr2To5Inst

proc toIR2(this: ExprStrOps): int = 
  if this.toIR2Inst != nil:
    return this.toIR2Inst
  let toIR2InstExpr = int("1010110".parseInt(2))
  this.toIR2Inst = toIR2InstExpr
  if this.toIR2Inst != nil:
    return this.toIR2Inst

proc twoRev(this: ExprStrOps): string = 
  if this.twoRevInst.len != 0:
    return this.twoRevInst
  let twoRevInstExpr = string(reversed(this.two))
  this.twoRevInst = twoRevInstExpr
  if this.twoRevInst.len != 0:
    return this.twoRevInst

proc two(this: ExprStrOps): string = 
  if this.twoInst.len != 0:
    return this.twoInst
  let twoInstExpr = string("0123456789")
  this.twoInst = twoInstExpr
  if this.twoInst.len != 0:
    return this.twoInst

proc twoSubstr4To10(this: ExprStrOps): string = 
  if this.twoSubstr4To10Inst.len != 0:
    return this.twoSubstr4To10Inst
  let twoSubstr4To10InstExpr = string(this.two.substr(4, 10 - 1))
  this.twoSubstr4To10Inst = twoSubstr4To10InstExpr
  if this.twoSubstr4To10Inst.len != 0:
    return this.twoSubstr4To10Inst

proc toIR10(this: ExprStrOps): int = 
  if this.toIR10Inst != nil:
    return this.toIR10Inst
  let toIR10InstExpr = int("-072".parseInt(10))
  this.toIR10Inst = toIR10InstExpr
  if this.toIR10Inst != nil:
    return this.toIR10Inst

proc twoSubstr0To7(this: ExprStrOps): string = 
  if this.twoSubstr0To7Inst.len != 0:
    return this.twoSubstr0To7Inst
  let twoSubstr0To7InstExpr = string(this.two.substr(0, 7 - 1))
  this.twoSubstr0To7Inst = twoSubstr0To7InstExpr
  if this.twoSubstr0To7Inst.len != 0:
    return this.twoSubstr0To7Inst

proc toIAttr(this: ExprStrOps): int = 
  if this.toIAttrInst != nil:
    return this.toIAttrInst
  let toIAttrInstExpr = int("9173".parseInt(10))
  this.toIAttrInst = toIAttrInstExpr
  if this.toIAttrInst != nil:
    return this.toIAttrInst

proc oneSubstr0To3(this: ExprStrOps): string = 
  if this.oneSubstr0To3Inst.len != 0:
    return this.oneSubstr0To3Inst
  let oneSubstr0To3InstExpr = string(this.one.substr(0, 3 - 1))
  this.oneSubstr0To3Inst = oneSubstr0To3InstExpr
  if this.oneSubstr0To3Inst.len != 0:
    return this.oneSubstr0To3Inst

proc oneRev(this: ExprStrOps): string = 
  if this.oneRevInst.len != 0:
    return this.oneRevInst
  let oneRevInstExpr = string(reversed(this.one))
  this.oneRevInst = oneRevInstExpr
  if this.oneRevInst.len != 0:
    return this.oneRevInst

proc fromFile*(_: typedesc[ExprStrOps], filename: string): ExprStrOps =
  ExprStrOps.read(newKaitaiFileStream(filename), nil, nil)


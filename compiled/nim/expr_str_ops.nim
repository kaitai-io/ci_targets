import kaitai_struct_nim_runtime
import options
import unicode

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ExprStrOps* = ref object of KaitaiStruct
    one*: string
    parent*: KaitaiStruct
    oneSubstr3To3Inst*: string
    toIR8Inst*: Option[int]
    toIR16Inst*: Option[int]
    twoSubstr0To10Inst*: string
    oneLenInst*: Option[int]
    twoLenInst*: Option[int]
    oneSubstr2To5Inst*: string
    toIR2Inst*: Option[int]
    twoRevInst*: string
    twoInst*: string
    twoSubstr4To10Inst*: string
    toIR10Inst*: Option[int]
    twoSubstr0To7Inst*: string
    toIAttrInst*: Option[int]
    oneSubstr0To3Inst*: string
    oneRevInst*: string

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

  this.one = encode(this.io.readBytes(int(5)), "ASCII")

proc oneSubstr3To3(this: ExprStrOps): string = 
  if this.oneSubstr3To3Inst.len != 0:
    return this.oneSubstr3To3Inst
  this.oneSubstr3To3Inst = string(this.one.substr(3, 3 - 1))
  if this.oneSubstr3To3Inst.len != 0:
    return this.oneSubstr3To3Inst

proc toIR8(this: ExprStrOps): int = 
  if isSome(this.toIR8Inst):
    return get(this.toIR8Inst)
  this.toIR8Inst = int("721".parseInt(8))
  if isSome(this.toIR8Inst):
    return get(this.toIR8Inst)

proc toIR16(this: ExprStrOps): int = 
  if isSome(this.toIR16Inst):
    return get(this.toIR16Inst)
  this.toIR16Inst = int("47cf".parseInt(16))
  if isSome(this.toIR16Inst):
    return get(this.toIR16Inst)

proc twoSubstr0To10(this: ExprStrOps): string = 
  if this.twoSubstr0To10Inst.len != 0:
    return this.twoSubstr0To10Inst
  this.twoSubstr0To10Inst = string(this.two.substr(0, 10 - 1))
  if this.twoSubstr0To10Inst.len != 0:
    return this.twoSubstr0To10Inst

proc oneLen(this: ExprStrOps): int = 
  if isSome(this.oneLenInst):
    return get(this.oneLenInst)
  this.oneLenInst = int(len(this.one))
  if isSome(this.oneLenInst):
    return get(this.oneLenInst)

proc twoLen(this: ExprStrOps): int = 
  if isSome(this.twoLenInst):
    return get(this.twoLenInst)
  this.twoLenInst = int(len(this.two))
  if isSome(this.twoLenInst):
    return get(this.twoLenInst)

proc oneSubstr2To5(this: ExprStrOps): string = 
  if this.oneSubstr2To5Inst.len != 0:
    return this.oneSubstr2To5Inst
  this.oneSubstr2To5Inst = string(this.one.substr(2, 5 - 1))
  if this.oneSubstr2To5Inst.len != 0:
    return this.oneSubstr2To5Inst

proc toIR2(this: ExprStrOps): int = 
  if isSome(this.toIR2Inst):
    return get(this.toIR2Inst)
  this.toIR2Inst = int("1010110".parseInt(2))
  if isSome(this.toIR2Inst):
    return get(this.toIR2Inst)

proc twoRev(this: ExprStrOps): string = 
  if this.twoRevInst.len != 0:
    return this.twoRevInst
  this.twoRevInst = string(reversed(this.two))
  if this.twoRevInst.len != 0:
    return this.twoRevInst

proc two(this: ExprStrOps): string = 
  if this.twoInst.len != 0:
    return this.twoInst
  this.twoInst = string("0123456789")
  if this.twoInst.len != 0:
    return this.twoInst

proc twoSubstr4To10(this: ExprStrOps): string = 
  if this.twoSubstr4To10Inst.len != 0:
    return this.twoSubstr4To10Inst
  this.twoSubstr4To10Inst = string(this.two.substr(4, 10 - 1))
  if this.twoSubstr4To10Inst.len != 0:
    return this.twoSubstr4To10Inst

proc toIR10(this: ExprStrOps): int = 
  if isSome(this.toIR10Inst):
    return get(this.toIR10Inst)
  this.toIR10Inst = int("-072".parseInt(10))
  if isSome(this.toIR10Inst):
    return get(this.toIR10Inst)

proc twoSubstr0To7(this: ExprStrOps): string = 
  if this.twoSubstr0To7Inst.len != 0:
    return this.twoSubstr0To7Inst
  this.twoSubstr0To7Inst = string(this.two.substr(0, 7 - 1))
  if this.twoSubstr0To7Inst.len != 0:
    return this.twoSubstr0To7Inst

proc toIAttr(this: ExprStrOps): int = 
  if isSome(this.toIAttrInst):
    return get(this.toIAttrInst)
  this.toIAttrInst = int("9173".parseInt(10))
  if isSome(this.toIAttrInst):
    return get(this.toIAttrInst)

proc oneSubstr0To3(this: ExprStrOps): string = 
  if this.oneSubstr0To3Inst.len != 0:
    return this.oneSubstr0To3Inst
  this.oneSubstr0To3Inst = string(this.one.substr(0, 3 - 1))
  if this.oneSubstr0To3Inst.len != 0:
    return this.oneSubstr0To3Inst

proc oneRev(this: ExprStrOps): string = 
  if this.oneRevInst.len != 0:
    return this.oneRevInst
  this.oneRevInst = string(reversed(this.one))
  if this.oneRevInst.len != 0:
    return this.oneRevInst

proc fromFile*(_: typedesc[ExprStrOps], filename: string): ExprStrOps =
  ExprStrOps.read(newKaitaiFileStream(filename), nil, nil)


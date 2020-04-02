import kaitai_struct_nim_runtime
import options
import encodings
import unicode

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ExprStrOps* = ref object of KaitaiStruct
    one*: string
    parent*: KaitaiStruct
    oneSubstr3To3Inst*: Option[string]
    toIR8Inst*: Option[int]
    toIR16Inst*: Option[int]
    twoSubstr0To10Inst*: Option[string]
    oneLenInst*: Option[int]
    twoLenInst*: Option[int]
    oneSubstr2To5Inst*: Option[string]
    toIR2Inst*: Option[int]
    twoRevInst*: Option[string]
    twoInst*: Option[string]
    twoSubstr4To10Inst*: Option[string]
    toIR10Inst*: Option[int]
    twoSubstr0To7Inst*: Option[string]
    toIAttrInst*: Option[int]
    oneSubstr0To3Inst*: Option[string]
    oneRevInst*: Option[string]

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
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = convert(this.io.readBytes(int(5)), srcEncoding = "ASCII")

proc oneSubstr3To3(this: ExprStrOps): string = 
  if isSome(this.oneSubstr3To3Inst):
    return get(this.oneSubstr3To3Inst)
  this.oneSubstr3To3Inst = some(this.one.substr(3, 3))
  return get(this.oneSubstr3To3Inst)

proc toIR8(this: ExprStrOps): int = 
  if isSome(this.toIR8Inst):
    return get(this.toIR8Inst)
  this.toIR8Inst = some("721".parseInt(8)
  return get(this.toIR8Inst)

proc toIR16(this: ExprStrOps): int = 
  if isSome(this.toIR16Inst):
    return get(this.toIR16Inst)
  this.toIR16Inst = some("47cf".parseInt(16)
  return get(this.toIR16Inst)

proc twoSubstr0To10(this: ExprStrOps): string = 
  if isSome(this.twoSubstr0To10Inst):
    return get(this.twoSubstr0To10Inst)
  this.twoSubstr0To10Inst = some(this.two.substr(0, 10))
  return get(this.twoSubstr0To10Inst)

proc oneLen(this: ExprStrOps): int = 
  if isSome(this.oneLenInst):
    return get(this.oneLenInst)
  this.oneLenInst = some(len(this.one))
  return get(this.oneLenInst)

proc twoLen(this: ExprStrOps): int = 
  if isSome(this.twoLenInst):
    return get(this.twoLenInst)
  this.twoLenInst = some(len(this.two))
  return get(this.twoLenInst)

proc oneSubstr2To5(this: ExprStrOps): string = 
  if isSome(this.oneSubstr2To5Inst):
    return get(this.oneSubstr2To5Inst)
  this.oneSubstr2To5Inst = some(this.one.substr(2, 5))
  return get(this.oneSubstr2To5Inst)

proc toIR2(this: ExprStrOps): int = 
  if isSome(this.toIR2Inst):
    return get(this.toIR2Inst)
  this.toIR2Inst = some("1010110".parseInt(2)
  return get(this.toIR2Inst)

proc twoRev(this: ExprStrOps): string = 
  if isSome(this.twoRevInst):
    return get(this.twoRevInst)
  this.twoRevInst = some(reversed(this.two))
  return get(this.twoRevInst)

proc two(this: ExprStrOps): string = 
  if isSome(this.twoInst):
    return get(this.twoInst)
  this.twoInst = some("0123456789")
  return get(this.twoInst)

proc twoSubstr4To10(this: ExprStrOps): string = 
  if isSome(this.twoSubstr4To10Inst):
    return get(this.twoSubstr4To10Inst)
  this.twoSubstr4To10Inst = some(this.two.substr(4, 10))
  return get(this.twoSubstr4To10Inst)

proc toIR10(this: ExprStrOps): int = 
  if isSome(this.toIR10Inst):
    return get(this.toIR10Inst)
  this.toIR10Inst = some("-072".parseInt(10)
  return get(this.toIR10Inst)

proc twoSubstr0To7(this: ExprStrOps): string = 
  if isSome(this.twoSubstr0To7Inst):
    return get(this.twoSubstr0To7Inst)
  this.twoSubstr0To7Inst = some(this.two.substr(0, 7))
  return get(this.twoSubstr0To7Inst)

proc toIAttr(this: ExprStrOps): int = 
  if isSome(this.toIAttrInst):
    return get(this.toIAttrInst)
  this.toIAttrInst = some("9173".parseInt(10)
  return get(this.toIAttrInst)

proc oneSubstr0To3(this: ExprStrOps): string = 
  if isSome(this.oneSubstr0To3Inst):
    return get(this.oneSubstr0To3Inst)
  this.oneSubstr0To3Inst = some(this.one.substr(0, 3))
  return get(this.oneSubstr0To3Inst)

proc oneRev(this: ExprStrOps): string = 
  if isSome(this.oneRevInst):
    return get(this.oneRevInst)
  this.oneRevInst = some(reversed(this.one))
  return get(this.oneRevInst)

proc fromFile*(_: typedesc[ExprStrOps], filename: string): ExprStrOps =
  ExprStrOps.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options
import unicode
import encodings

type
  ExprStrOps* = ref ExprStrOpsObj
  ExprStrOpsObj* = object
    one*: string
    io*: KaitaiStream
    root*: ExprStrOps
    parent*: ref RootObj
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

### ExprStrOps ###
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
proc oneSubstr3To3(this: ExprStrOps): string = 
  if isSome(this.oneSubstr3To3Inst):
    return get(this.oneSubstr3To3Inst)
  let oneSubstr3To3Inst = this.one.substr(3, 3)
  this.oneSubstr3To3Inst = some(oneSubstr3To3Inst)
  return get(this.oneSubstr3To3Inst)

proc toIR8(this: ExprStrOps): int = 
  if isSome(this.toIR8Inst):
    return get(this.toIR8Inst)
  let toIR8Inst = "721".parseInt(8
  this.toIR8Inst = some(toIR8Inst)
  return get(this.toIR8Inst)

proc toIR16(this: ExprStrOps): int = 
  if isSome(this.toIR16Inst):
    return get(this.toIR16Inst)
  let toIR16Inst = "47cf".parseInt(16
  this.toIR16Inst = some(toIR16Inst)
  return get(this.toIR16Inst)

proc twoSubstr0To10(this: ExprStrOps): string = 
  if isSome(this.twoSubstr0To10Inst):
    return get(this.twoSubstr0To10Inst)
  let twoSubstr0To10Inst = this.two.substr(0, 10)
  this.twoSubstr0To10Inst = some(twoSubstr0To10Inst)
  return get(this.twoSubstr0To10Inst)

proc oneLen(this: ExprStrOps): int = 
  if isSome(this.oneLenInst):
    return get(this.oneLenInst)
  let oneLenInst = len(this.one)
  this.oneLenInst = some(oneLenInst)
  return get(this.oneLenInst)

proc twoLen(this: ExprStrOps): int = 
  if isSome(this.twoLenInst):
    return get(this.twoLenInst)
  let twoLenInst = len(this.two)
  this.twoLenInst = some(twoLenInst)
  return get(this.twoLenInst)

proc oneSubstr2To5(this: ExprStrOps): string = 
  if isSome(this.oneSubstr2To5Inst):
    return get(this.oneSubstr2To5Inst)
  let oneSubstr2To5Inst = this.one.substr(2, 5)
  this.oneSubstr2To5Inst = some(oneSubstr2To5Inst)
  return get(this.oneSubstr2To5Inst)

proc toIR2(this: ExprStrOps): int = 
  if isSome(this.toIR2Inst):
    return get(this.toIR2Inst)
  let toIR2Inst = "1010110".parseInt(2
  this.toIR2Inst = some(toIR2Inst)
  return get(this.toIR2Inst)

proc twoRev(this: ExprStrOps): string = 
  if isSome(this.twoRevInst):
    return get(this.twoRevInst)
  let twoRevInst = reversed(this.two)
  this.twoRevInst = some(twoRevInst)
  return get(this.twoRevInst)

proc two(this: ExprStrOps): string = 
  if isSome(this.twoInst):
    return get(this.twoInst)
  let twoInst = "0123456789"
  this.twoInst = some(twoInst)
  return get(this.twoInst)

proc twoSubstr4To10(this: ExprStrOps): string = 
  if isSome(this.twoSubstr4To10Inst):
    return get(this.twoSubstr4To10Inst)
  let twoSubstr4To10Inst = this.two.substr(4, 10)
  this.twoSubstr4To10Inst = some(twoSubstr4To10Inst)
  return get(this.twoSubstr4To10Inst)

proc toIR10(this: ExprStrOps): int = 
  if isSome(this.toIR10Inst):
    return get(this.toIR10Inst)
  let toIR10Inst = "-072".parseInt(10
  this.toIR10Inst = some(toIR10Inst)
  return get(this.toIR10Inst)

proc twoSubstr0To7(this: ExprStrOps): string = 
  if isSome(this.twoSubstr0To7Inst):
    return get(this.twoSubstr0To7Inst)
  let twoSubstr0To7Inst = this.two.substr(0, 7)
  this.twoSubstr0To7Inst = some(twoSubstr0To7Inst)
  return get(this.twoSubstr0To7Inst)

proc toIAttr(this: ExprStrOps): int = 
  if isSome(this.toIAttrInst):
    return get(this.toIAttrInst)
  let toIAttrInst = "9173".parseInt(10
  this.toIAttrInst = some(toIAttrInst)
  return get(this.toIAttrInst)

proc oneSubstr0To3(this: ExprStrOps): string = 
  if isSome(this.oneSubstr0To3Inst):
    return get(this.oneSubstr0To3Inst)
  let oneSubstr0To3Inst = this.one.substr(0, 3)
  this.oneSubstr0To3Inst = some(oneSubstr0To3Inst)
  return get(this.oneSubstr0To3Inst)

proc oneRev(this: ExprStrOps): string = 
  if isSome(this.oneRevInst):
    return get(this.oneRevInst)
  let oneRevInst = reversed(this.one)
  this.oneRevInst = some(oneRevInst)
  return get(this.oneRevInst)

proc read*(_: typedesc[ExprStrOps], io: KaitaiStream, root: ExprStrOps, parent: ref RootObj): ExprStrOps =
  let this = new(ExprStrOps)
  let root = if root == nil: cast[ExprStrOps](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let one = convert(this.io.readBytes(int(5)), srcEncoding = "ASCII")
  this.one = one
  result = this

proc fromFile*(_: typedesc[ExprStrOps], filename: string): ExprStrOps =
  ExprStrOps.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprStrOpsObj) =
  close(x.io)


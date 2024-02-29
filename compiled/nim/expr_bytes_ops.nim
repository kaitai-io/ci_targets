import kaitai_struct_nim_runtime
import options

type
  ExprBytesOps* = ref object of KaitaiStruct
    `one`*: seq[byte]
    `parent`*: KaitaiStruct
    `oneFirstInst`: uint8
    `oneFirstInstFlag`: bool
    `oneLastInst`: uint8
    `oneLastInstFlag`: bool
    `oneMaxInst`: uint8
    `oneMaxInstFlag`: bool
    `oneMidInst`: uint8
    `oneMidInstFlag`: bool
    `oneMinInst`: uint8
    `oneMinInstFlag`: bool
    `oneSizeInst`: int
    `oneSizeInstFlag`: bool
    `twoInst`: seq[byte]
    `twoInstFlag`: bool
    `twoFirstInst`: uint8
    `twoFirstInstFlag`: bool
    `twoLastInst`: uint8
    `twoLastInstFlag`: bool
    `twoMaxInst`: uint8
    `twoMaxInstFlag`: bool
    `twoMidInst`: uint8
    `twoMidInstFlag`: bool
    `twoMinInst`: uint8
    `twoMinInstFlag`: bool
    `twoSizeInst`: int
    `twoSizeInstFlag`: bool

proc read*(_: typedesc[ExprBytesOps], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprBytesOps

proc oneFirst*(this: ExprBytesOps): uint8
proc oneLast*(this: ExprBytesOps): uint8
proc oneMax*(this: ExprBytesOps): uint8
proc oneMid*(this: ExprBytesOps): uint8
proc oneMin*(this: ExprBytesOps): uint8
proc oneSize*(this: ExprBytesOps): int
proc two*(this: ExprBytesOps): seq[byte]
proc twoFirst*(this: ExprBytesOps): uint8
proc twoLast*(this: ExprBytesOps): uint8
proc twoMax*(this: ExprBytesOps): uint8
proc twoMid*(this: ExprBytesOps): uint8
proc twoMin*(this: ExprBytesOps): uint8
proc twoSize*(this: ExprBytesOps): int

proc read*(_: typedesc[ExprBytesOps], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprBytesOps =
  template this: untyped = result
  this = new(ExprBytesOps)
  let root = if root == nil: cast[ExprBytesOps](this) else: cast[ExprBytesOps](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = this.io.readBytes(int(3))
  this.one = oneExpr

proc oneFirst(this: ExprBytesOps): uint8 = 
  if this.oneFirstInstFlag:
    return this.oneFirstInst
  let oneFirstInstExpr = uint8(this.one[0])
  this.oneFirstInst = oneFirstInstExpr
  this.oneFirstInstFlag = true
  return this.oneFirstInst

proc oneLast(this: ExprBytesOps): uint8 = 
  if this.oneLastInstFlag:
    return this.oneLastInst
  let oneLastInstExpr = uint8(this.one[^1])
  this.oneLastInst = oneLastInstExpr
  this.oneLastInstFlag = true
  return this.oneLastInst

proc oneMax(this: ExprBytesOps): uint8 = 
  if this.oneMaxInstFlag:
    return this.oneMaxInst
  let oneMaxInstExpr = uint8(max(this.one))
  this.oneMaxInst = oneMaxInstExpr
  this.oneMaxInstFlag = true
  return this.oneMaxInst

proc oneMid(this: ExprBytesOps): uint8 = 
  if this.oneMidInstFlag:
    return this.oneMidInst
  let oneMidInstExpr = uint8(this.one[1])
  this.oneMidInst = oneMidInstExpr
  this.oneMidInstFlag = true
  return this.oneMidInst

proc oneMin(this: ExprBytesOps): uint8 = 
  if this.oneMinInstFlag:
    return this.oneMinInst
  let oneMinInstExpr = uint8(min(this.one))
  this.oneMinInst = oneMinInstExpr
  this.oneMinInstFlag = true
  return this.oneMinInst

proc oneSize(this: ExprBytesOps): int = 
  if this.oneSizeInstFlag:
    return this.oneSizeInst
  let oneSizeInstExpr = int(len(this.one))
  this.oneSizeInst = oneSizeInstExpr
  this.oneSizeInstFlag = true
  return this.oneSizeInst

proc two(this: ExprBytesOps): seq[byte] = 
  if this.twoInstFlag:
    return this.twoInst
  let twoInstExpr = seq[byte](@[65'u8, 255'u8, 75'u8])
  this.twoInst = twoInstExpr
  this.twoInstFlag = true
  return this.twoInst

proc twoFirst(this: ExprBytesOps): uint8 = 
  if this.twoFirstInstFlag:
    return this.twoFirstInst
  let twoFirstInstExpr = uint8(this.two[0])
  this.twoFirstInst = twoFirstInstExpr
  this.twoFirstInstFlag = true
  return this.twoFirstInst

proc twoLast(this: ExprBytesOps): uint8 = 
  if this.twoLastInstFlag:
    return this.twoLastInst
  let twoLastInstExpr = uint8(this.two[^1])
  this.twoLastInst = twoLastInstExpr
  this.twoLastInstFlag = true
  return this.twoLastInst

proc twoMax(this: ExprBytesOps): uint8 = 
  if this.twoMaxInstFlag:
    return this.twoMaxInst
  let twoMaxInstExpr = uint8(max(this.two))
  this.twoMaxInst = twoMaxInstExpr
  this.twoMaxInstFlag = true
  return this.twoMaxInst

proc twoMid(this: ExprBytesOps): uint8 = 
  if this.twoMidInstFlag:
    return this.twoMidInst
  let twoMidInstExpr = uint8(this.two[1])
  this.twoMidInst = twoMidInstExpr
  this.twoMidInstFlag = true
  return this.twoMidInst

proc twoMin(this: ExprBytesOps): uint8 = 
  if this.twoMinInstFlag:
    return this.twoMinInst
  let twoMinInstExpr = uint8(min(this.two))
  this.twoMinInst = twoMinInstExpr
  this.twoMinInstFlag = true
  return this.twoMinInst

proc twoSize(this: ExprBytesOps): int = 
  if this.twoSizeInstFlag:
    return this.twoSizeInst
  let twoSizeInstExpr = int(len(this.two))
  this.twoSizeInst = twoSizeInstExpr
  this.twoSizeInstFlag = true
  return this.twoSizeInst

proc fromFile*(_: typedesc[ExprBytesOps], filename: string): ExprBytesOps =
  ExprBytesOps.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  ExprBytesOps* = ref object of KaitaiStruct
    `one`*: seq[byte]
    `parent`*: KaitaiStruct
    `twoLastInst`*: uint8
    `twoMaxInst`*: uint8
    `oneMinInst`*: uint8
    `oneFirstInst`*: uint8
    `oneMidInst`*: uint8
    `twoInst`*: seq[byte]
    `twoMinInst`*: uint8
    `twoMidInst`*: uint8
    `oneSizeInst`*: int
    `oneLastInst`*: uint8
    `twoSizeInst`*: int
    `oneMaxInst`*: uint8
    `twoFirstInst`*: uint8

proc read*(_: typedesc[ExprBytesOps], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprBytesOps

proc twoLast*(this: ExprBytesOps): uint8
proc twoMax*(this: ExprBytesOps): uint8
proc oneMin*(this: ExprBytesOps): uint8
proc oneFirst*(this: ExprBytesOps): uint8
proc oneMid*(this: ExprBytesOps): uint8
proc two*(this: ExprBytesOps): seq[byte]
proc twoMin*(this: ExprBytesOps): uint8
proc twoMid*(this: ExprBytesOps): uint8
proc oneSize*(this: ExprBytesOps): int
proc oneLast*(this: ExprBytesOps): uint8
proc twoSize*(this: ExprBytesOps): int
proc oneMax*(this: ExprBytesOps): uint8
proc twoFirst*(this: ExprBytesOps): uint8

proc read*(_: typedesc[ExprBytesOps], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprBytesOps =
  template this: untyped = result
  this = new(ExprBytesOps)
  let root = if root == nil: cast[ExprBytesOps](this) else: cast[ExprBytesOps](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = this.io.readBytes(int(3))
  this.one = oneExpr

proc twoLast(this: ExprBytesOps): uint8 = 
  if this.twoLastInst != nil:
    return this.twoLastInst
  let twoLastInstExpr = uint8(this.two[^1])
  this.twoLastInst = twoLastInstExpr
  if this.twoLastInst != nil:
    return this.twoLastInst

proc twoMax(this: ExprBytesOps): uint8 = 
  if this.twoMaxInst != nil:
    return this.twoMaxInst
  let twoMaxInstExpr = uint8(max(this.two))
  this.twoMaxInst = twoMaxInstExpr
  if this.twoMaxInst != nil:
    return this.twoMaxInst

proc oneMin(this: ExprBytesOps): uint8 = 
  if this.oneMinInst != nil:
    return this.oneMinInst
  let oneMinInstExpr = uint8(min(this.one))
  this.oneMinInst = oneMinInstExpr
  if this.oneMinInst != nil:
    return this.oneMinInst

proc oneFirst(this: ExprBytesOps): uint8 = 
  if this.oneFirstInst != nil:
    return this.oneFirstInst
  let oneFirstInstExpr = uint8(this.one[0])
  this.oneFirstInst = oneFirstInstExpr
  if this.oneFirstInst != nil:
    return this.oneFirstInst

proc oneMid(this: ExprBytesOps): uint8 = 
  if this.oneMidInst != nil:
    return this.oneMidInst
  let oneMidInstExpr = uint8(this.one[1])
  this.oneMidInst = oneMidInstExpr
  if this.oneMidInst != nil:
    return this.oneMidInst

proc two(this: ExprBytesOps): seq[byte] = 
  if this.twoInst.len != 0:
    return this.twoInst
  let twoInstExpr = seq[byte](@[65'u8, -1'u8, 75'u8])
  this.twoInst = twoInstExpr
  if this.twoInst.len != 0:
    return this.twoInst

proc twoMin(this: ExprBytesOps): uint8 = 
  if this.twoMinInst != nil:
    return this.twoMinInst
  let twoMinInstExpr = uint8(min(this.two))
  this.twoMinInst = twoMinInstExpr
  if this.twoMinInst != nil:
    return this.twoMinInst

proc twoMid(this: ExprBytesOps): uint8 = 
  if this.twoMidInst != nil:
    return this.twoMidInst
  let twoMidInstExpr = uint8(this.two[1])
  this.twoMidInst = twoMidInstExpr
  if this.twoMidInst != nil:
    return this.twoMidInst

proc oneSize(this: ExprBytesOps): int = 
  if this.oneSizeInst != nil:
    return this.oneSizeInst
  let oneSizeInstExpr = int(len(this.one))
  this.oneSizeInst = oneSizeInstExpr
  if this.oneSizeInst != nil:
    return this.oneSizeInst

proc oneLast(this: ExprBytesOps): uint8 = 
  if this.oneLastInst != nil:
    return this.oneLastInst
  let oneLastInstExpr = uint8(this.one[^1])
  this.oneLastInst = oneLastInstExpr
  if this.oneLastInst != nil:
    return this.oneLastInst

proc twoSize(this: ExprBytesOps): int = 
  if this.twoSizeInst != nil:
    return this.twoSizeInst
  let twoSizeInstExpr = int(len(this.two))
  this.twoSizeInst = twoSizeInstExpr
  if this.twoSizeInst != nil:
    return this.twoSizeInst

proc oneMax(this: ExprBytesOps): uint8 = 
  if this.oneMaxInst != nil:
    return this.oneMaxInst
  let oneMaxInstExpr = uint8(max(this.one))
  this.oneMaxInst = oneMaxInstExpr
  if this.oneMaxInst != nil:
    return this.oneMaxInst

proc twoFirst(this: ExprBytesOps): uint8 = 
  if this.twoFirstInst != nil:
    return this.twoFirstInst
  let twoFirstInstExpr = uint8(this.two[0])
  this.twoFirstInst = twoFirstInstExpr
  if this.twoFirstInst != nil:
    return this.twoFirstInst

proc fromFile*(_: typedesc[ExprBytesOps], filename: string): ExprBytesOps =
  ExprBytesOps.read(newKaitaiFileStream(filename), nil, nil)


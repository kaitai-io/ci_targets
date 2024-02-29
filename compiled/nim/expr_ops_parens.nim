import kaitai_struct_nim_runtime
import options
import strutils
import unicode

type
  ExprOpsParens* = ref object of KaitaiStruct
    `parent`*: KaitaiStruct
    `boolAndInst`: int
    `boolAndInstFlag`: bool
    `boolEqInst`: int
    `boolEqInstFlag`: bool
    `boolOrInst`: int
    `boolOrInstFlag`: bool
    `f2piInst`: float64
    `f2piInstFlag`: bool
    `fEInst`: float64
    `fEInstFlag`: bool
    `fSumToIntInst`: int
    `fSumToIntInstFlag`: bool
    `i42Inst`: int8
    `i42InstFlag`: bool
    `iM13Inst`: int
    `iM13InstFlag`: bool
    `iSumToStrInst`: string
    `iSumToStrInstFlag`: bool
    `str0To4Inst`: string
    `str0To4InstFlag`: bool
    `str5To9Inst`: string
    `str5To9InstFlag`: bool
    `strConcatLenInst`: int
    `strConcatLenInstFlag`: bool
    `strConcatRevInst`: string
    `strConcatRevInstFlag`: bool
    `strConcatSubstr2To7Inst`: string
    `strConcatSubstr2To7InstFlag`: bool
    `strConcatToIInst`: int
    `strConcatToIInstFlag`: bool

proc read*(_: typedesc[ExprOpsParens], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprOpsParens

proc boolAnd*(this: ExprOpsParens): int
proc boolEq*(this: ExprOpsParens): int
proc boolOr*(this: ExprOpsParens): int
proc f2pi*(this: ExprOpsParens): float64
proc fE*(this: ExprOpsParens): float64
proc fSumToInt*(this: ExprOpsParens): int
proc i42*(this: ExprOpsParens): int8
proc iM13*(this: ExprOpsParens): int
proc iSumToStr*(this: ExprOpsParens): string
proc str0To4*(this: ExprOpsParens): string
proc str5To9*(this: ExprOpsParens): string
proc strConcatLen*(this: ExprOpsParens): int
proc strConcatRev*(this: ExprOpsParens): string
proc strConcatSubstr2To7*(this: ExprOpsParens): string
proc strConcatToI*(this: ExprOpsParens): int

proc read*(_: typedesc[ExprOpsParens], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprOpsParens =
  template this: untyped = result
  this = new(ExprOpsParens)
  let root = if root == nil: cast[ExprOpsParens](this) else: cast[ExprOpsParens](root)
  this.io = io
  this.root = root
  this.parent = parent


proc boolAnd(this: ExprOpsParens): int = 
  if this.boolAndInstFlag:
    return this.boolAndInst
  let boolAndInstExpr = int((if  ((false) and (true)) : 1 else: 0))
  this.boolAndInst = boolAndInstExpr
  this.boolAndInstFlag = true
  return this.boolAndInst

proc boolEq(this: ExprOpsParens): int = 
  if this.boolEqInstFlag:
    return this.boolEqInst
  let boolEqInstExpr = int((if false == true: 1 else: 0))
  this.boolEqInst = boolEqInstExpr
  this.boolEqInstFlag = true
  return this.boolEqInst

proc boolOr(this: ExprOpsParens): int = 
  if this.boolOrInstFlag:
    return this.boolOrInst
  let boolOrInstExpr = int((if  ((not(false)) or (false)) : 1 else: 0))
  this.boolOrInst = boolOrInstExpr
  this.boolOrInstFlag = true
  return this.boolOrInst

proc f2pi(this: ExprOpsParens): float64 = 
  if this.f2piInstFlag:
    return this.f2piInst
  let f2piInstExpr = float64(6.28)
  this.f2piInst = f2piInstExpr
  this.f2piInstFlag = true
  return this.f2piInst

proc fE(this: ExprOpsParens): float64 = 
  if this.fEInstFlag:
    return this.fEInst
  let fEInstExpr = float64(2.72)
  this.fEInst = fEInstExpr
  this.fEInstFlag = true
  return this.fEInst

proc fSumToInt(this: ExprOpsParens): int = 
  if this.fSumToIntInstFlag:
    return this.fSumToIntInst
  let fSumToIntInstExpr = int(int((this.f2pi + this.fE)))
  this.fSumToIntInst = fSumToIntInstExpr
  this.fSumToIntInstFlag = true
  return this.fSumToIntInst

proc i42(this: ExprOpsParens): int8 = 
  if this.i42InstFlag:
    return this.i42Inst
  let i42InstExpr = int8(42)
  this.i42Inst = i42InstExpr
  this.i42InstFlag = true
  return this.i42Inst

proc iM13(this: ExprOpsParens): int = 
  if this.iM13InstFlag:
    return this.iM13Inst
  let iM13InstExpr = int(-13)
  this.iM13Inst = iM13InstExpr
  this.iM13InstFlag = true
  return this.iM13Inst

proc iSumToStr(this: ExprOpsParens): string = 
  if this.iSumToStrInstFlag:
    return this.iSumToStrInst
  let iSumToStrInstExpr = string(intToStr(int((this.i42 + this.iM13))))
  this.iSumToStrInst = iSumToStrInstExpr
  this.iSumToStrInstFlag = true
  return this.iSumToStrInst

proc str0To4(this: ExprOpsParens): string = 
  if this.str0To4InstFlag:
    return this.str0To4Inst
  let str0To4InstExpr = string("01234")
  this.str0To4Inst = str0To4InstExpr
  this.str0To4InstFlag = true
  return this.str0To4Inst

proc str5To9(this: ExprOpsParens): string = 
  if this.str5To9InstFlag:
    return this.str5To9Inst
  let str5To9InstExpr = string("56789")
  this.str5To9Inst = str5To9InstExpr
  this.str5To9InstFlag = true
  return this.str5To9Inst

proc strConcatLen(this: ExprOpsParens): int = 
  if this.strConcatLenInstFlag:
    return this.strConcatLenInst
  let strConcatLenInstExpr = int(len(($this.str0To4 & $this.str5To9)))
  this.strConcatLenInst = strConcatLenInstExpr
  this.strConcatLenInstFlag = true
  return this.strConcatLenInst

proc strConcatRev(this: ExprOpsParens): string = 
  if this.strConcatRevInstFlag:
    return this.strConcatRevInst
  let strConcatRevInstExpr = string(reversed(($this.str0To4 & $this.str5To9)))
  this.strConcatRevInst = strConcatRevInstExpr
  this.strConcatRevInstFlag = true
  return this.strConcatRevInst

proc strConcatSubstr2To7(this: ExprOpsParens): string = 
  if this.strConcatSubstr2To7InstFlag:
    return this.strConcatSubstr2To7Inst
  let strConcatSubstr2To7InstExpr = string(($this.str0To4 & $this.str5To9).substr(2, 7 - 1))
  this.strConcatSubstr2To7Inst = strConcatSubstr2To7InstExpr
  this.strConcatSubstr2To7InstFlag = true
  return this.strConcatSubstr2To7Inst

proc strConcatToI(this: ExprOpsParens): int = 
  if this.strConcatToIInstFlag:
    return this.strConcatToIInst
  let strConcatToIInstExpr = int(($this.str0To4 & $this.str5To9).parseInt(10))
  this.strConcatToIInst = strConcatToIInstExpr
  this.strConcatToIInstFlag = true
  return this.strConcatToIInst

proc fromFile*(_: typedesc[ExprOpsParens], filename: string): ExprOpsParens =
  ExprOpsParens.read(newKaitaiFileStream(filename), nil, nil)


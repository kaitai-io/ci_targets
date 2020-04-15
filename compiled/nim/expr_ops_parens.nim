import kaitai_struct_nim_runtime
import options
import unicode
import strutils

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ExprOpsParens* = ref object of KaitaiStruct
    parent*: KaitaiStruct
    boolAndInst*: Option[int]
    str0To4Inst*: string
    boolOrInst*: Option[int]
    fEInst*: Option[float64]
    fSumToIntInst*: Option[int]
    strConcatRevInst*: string
    fPiInst*: Option[float64]
    iM13Inst*: Option[int]
    strConcatLenInst*: Option[int]
    strConcatToIInst*: Option[int]
    i42Inst*: Option[int8]
    iSumToStrInst*: string
    boolEqInst*: Option[int]
    str5To9Inst*: string
    strConcatSubstr2To7Inst*: string

proc read*(_: typedesc[ExprOpsParens], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprOpsParens

proc boolAnd*(this: ExprOpsParens): int
proc str0To4*(this: ExprOpsParens): string
proc boolOr*(this: ExprOpsParens): int
proc fE*(this: ExprOpsParens): float64
proc fSumToInt*(this: ExprOpsParens): int
proc strConcatRev*(this: ExprOpsParens): string
proc fPi*(this: ExprOpsParens): float64
proc iM13*(this: ExprOpsParens): int
proc strConcatLen*(this: ExprOpsParens): int
proc strConcatToI*(this: ExprOpsParens): int
proc i42*(this: ExprOpsParens): int8
proc iSumToStr*(this: ExprOpsParens): string
proc boolEq*(this: ExprOpsParens): int
proc str5To9*(this: ExprOpsParens): string
proc strConcatSubstr2To7*(this: ExprOpsParens): string

proc read*(_: typedesc[ExprOpsParens], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprOpsParens =
  template this: untyped = result
  this = new(ExprOpsParens)
  let root = if root == nil: cast[ExprOpsParens](this) else: cast[ExprOpsParens](root)
  this.io = io
  this.root = root
  this.parent = parent


proc boolAnd(this: ExprOpsParens): int = 
  if isSome(this.boolAndInst):
    return get(this.boolAndInst)
  let boolAndInstExpr = int((if  ((false) and (true)) : 1 else: 0))
  this.boolAndInst = boolAndInstExpr
  if isSome(this.boolAndInst):
    return get(this.boolAndInst)

proc str0To4(this: ExprOpsParens): string = 
  if this.str0To4Inst.len != 0:
    return this.str0To4Inst
  let str0To4InstExpr = string("01234")
  this.str0To4Inst = str0To4InstExpr
  if this.str0To4Inst.len != 0:
    return this.str0To4Inst

proc boolOr(this: ExprOpsParens): int = 
  if isSome(this.boolOrInst):
    return get(this.boolOrInst)
  let boolOrInstExpr = int((if  ((not(false)) or (false)) : 1 else: 0))
  this.boolOrInst = boolOrInstExpr
  if isSome(this.boolOrInst):
    return get(this.boolOrInst)

proc fE(this: ExprOpsParens): float64 = 
  if isSome(this.fEInst):
    return get(this.fEInst)
  let fEInstExpr = float64(2.72)
  this.fEInst = fEInstExpr
  if isSome(this.fEInst):
    return get(this.fEInst)

proc fSumToInt(this: ExprOpsParens): int = 
  if isSome(this.fSumToIntInst):
    return get(this.fSumToIntInst)
  let fSumToIntInstExpr = int(int((this.fPi + this.fE)))
  this.fSumToIntInst = fSumToIntInstExpr
  if isSome(this.fSumToIntInst):
    return get(this.fSumToIntInst)

proc strConcatRev(this: ExprOpsParens): string = 
  if this.strConcatRevInst.len != 0:
    return this.strConcatRevInst
  let strConcatRevInstExpr = string(reversed(($this.str0To4 & $this.str5To9)))
  this.strConcatRevInst = strConcatRevInstExpr
  if this.strConcatRevInst.len != 0:
    return this.strConcatRevInst

proc fPi(this: ExprOpsParens): float64 = 
  if isSome(this.fPiInst):
    return get(this.fPiInst)
  let fPiInstExpr = float64(3.14)
  this.fPiInst = fPiInstExpr
  if isSome(this.fPiInst):
    return get(this.fPiInst)

proc iM13(this: ExprOpsParens): int = 
  if isSome(this.iM13Inst):
    return get(this.iM13Inst)
  let iM13InstExpr = int(-13)
  this.iM13Inst = iM13InstExpr
  if isSome(this.iM13Inst):
    return get(this.iM13Inst)

proc strConcatLen(this: ExprOpsParens): int = 
  if isSome(this.strConcatLenInst):
    return get(this.strConcatLenInst)
  let strConcatLenInstExpr = int(len(($this.str0To4 & $this.str5To9)))
  this.strConcatLenInst = strConcatLenInstExpr
  if isSome(this.strConcatLenInst):
    return get(this.strConcatLenInst)

proc strConcatToI(this: ExprOpsParens): int = 
  if isSome(this.strConcatToIInst):
    return get(this.strConcatToIInst)
  let strConcatToIInstExpr = int(($this.str0To4 & $this.str5To9).parseInt(10))
  this.strConcatToIInst = strConcatToIInstExpr
  if isSome(this.strConcatToIInst):
    return get(this.strConcatToIInst)

proc i42(this: ExprOpsParens): int8 = 
  if isSome(this.i42Inst):
    return get(this.i42Inst)
  let i42InstExpr = int8(42)
  this.i42Inst = i42InstExpr
  if isSome(this.i42Inst):
    return get(this.i42Inst)

proc iSumToStr(this: ExprOpsParens): string = 
  if this.iSumToStrInst.len != 0:
    return this.iSumToStrInst
  let iSumToStrInstExpr = string(intToStr(int((this.i42 + this.iM13))))
  this.iSumToStrInst = iSumToStrInstExpr
  if this.iSumToStrInst.len != 0:
    return this.iSumToStrInst

proc boolEq(this: ExprOpsParens): int = 
  if isSome(this.boolEqInst):
    return get(this.boolEqInst)
  let boolEqInstExpr = int((if false == true: 1 else: 0))
  this.boolEqInst = boolEqInstExpr
  if isSome(this.boolEqInst):
    return get(this.boolEqInst)

proc str5To9(this: ExprOpsParens): string = 
  if this.str5To9Inst.len != 0:
    return this.str5To9Inst
  let str5To9InstExpr = string("56789")
  this.str5To9Inst = str5To9InstExpr
  if this.str5To9Inst.len != 0:
    return this.str5To9Inst

proc strConcatSubstr2To7(this: ExprOpsParens): string = 
  if this.strConcatSubstr2To7Inst.len != 0:
    return this.strConcatSubstr2To7Inst
  let strConcatSubstr2To7InstExpr = string(($this.str0To4 & $this.str5To9).substr(2, 7 - 1))
  this.strConcatSubstr2To7Inst = strConcatSubstr2To7InstExpr
  if this.strConcatSubstr2To7Inst.len != 0:
    return this.strConcatSubstr2To7Inst

proc fromFile*(_: typedesc[ExprOpsParens], filename: string): ExprOpsParens =
  ExprOpsParens.read(newKaitaiFileStream(filename), nil, nil)


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
  this.boolAndInst = int((if  ((false) and (true)) : 1 else: 0))
  if isSome(this.boolAndInst):
    return get(this.boolAndInst)

proc str0To4(this: ExprOpsParens): string = 
  if this.str0To4Inst.len != 0:
    return this.str0To4Inst
  this.str0To4Inst = string("01234")
  if this.str0To4Inst.len != 0:
    return this.str0To4Inst

proc boolOr(this: ExprOpsParens): int = 
  if isSome(this.boolOrInst):
    return get(this.boolOrInst)
  this.boolOrInst = int((if  ((not(false)) or (false)) : 1 else: 0))
  if isSome(this.boolOrInst):
    return get(this.boolOrInst)

proc fE(this: ExprOpsParens): float64 = 
  if isSome(this.fEInst):
    return get(this.fEInst)
  this.fEInst = float64(2.72)
  if isSome(this.fEInst):
    return get(this.fEInst)

proc fSumToInt(this: ExprOpsParens): int = 
  if isSome(this.fSumToIntInst):
    return get(this.fSumToIntInst)
  this.fSumToIntInst = int(int((this.fPi + this.fE)))
  if isSome(this.fSumToIntInst):
    return get(this.fSumToIntInst)

proc strConcatRev(this: ExprOpsParens): string = 
  if this.strConcatRevInst.len != 0:
    return this.strConcatRevInst
  this.strConcatRevInst = string(reversed(($this.str0To4 & $this.str5To9)))
  if this.strConcatRevInst.len != 0:
    return this.strConcatRevInst

proc fPi(this: ExprOpsParens): float64 = 
  if isSome(this.fPiInst):
    return get(this.fPiInst)
  this.fPiInst = float64(3.14)
  if isSome(this.fPiInst):
    return get(this.fPiInst)

proc iM13(this: ExprOpsParens): int = 
  if isSome(this.iM13Inst):
    return get(this.iM13Inst)
  this.iM13Inst = int(-13)
  if isSome(this.iM13Inst):
    return get(this.iM13Inst)

proc strConcatLen(this: ExprOpsParens): int = 
  if isSome(this.strConcatLenInst):
    return get(this.strConcatLenInst)
  this.strConcatLenInst = int(len(($this.str0To4 & $this.str5To9)))
  if isSome(this.strConcatLenInst):
    return get(this.strConcatLenInst)

proc strConcatToI(this: ExprOpsParens): int = 
  if isSome(this.strConcatToIInst):
    return get(this.strConcatToIInst)
  this.strConcatToIInst = int(($this.str0To4 & $this.str5To9).parseInt(10))
  if isSome(this.strConcatToIInst):
    return get(this.strConcatToIInst)

proc i42(this: ExprOpsParens): int8 = 
  if isSome(this.i42Inst):
    return get(this.i42Inst)
  this.i42Inst = int8(42)
  if isSome(this.i42Inst):
    return get(this.i42Inst)

proc iSumToStr(this: ExprOpsParens): string = 
  if this.iSumToStrInst.len != 0:
    return this.iSumToStrInst
  this.iSumToStrInst = string(intToStr((this.i42 + this.iM13)))
  if this.iSumToStrInst.len != 0:
    return this.iSumToStrInst

proc boolEq(this: ExprOpsParens): int = 
  if isSome(this.boolEqInst):
    return get(this.boolEqInst)
  this.boolEqInst = int((if false == true: 1 else: 0))
  if isSome(this.boolEqInst):
    return get(this.boolEqInst)

proc str5To9(this: ExprOpsParens): string = 
  if this.str5To9Inst.len != 0:
    return this.str5To9Inst
  this.str5To9Inst = string("56789")
  if this.str5To9Inst.len != 0:
    return this.str5To9Inst

proc strConcatSubstr2To7(this: ExprOpsParens): string = 
  if this.strConcatSubstr2To7Inst.len != 0:
    return this.strConcatSubstr2To7Inst
  this.strConcatSubstr2To7Inst = string(($this.str0To4 & $this.str5To9).substr(2, 7 - 1))
  if this.strConcatSubstr2To7Inst.len != 0:
    return this.strConcatSubstr2To7Inst

proc fromFile*(_: typedesc[ExprOpsParens], filename: string): ExprOpsParens =
  ExprOpsParens.read(newKaitaiFileStream(filename), nil, nil)


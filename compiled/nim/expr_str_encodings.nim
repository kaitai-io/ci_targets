import kaitai_struct_nim_runtime
import options

type
  ExprStrEncodings* = ref object of KaitaiStruct
    `lenOf1`*: uint16
    `str1`*: string
    `lenOf2`*: uint16
    `str2`*: string
    `lenOf3`*: uint16
    `str3`*: string
    `lenOf4`*: uint16
    `str4`*: string
    `parent`*: KaitaiStruct
    `str4GtStrFromBytesInst`*: bool
    `str1EqInst`*: bool
    `str4EqInst`*: bool
    `str3EqStr2Inst`*: bool
    `str4GtStrCalcInst`*: bool
    `str2EqInst`*: bool
    `str3EqInst`*: bool

proc read*(_: typedesc[ExprStrEncodings], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprStrEncodings

proc str4GtStrFromBytes*(this: ExprStrEncodings): bool
proc str1Eq*(this: ExprStrEncodings): bool
proc str4Eq*(this: ExprStrEncodings): bool
proc str3EqStr2*(this: ExprStrEncodings): bool
proc str4GtStrCalc*(this: ExprStrEncodings): bool
proc str2Eq*(this: ExprStrEncodings): bool
proc str3Eq*(this: ExprStrEncodings): bool

proc read*(_: typedesc[ExprStrEncodings], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprStrEncodings =
  template this: untyped = result
  this = new(ExprStrEncodings)
  let root = if root == nil: cast[ExprStrEncodings](this) else: cast[ExprStrEncodings](root)
  this.io = io
  this.root = root
  this.parent = parent

  let lenOf1Expr = this.io.readU2le()
  this.lenOf1 = lenOf1Expr
  let str1Expr = encode(this.io.readBytes(int(this.lenOf1)), "ASCII")
  this.str1 = str1Expr
  let lenOf2Expr = this.io.readU2le()
  this.lenOf2 = lenOf2Expr
  let str2Expr = encode(this.io.readBytes(int(this.lenOf2)), "UTF-8")
  this.str2 = str2Expr
  let lenOf3Expr = this.io.readU2le()
  this.lenOf3 = lenOf3Expr
  let str3Expr = encode(this.io.readBytes(int(this.lenOf3)), "SJIS")
  this.str3 = str3Expr
  let lenOf4Expr = this.io.readU2le()
  this.lenOf4 = lenOf4Expr
  let str4Expr = encode(this.io.readBytes(int(this.lenOf4)), "CP437")
  this.str4 = str4Expr

proc str4GtStrFromBytes(this: ExprStrEncodings): bool = 
  if this.str4GtStrFromBytesInst != nil:
    return this.str4GtStrFromBytesInst
  let str4GtStrFromBytesInstExpr = bool(this.str4 > encode(@[-76'u8], "CP437"))
  this.str4GtStrFromBytesInst = str4GtStrFromBytesInstExpr
  if this.str4GtStrFromBytesInst != nil:
    return this.str4GtStrFromBytesInst

proc str1Eq(this: ExprStrEncodings): bool = 
  if this.str1EqInst != nil:
    return this.str1EqInst
  let str1EqInstExpr = bool(this.str1 == "Some ASCII")
  this.str1EqInst = str1EqInstExpr
  if this.str1EqInst != nil:
    return this.str1EqInst

proc str4Eq(this: ExprStrEncodings): bool = 
  if this.str4EqInst != nil:
    return this.str4EqInst
  let str4EqInstExpr = bool(this.str4 == "\u2591\u2592\u2593")
  this.str4EqInst = str4EqInstExpr
  if this.str4EqInst != nil:
    return this.str4EqInst

proc str3EqStr2(this: ExprStrEncodings): bool = 
  if this.str3EqStr2Inst != nil:
    return this.str3EqStr2Inst
  let str3EqStr2InstExpr = bool(this.str3 == this.str2)
  this.str3EqStr2Inst = str3EqStr2InstExpr
  if this.str3EqStr2Inst != nil:
    return this.str3EqStr2Inst

proc str4GtStrCalc(this: ExprStrEncodings): bool = 
  if this.str4GtStrCalcInst != nil:
    return this.str4GtStrCalcInst
  let str4GtStrCalcInstExpr = bool(this.str4 > "\u2524")
  this.str4GtStrCalcInst = str4GtStrCalcInstExpr
  if this.str4GtStrCalcInst != nil:
    return this.str4GtStrCalcInst

proc str2Eq(this: ExprStrEncodings): bool = 
  if this.str2EqInst != nil:
    return this.str2EqInst
  let str2EqInstExpr = bool(this.str2 == "\u3053\u3093\u306b\u3061\u306f")
  this.str2EqInst = str2EqInstExpr
  if this.str2EqInst != nil:
    return this.str2EqInst

proc str3Eq(this: ExprStrEncodings): bool = 
  if this.str3EqInst != nil:
    return this.str3EqInst
  let str3EqInstExpr = bool(this.str3 == "\u3053\u3093\u306b\u3061\u306f")
  this.str3EqInst = str3EqInstExpr
  if this.str3EqInst != nil:
    return this.str3EqInst

proc fromFile*(_: typedesc[ExprStrEncodings], filename: string): ExprStrEncodings =
  ExprStrEncodings.read(newKaitaiFileStream(filename), nil, nil)


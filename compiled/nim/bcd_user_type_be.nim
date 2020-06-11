import kaitai_struct_nim_runtime
import options
import strutils

type
  BcdUserTypeBe* = ref object of KaitaiStruct
    `ltr`*: BcdUserTypeBe_LtrObj
    `rtl`*: BcdUserTypeBe_RtlObj
    `leadingZeroLtr`*: BcdUserTypeBe_LeadingZeroLtrObj
    `parent`*: KaitaiStruct
    `rawLtr`*: seq[byte]
    `rawRtl`*: seq[byte]
    `rawLeadingZeroLtr`*: seq[byte]
  BcdUserTypeBe_LtrObj* = ref object of KaitaiStruct
    `b1`*: uint8
    `b2`*: uint8
    `b3`*: uint8
    `b4`*: uint8
    `parent`*: BcdUserTypeBe
    `asIntInst`*: int
    `digit2Inst`*: int
    `digit4Inst`*: int
    `digit3Inst`*: int
    `digit5Inst`*: int
    `digit8Inst`*: int
    `digit6Inst`*: int
    `asStrInst`*: string
    `digit1Inst`*: int
    `digit7Inst`*: int
  BcdUserTypeBe_RtlObj* = ref object of KaitaiStruct
    `b1`*: uint8
    `b2`*: uint8
    `b3`*: uint8
    `b4`*: uint8
    `parent`*: BcdUserTypeBe
    `asIntInst`*: int
    `digit2Inst`*: int
    `digit4Inst`*: int
    `digit3Inst`*: int
    `digit5Inst`*: int
    `digit8Inst`*: int
    `digit6Inst`*: int
    `asStrInst`*: string
    `digit1Inst`*: int
    `digit7Inst`*: int
  BcdUserTypeBe_LeadingZeroLtrObj* = ref object of KaitaiStruct
    `b1`*: uint8
    `b2`*: uint8
    `b3`*: uint8
    `b4`*: uint8
    `parent`*: BcdUserTypeBe
    `asIntInst`*: int
    `digit2Inst`*: int
    `digit4Inst`*: int
    `digit3Inst`*: int
    `digit5Inst`*: int
    `digit8Inst`*: int
    `digit6Inst`*: int
    `asStrInst`*: string
    `digit1Inst`*: int
    `digit7Inst`*: int

proc read*(_: typedesc[BcdUserTypeBe], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BcdUserTypeBe
proc read*(_: typedesc[BcdUserTypeBe_LtrObj], io: KaitaiStream, root: KaitaiStruct, parent: BcdUserTypeBe): BcdUserTypeBe_LtrObj
proc read*(_: typedesc[BcdUserTypeBe_RtlObj], io: KaitaiStream, root: KaitaiStruct, parent: BcdUserTypeBe): BcdUserTypeBe_RtlObj
proc read*(_: typedesc[BcdUserTypeBe_LeadingZeroLtrObj], io: KaitaiStream, root: KaitaiStruct, parent: BcdUserTypeBe): BcdUserTypeBe_LeadingZeroLtrObj

proc asInt*(this: BcdUserTypeBe_LtrObj): int
proc digit2*(this: BcdUserTypeBe_LtrObj): int
proc digit4*(this: BcdUserTypeBe_LtrObj): int
proc digit3*(this: BcdUserTypeBe_LtrObj): int
proc digit5*(this: BcdUserTypeBe_LtrObj): int
proc digit8*(this: BcdUserTypeBe_LtrObj): int
proc digit6*(this: BcdUserTypeBe_LtrObj): int
proc asStr*(this: BcdUserTypeBe_LtrObj): string
proc digit1*(this: BcdUserTypeBe_LtrObj): int
proc digit7*(this: BcdUserTypeBe_LtrObj): int
proc asInt*(this: BcdUserTypeBe_RtlObj): int
proc digit2*(this: BcdUserTypeBe_RtlObj): int
proc digit4*(this: BcdUserTypeBe_RtlObj): int
proc digit3*(this: BcdUserTypeBe_RtlObj): int
proc digit5*(this: BcdUserTypeBe_RtlObj): int
proc digit8*(this: BcdUserTypeBe_RtlObj): int
proc digit6*(this: BcdUserTypeBe_RtlObj): int
proc asStr*(this: BcdUserTypeBe_RtlObj): string
proc digit1*(this: BcdUserTypeBe_RtlObj): int
proc digit7*(this: BcdUserTypeBe_RtlObj): int
proc asInt*(this: BcdUserTypeBe_LeadingZeroLtrObj): int
proc digit2*(this: BcdUserTypeBe_LeadingZeroLtrObj): int
proc digit4*(this: BcdUserTypeBe_LeadingZeroLtrObj): int
proc digit3*(this: BcdUserTypeBe_LeadingZeroLtrObj): int
proc digit5*(this: BcdUserTypeBe_LeadingZeroLtrObj): int
proc digit8*(this: BcdUserTypeBe_LeadingZeroLtrObj): int
proc digit6*(this: BcdUserTypeBe_LeadingZeroLtrObj): int
proc asStr*(this: BcdUserTypeBe_LeadingZeroLtrObj): string
proc digit1*(this: BcdUserTypeBe_LeadingZeroLtrObj): int
proc digit7*(this: BcdUserTypeBe_LeadingZeroLtrObj): int

proc read*(_: typedesc[BcdUserTypeBe], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BcdUserTypeBe =
  template this: untyped = result
  this = new(BcdUserTypeBe)
  let root = if root == nil: cast[BcdUserTypeBe](this) else: cast[BcdUserTypeBe](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawLtrExpr = this.io.readBytes(int(4))
  this.rawLtr = rawLtrExpr
  let rawLtrIo = newKaitaiStream(rawLtrExpr)
  let ltrExpr = BcdUserTypeBe_LtrObj.read(rawLtrIo, this.root, this)
  this.ltr = ltrExpr
  let rawRtlExpr = this.io.readBytes(int(4))
  this.rawRtl = rawRtlExpr
  let rawRtlIo = newKaitaiStream(rawRtlExpr)
  let rtlExpr = BcdUserTypeBe_RtlObj.read(rawRtlIo, this.root, this)
  this.rtl = rtlExpr
  let rawLeadingZeroLtrExpr = this.io.readBytes(int(4))
  this.rawLeadingZeroLtr = rawLeadingZeroLtrExpr
  let rawLeadingZeroLtrIo = newKaitaiStream(rawLeadingZeroLtrExpr)
  let leadingZeroLtrExpr = BcdUserTypeBe_LeadingZeroLtrObj.read(rawLeadingZeroLtrIo, this.root, this)
  this.leadingZeroLtr = leadingZeroLtrExpr

proc fromFile*(_: typedesc[BcdUserTypeBe], filename: string): BcdUserTypeBe =
  BcdUserTypeBe.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[BcdUserTypeBe_LtrObj], io: KaitaiStream, root: KaitaiStruct, parent: BcdUserTypeBe): BcdUserTypeBe_LtrObj =
  template this: untyped = result
  this = new(BcdUserTypeBe_LtrObj)
  let root = if root == nil: cast[BcdUserTypeBe](this) else: cast[BcdUserTypeBe](root)
  this.io = io
  this.root = root
  this.parent = parent

  let b1Expr = this.io.readU1()
  this.b1 = b1Expr
  let b2Expr = this.io.readU1()
  this.b2 = b2Expr
  let b3Expr = this.io.readU1()
  this.b3 = b3Expr
  let b4Expr = this.io.readU1()
  this.b4 = b4Expr

proc asInt(this: BcdUserTypeBe_LtrObj): int = 
  if this.asIntInst != nil:
    return this.asIntInst
  let asIntInstExpr = int(((((((((this.digit8 * 1) + (this.digit7 * 10)) + (this.digit6 * 100)) + (this.digit5 * 1000)) + (this.digit4 * 10000)) + (this.digit3 * 100000)) + (this.digit2 * 1000000)) + (this.digit1 * 10000000)))
  this.asIntInst = asIntInstExpr
  if this.asIntInst != nil:
    return this.asIntInst

proc digit2(this: BcdUserTypeBe_LtrObj): int = 
  if this.digit2Inst != nil:
    return this.digit2Inst
  let digit2InstExpr = int((this.b1 and 15))
  this.digit2Inst = digit2InstExpr
  if this.digit2Inst != nil:
    return this.digit2Inst

proc digit4(this: BcdUserTypeBe_LtrObj): int = 
  if this.digit4Inst != nil:
    return this.digit4Inst
  let digit4InstExpr = int((this.b2 and 15))
  this.digit4Inst = digit4InstExpr
  if this.digit4Inst != nil:
    return this.digit4Inst

proc digit3(this: BcdUserTypeBe_LtrObj): int = 
  if this.digit3Inst != nil:
    return this.digit3Inst
  let digit3InstExpr = int(((this.b2 and 240) shr 4))
  this.digit3Inst = digit3InstExpr
  if this.digit3Inst != nil:
    return this.digit3Inst

proc digit5(this: BcdUserTypeBe_LtrObj): int = 
  if this.digit5Inst != nil:
    return this.digit5Inst
  let digit5InstExpr = int(((this.b3 and 240) shr 4))
  this.digit5Inst = digit5InstExpr
  if this.digit5Inst != nil:
    return this.digit5Inst

proc digit8(this: BcdUserTypeBe_LtrObj): int = 
  if this.digit8Inst != nil:
    return this.digit8Inst
  let digit8InstExpr = int((this.b4 and 15))
  this.digit8Inst = digit8InstExpr
  if this.digit8Inst != nil:
    return this.digit8Inst

proc digit6(this: BcdUserTypeBe_LtrObj): int = 
  if this.digit6Inst != nil:
    return this.digit6Inst
  let digit6InstExpr = int((this.b3 and 15))
  this.digit6Inst = digit6InstExpr
  if this.digit6Inst != nil:
    return this.digit6Inst

proc asStr(this: BcdUserTypeBe_LtrObj): string = 
  if this.asStrInst.len != 0:
    return this.asStrInst
  let asStrInstExpr = string(($($($($($($($intToStr(int(this.digit1)) & $intToStr(int(this.digit2))) & $intToStr(int(this.digit3))) & $intToStr(int(this.digit4))) & $intToStr(int(this.digit5))) & $intToStr(int(this.digit6))) & $intToStr(int(this.digit7))) & $intToStr(int(this.digit8))))
  this.asStrInst = asStrInstExpr
  if this.asStrInst.len != 0:
    return this.asStrInst

proc digit1(this: BcdUserTypeBe_LtrObj): int = 
  if this.digit1Inst != nil:
    return this.digit1Inst
  let digit1InstExpr = int(((this.b1 and 240) shr 4))
  this.digit1Inst = digit1InstExpr
  if this.digit1Inst != nil:
    return this.digit1Inst

proc digit7(this: BcdUserTypeBe_LtrObj): int = 
  if this.digit7Inst != nil:
    return this.digit7Inst
  let digit7InstExpr = int(((this.b4 and 240) shr 4))
  this.digit7Inst = digit7InstExpr
  if this.digit7Inst != nil:
    return this.digit7Inst

proc fromFile*(_: typedesc[BcdUserTypeBe_LtrObj], filename: string): BcdUserTypeBe_LtrObj =
  BcdUserTypeBe_LtrObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[BcdUserTypeBe_RtlObj], io: KaitaiStream, root: KaitaiStruct, parent: BcdUserTypeBe): BcdUserTypeBe_RtlObj =
  template this: untyped = result
  this = new(BcdUserTypeBe_RtlObj)
  let root = if root == nil: cast[BcdUserTypeBe](this) else: cast[BcdUserTypeBe](root)
  this.io = io
  this.root = root
  this.parent = parent

  let b1Expr = this.io.readU1()
  this.b1 = b1Expr
  let b2Expr = this.io.readU1()
  this.b2 = b2Expr
  let b3Expr = this.io.readU1()
  this.b3 = b3Expr
  let b4Expr = this.io.readU1()
  this.b4 = b4Expr

proc asInt(this: BcdUserTypeBe_RtlObj): int = 
  if this.asIntInst != nil:
    return this.asIntInst
  let asIntInstExpr = int(((((((((this.digit1 * 1) + (this.digit2 * 10)) + (this.digit3 * 100)) + (this.digit4 * 1000)) + (this.digit5 * 10000)) + (this.digit6 * 100000)) + (this.digit7 * 1000000)) + (this.digit8 * 10000000)))
  this.asIntInst = asIntInstExpr
  if this.asIntInst != nil:
    return this.asIntInst

proc digit2(this: BcdUserTypeBe_RtlObj): int = 
  if this.digit2Inst != nil:
    return this.digit2Inst
  let digit2InstExpr = int((this.b1 and 15))
  this.digit2Inst = digit2InstExpr
  if this.digit2Inst != nil:
    return this.digit2Inst

proc digit4(this: BcdUserTypeBe_RtlObj): int = 
  if this.digit4Inst != nil:
    return this.digit4Inst
  let digit4InstExpr = int((this.b2 and 15))
  this.digit4Inst = digit4InstExpr
  if this.digit4Inst != nil:
    return this.digit4Inst

proc digit3(this: BcdUserTypeBe_RtlObj): int = 
  if this.digit3Inst != nil:
    return this.digit3Inst
  let digit3InstExpr = int(((this.b2 and 240) shr 4))
  this.digit3Inst = digit3InstExpr
  if this.digit3Inst != nil:
    return this.digit3Inst

proc digit5(this: BcdUserTypeBe_RtlObj): int = 
  if this.digit5Inst != nil:
    return this.digit5Inst
  let digit5InstExpr = int(((this.b3 and 240) shr 4))
  this.digit5Inst = digit5InstExpr
  if this.digit5Inst != nil:
    return this.digit5Inst

proc digit8(this: BcdUserTypeBe_RtlObj): int = 
  if this.digit8Inst != nil:
    return this.digit8Inst
  let digit8InstExpr = int((this.b4 and 15))
  this.digit8Inst = digit8InstExpr
  if this.digit8Inst != nil:
    return this.digit8Inst

proc digit6(this: BcdUserTypeBe_RtlObj): int = 
  if this.digit6Inst != nil:
    return this.digit6Inst
  let digit6InstExpr = int((this.b3 and 15))
  this.digit6Inst = digit6InstExpr
  if this.digit6Inst != nil:
    return this.digit6Inst

proc asStr(this: BcdUserTypeBe_RtlObj): string = 
  if this.asStrInst.len != 0:
    return this.asStrInst
  let asStrInstExpr = string(($($($($($($($intToStr(int(this.digit8)) & $intToStr(int(this.digit7))) & $intToStr(int(this.digit6))) & $intToStr(int(this.digit5))) & $intToStr(int(this.digit4))) & $intToStr(int(this.digit3))) & $intToStr(int(this.digit2))) & $intToStr(int(this.digit1))))
  this.asStrInst = asStrInstExpr
  if this.asStrInst.len != 0:
    return this.asStrInst

proc digit1(this: BcdUserTypeBe_RtlObj): int = 
  if this.digit1Inst != nil:
    return this.digit1Inst
  let digit1InstExpr = int(((this.b1 and 240) shr 4))
  this.digit1Inst = digit1InstExpr
  if this.digit1Inst != nil:
    return this.digit1Inst

proc digit7(this: BcdUserTypeBe_RtlObj): int = 
  if this.digit7Inst != nil:
    return this.digit7Inst
  let digit7InstExpr = int(((this.b4 and 240) shr 4))
  this.digit7Inst = digit7InstExpr
  if this.digit7Inst != nil:
    return this.digit7Inst

proc fromFile*(_: typedesc[BcdUserTypeBe_RtlObj], filename: string): BcdUserTypeBe_RtlObj =
  BcdUserTypeBe_RtlObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[BcdUserTypeBe_LeadingZeroLtrObj], io: KaitaiStream, root: KaitaiStruct, parent: BcdUserTypeBe): BcdUserTypeBe_LeadingZeroLtrObj =
  template this: untyped = result
  this = new(BcdUserTypeBe_LeadingZeroLtrObj)
  let root = if root == nil: cast[BcdUserTypeBe](this) else: cast[BcdUserTypeBe](root)
  this.io = io
  this.root = root
  this.parent = parent

  let b1Expr = this.io.readU1()
  this.b1 = b1Expr
  let b2Expr = this.io.readU1()
  this.b2 = b2Expr
  let b3Expr = this.io.readU1()
  this.b3 = b3Expr
  let b4Expr = this.io.readU1()
  this.b4 = b4Expr

proc asInt(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if this.asIntInst != nil:
    return this.asIntInst
  let asIntInstExpr = int(((((((((this.digit8 * 1) + (this.digit7 * 10)) + (this.digit6 * 100)) + (this.digit5 * 1000)) + (this.digit4 * 10000)) + (this.digit3 * 100000)) + (this.digit2 * 1000000)) + (this.digit1 * 10000000)))
  this.asIntInst = asIntInstExpr
  if this.asIntInst != nil:
    return this.asIntInst

proc digit2(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if this.digit2Inst != nil:
    return this.digit2Inst
  let digit2InstExpr = int((this.b1 and 15))
  this.digit2Inst = digit2InstExpr
  if this.digit2Inst != nil:
    return this.digit2Inst

proc digit4(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if this.digit4Inst != nil:
    return this.digit4Inst
  let digit4InstExpr = int((this.b2 and 15))
  this.digit4Inst = digit4InstExpr
  if this.digit4Inst != nil:
    return this.digit4Inst

proc digit3(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if this.digit3Inst != nil:
    return this.digit3Inst
  let digit3InstExpr = int(((this.b2 and 240) shr 4))
  this.digit3Inst = digit3InstExpr
  if this.digit3Inst != nil:
    return this.digit3Inst

proc digit5(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if this.digit5Inst != nil:
    return this.digit5Inst
  let digit5InstExpr = int(((this.b3 and 240) shr 4))
  this.digit5Inst = digit5InstExpr
  if this.digit5Inst != nil:
    return this.digit5Inst

proc digit8(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if this.digit8Inst != nil:
    return this.digit8Inst
  let digit8InstExpr = int((this.b4 and 15))
  this.digit8Inst = digit8InstExpr
  if this.digit8Inst != nil:
    return this.digit8Inst

proc digit6(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if this.digit6Inst != nil:
    return this.digit6Inst
  let digit6InstExpr = int((this.b3 and 15))
  this.digit6Inst = digit6InstExpr
  if this.digit6Inst != nil:
    return this.digit6Inst

proc asStr(this: BcdUserTypeBe_LeadingZeroLtrObj): string = 
  if this.asStrInst.len != 0:
    return this.asStrInst
  let asStrInstExpr = string(($($($($($($($intToStr(int(this.digit1)) & $intToStr(int(this.digit2))) & $intToStr(int(this.digit3))) & $intToStr(int(this.digit4))) & $intToStr(int(this.digit5))) & $intToStr(int(this.digit6))) & $intToStr(int(this.digit7))) & $intToStr(int(this.digit8))))
  this.asStrInst = asStrInstExpr
  if this.asStrInst.len != 0:
    return this.asStrInst

proc digit1(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if this.digit1Inst != nil:
    return this.digit1Inst
  let digit1InstExpr = int(((this.b1 and 240) shr 4))
  this.digit1Inst = digit1InstExpr
  if this.digit1Inst != nil:
    return this.digit1Inst

proc digit7(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if this.digit7Inst != nil:
    return this.digit7Inst
  let digit7InstExpr = int(((this.b4 and 240) shr 4))
  this.digit7Inst = digit7InstExpr
  if this.digit7Inst != nil:
    return this.digit7Inst

proc fromFile*(_: typedesc[BcdUserTypeBe_LeadingZeroLtrObj], filename: string): BcdUserTypeBe_LeadingZeroLtrObj =
  BcdUserTypeBe_LeadingZeroLtrObj.read(newKaitaiFileStream(filename), nil, nil)


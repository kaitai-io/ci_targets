import kaitai_struct_nim_runtime
import options
import strutils

type
  BcdUserTypeLe* = ref object of KaitaiStruct
    `ltr`*: BcdUserTypeLe_LtrObj
    `rtl`*: BcdUserTypeLe_RtlObj
    `leadingZeroLtr`*: BcdUserTypeLe_LeadingZeroLtrObj
    `parent`*: KaitaiStruct
    `rawLtr`*: seq[byte]
    `rawRtl`*: seq[byte]
    `rawLeadingZeroLtr`*: seq[byte]
  BcdUserTypeLe_LeadingZeroLtrObj* = ref object of KaitaiStruct
    `b1`*: uint8
    `b2`*: uint8
    `b3`*: uint8
    `b4`*: uint8
    `parent`*: BcdUserTypeLe
    `asIntInst`: int
    `asIntInstFlag`: bool
    `asStrInst`: string
    `asStrInstFlag`: bool
    `digit1Inst`: int
    `digit1InstFlag`: bool
    `digit2Inst`: int
    `digit2InstFlag`: bool
    `digit3Inst`: int
    `digit3InstFlag`: bool
    `digit4Inst`: int
    `digit4InstFlag`: bool
    `digit5Inst`: int
    `digit5InstFlag`: bool
    `digit6Inst`: int
    `digit6InstFlag`: bool
    `digit7Inst`: int
    `digit7InstFlag`: bool
    `digit8Inst`: int
    `digit8InstFlag`: bool
  BcdUserTypeLe_LtrObj* = ref object of KaitaiStruct
    `b1`*: uint8
    `b2`*: uint8
    `b3`*: uint8
    `b4`*: uint8
    `parent`*: BcdUserTypeLe
    `asIntInst`: int
    `asIntInstFlag`: bool
    `asStrInst`: string
    `asStrInstFlag`: bool
    `digit1Inst`: int
    `digit1InstFlag`: bool
    `digit2Inst`: int
    `digit2InstFlag`: bool
    `digit3Inst`: int
    `digit3InstFlag`: bool
    `digit4Inst`: int
    `digit4InstFlag`: bool
    `digit5Inst`: int
    `digit5InstFlag`: bool
    `digit6Inst`: int
    `digit6InstFlag`: bool
    `digit7Inst`: int
    `digit7InstFlag`: bool
    `digit8Inst`: int
    `digit8InstFlag`: bool
  BcdUserTypeLe_RtlObj* = ref object of KaitaiStruct
    `b1`*: uint8
    `b2`*: uint8
    `b3`*: uint8
    `b4`*: uint8
    `parent`*: BcdUserTypeLe
    `asIntInst`: int
    `asIntInstFlag`: bool
    `asStrInst`: string
    `asStrInstFlag`: bool
    `digit1Inst`: int
    `digit1InstFlag`: bool
    `digit2Inst`: int
    `digit2InstFlag`: bool
    `digit3Inst`: int
    `digit3InstFlag`: bool
    `digit4Inst`: int
    `digit4InstFlag`: bool
    `digit5Inst`: int
    `digit5InstFlag`: bool
    `digit6Inst`: int
    `digit6InstFlag`: bool
    `digit7Inst`: int
    `digit7InstFlag`: bool
    `digit8Inst`: int
    `digit8InstFlag`: bool

proc read*(_: typedesc[BcdUserTypeLe], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BcdUserTypeLe
proc read*(_: typedesc[BcdUserTypeLe_LeadingZeroLtrObj], io: KaitaiStream, root: KaitaiStruct, parent: BcdUserTypeLe): BcdUserTypeLe_LeadingZeroLtrObj
proc read*(_: typedesc[BcdUserTypeLe_LtrObj], io: KaitaiStream, root: KaitaiStruct, parent: BcdUserTypeLe): BcdUserTypeLe_LtrObj
proc read*(_: typedesc[BcdUserTypeLe_RtlObj], io: KaitaiStream, root: KaitaiStruct, parent: BcdUserTypeLe): BcdUserTypeLe_RtlObj

proc asInt*(this: BcdUserTypeLe_LeadingZeroLtrObj): int
proc asStr*(this: BcdUserTypeLe_LeadingZeroLtrObj): string
proc digit1*(this: BcdUserTypeLe_LeadingZeroLtrObj): int
proc digit2*(this: BcdUserTypeLe_LeadingZeroLtrObj): int
proc digit3*(this: BcdUserTypeLe_LeadingZeroLtrObj): int
proc digit4*(this: BcdUserTypeLe_LeadingZeroLtrObj): int
proc digit5*(this: BcdUserTypeLe_LeadingZeroLtrObj): int
proc digit6*(this: BcdUserTypeLe_LeadingZeroLtrObj): int
proc digit7*(this: BcdUserTypeLe_LeadingZeroLtrObj): int
proc digit8*(this: BcdUserTypeLe_LeadingZeroLtrObj): int
proc asInt*(this: BcdUserTypeLe_LtrObj): int
proc asStr*(this: BcdUserTypeLe_LtrObj): string
proc digit1*(this: BcdUserTypeLe_LtrObj): int
proc digit2*(this: BcdUserTypeLe_LtrObj): int
proc digit3*(this: BcdUserTypeLe_LtrObj): int
proc digit4*(this: BcdUserTypeLe_LtrObj): int
proc digit5*(this: BcdUserTypeLe_LtrObj): int
proc digit6*(this: BcdUserTypeLe_LtrObj): int
proc digit7*(this: BcdUserTypeLe_LtrObj): int
proc digit8*(this: BcdUserTypeLe_LtrObj): int
proc asInt*(this: BcdUserTypeLe_RtlObj): int
proc asStr*(this: BcdUserTypeLe_RtlObj): string
proc digit1*(this: BcdUserTypeLe_RtlObj): int
proc digit2*(this: BcdUserTypeLe_RtlObj): int
proc digit3*(this: BcdUserTypeLe_RtlObj): int
proc digit4*(this: BcdUserTypeLe_RtlObj): int
proc digit5*(this: BcdUserTypeLe_RtlObj): int
proc digit6*(this: BcdUserTypeLe_RtlObj): int
proc digit7*(this: BcdUserTypeLe_RtlObj): int
proc digit8*(this: BcdUserTypeLe_RtlObj): int

proc read*(_: typedesc[BcdUserTypeLe], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BcdUserTypeLe =
  template this: untyped = result
  this = new(BcdUserTypeLe)
  let root = if root == nil: cast[BcdUserTypeLe](this) else: cast[BcdUserTypeLe](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawLtrExpr = this.io.readBytes(int(4))
  this.rawLtr = rawLtrExpr
  let rawLtrIo = newKaitaiStream(rawLtrExpr)
  let ltrExpr = BcdUserTypeLe_LtrObj.read(rawLtrIo, this.root, this)
  this.ltr = ltrExpr
  let rawRtlExpr = this.io.readBytes(int(4))
  this.rawRtl = rawRtlExpr
  let rawRtlIo = newKaitaiStream(rawRtlExpr)
  let rtlExpr = BcdUserTypeLe_RtlObj.read(rawRtlIo, this.root, this)
  this.rtl = rtlExpr
  let rawLeadingZeroLtrExpr = this.io.readBytes(int(4))
  this.rawLeadingZeroLtr = rawLeadingZeroLtrExpr
  let rawLeadingZeroLtrIo = newKaitaiStream(rawLeadingZeroLtrExpr)
  let leadingZeroLtrExpr = BcdUserTypeLe_LeadingZeroLtrObj.read(rawLeadingZeroLtrIo, this.root, this)
  this.leadingZeroLtr = leadingZeroLtrExpr

proc fromFile*(_: typedesc[BcdUserTypeLe], filename: string): BcdUserTypeLe =
  BcdUserTypeLe.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[BcdUserTypeLe_LeadingZeroLtrObj], io: KaitaiStream, root: KaitaiStruct, parent: BcdUserTypeLe): BcdUserTypeLe_LeadingZeroLtrObj =
  template this: untyped = result
  this = new(BcdUserTypeLe_LeadingZeroLtrObj)
  let root = if root == nil: cast[BcdUserTypeLe](this) else: cast[BcdUserTypeLe](root)
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

proc asInt(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if this.asIntInstFlag:
    return this.asIntInst
  let asIntInstExpr = int(((((((((this.digit8 * 1) + (this.digit7 * 10)) + (this.digit6 * 100)) + (this.digit5 * 1000)) + (this.digit4 * 10000)) + (this.digit3 * 100000)) + (this.digit2 * 1000000)) + (this.digit1 * 10000000)))
  this.asIntInst = asIntInstExpr
  this.asIntInstFlag = true
  return this.asIntInst

proc asStr(this: BcdUserTypeLe_LeadingZeroLtrObj): string = 
  if this.asStrInstFlag:
    return this.asStrInst
  let asStrInstExpr = string(($($($($($($($intToStr(int(this.digit1)) & $intToStr(int(this.digit2))) & $intToStr(int(this.digit3))) & $intToStr(int(this.digit4))) & $intToStr(int(this.digit5))) & $intToStr(int(this.digit6))) & $intToStr(int(this.digit7))) & $intToStr(int(this.digit8))))
  this.asStrInst = asStrInstExpr
  this.asStrInstFlag = true
  return this.asStrInst

proc digit1(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if this.digit1InstFlag:
    return this.digit1Inst
  let digit1InstExpr = int(((this.b4 and 240) shr 4))
  this.digit1Inst = digit1InstExpr
  this.digit1InstFlag = true
  return this.digit1Inst

proc digit2(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if this.digit2InstFlag:
    return this.digit2Inst
  let digit2InstExpr = int((this.b4 and 15))
  this.digit2Inst = digit2InstExpr
  this.digit2InstFlag = true
  return this.digit2Inst

proc digit3(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if this.digit3InstFlag:
    return this.digit3Inst
  let digit3InstExpr = int(((this.b3 and 240) shr 4))
  this.digit3Inst = digit3InstExpr
  this.digit3InstFlag = true
  return this.digit3Inst

proc digit4(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if this.digit4InstFlag:
    return this.digit4Inst
  let digit4InstExpr = int((this.b3 and 15))
  this.digit4Inst = digit4InstExpr
  this.digit4InstFlag = true
  return this.digit4Inst

proc digit5(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if this.digit5InstFlag:
    return this.digit5Inst
  let digit5InstExpr = int(((this.b2 and 240) shr 4))
  this.digit5Inst = digit5InstExpr
  this.digit5InstFlag = true
  return this.digit5Inst

proc digit6(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if this.digit6InstFlag:
    return this.digit6Inst
  let digit6InstExpr = int((this.b2 and 15))
  this.digit6Inst = digit6InstExpr
  this.digit6InstFlag = true
  return this.digit6Inst

proc digit7(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if this.digit7InstFlag:
    return this.digit7Inst
  let digit7InstExpr = int(((this.b1 and 240) shr 4))
  this.digit7Inst = digit7InstExpr
  this.digit7InstFlag = true
  return this.digit7Inst

proc digit8(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if this.digit8InstFlag:
    return this.digit8Inst
  let digit8InstExpr = int((this.b1 and 15))
  this.digit8Inst = digit8InstExpr
  this.digit8InstFlag = true
  return this.digit8Inst

proc fromFile*(_: typedesc[BcdUserTypeLe_LeadingZeroLtrObj], filename: string): BcdUserTypeLe_LeadingZeroLtrObj =
  BcdUserTypeLe_LeadingZeroLtrObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[BcdUserTypeLe_LtrObj], io: KaitaiStream, root: KaitaiStruct, parent: BcdUserTypeLe): BcdUserTypeLe_LtrObj =
  template this: untyped = result
  this = new(BcdUserTypeLe_LtrObj)
  let root = if root == nil: cast[BcdUserTypeLe](this) else: cast[BcdUserTypeLe](root)
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

proc asInt(this: BcdUserTypeLe_LtrObj): int = 
  if this.asIntInstFlag:
    return this.asIntInst
  let asIntInstExpr = int(((((((((this.digit8 * 1) + (this.digit7 * 10)) + (this.digit6 * 100)) + (this.digit5 * 1000)) + (this.digit4 * 10000)) + (this.digit3 * 100000)) + (this.digit2 * 1000000)) + (this.digit1 * 10000000)))
  this.asIntInst = asIntInstExpr
  this.asIntInstFlag = true
  return this.asIntInst

proc asStr(this: BcdUserTypeLe_LtrObj): string = 
  if this.asStrInstFlag:
    return this.asStrInst
  let asStrInstExpr = string(($($($($($($($intToStr(int(this.digit1)) & $intToStr(int(this.digit2))) & $intToStr(int(this.digit3))) & $intToStr(int(this.digit4))) & $intToStr(int(this.digit5))) & $intToStr(int(this.digit6))) & $intToStr(int(this.digit7))) & $intToStr(int(this.digit8))))
  this.asStrInst = asStrInstExpr
  this.asStrInstFlag = true
  return this.asStrInst

proc digit1(this: BcdUserTypeLe_LtrObj): int = 
  if this.digit1InstFlag:
    return this.digit1Inst
  let digit1InstExpr = int(((this.b4 and 240) shr 4))
  this.digit1Inst = digit1InstExpr
  this.digit1InstFlag = true
  return this.digit1Inst

proc digit2(this: BcdUserTypeLe_LtrObj): int = 
  if this.digit2InstFlag:
    return this.digit2Inst
  let digit2InstExpr = int((this.b4 and 15))
  this.digit2Inst = digit2InstExpr
  this.digit2InstFlag = true
  return this.digit2Inst

proc digit3(this: BcdUserTypeLe_LtrObj): int = 
  if this.digit3InstFlag:
    return this.digit3Inst
  let digit3InstExpr = int(((this.b3 and 240) shr 4))
  this.digit3Inst = digit3InstExpr
  this.digit3InstFlag = true
  return this.digit3Inst

proc digit4(this: BcdUserTypeLe_LtrObj): int = 
  if this.digit4InstFlag:
    return this.digit4Inst
  let digit4InstExpr = int((this.b3 and 15))
  this.digit4Inst = digit4InstExpr
  this.digit4InstFlag = true
  return this.digit4Inst

proc digit5(this: BcdUserTypeLe_LtrObj): int = 
  if this.digit5InstFlag:
    return this.digit5Inst
  let digit5InstExpr = int(((this.b2 and 240) shr 4))
  this.digit5Inst = digit5InstExpr
  this.digit5InstFlag = true
  return this.digit5Inst

proc digit6(this: BcdUserTypeLe_LtrObj): int = 
  if this.digit6InstFlag:
    return this.digit6Inst
  let digit6InstExpr = int((this.b2 and 15))
  this.digit6Inst = digit6InstExpr
  this.digit6InstFlag = true
  return this.digit6Inst

proc digit7(this: BcdUserTypeLe_LtrObj): int = 
  if this.digit7InstFlag:
    return this.digit7Inst
  let digit7InstExpr = int(((this.b1 and 240) shr 4))
  this.digit7Inst = digit7InstExpr
  this.digit7InstFlag = true
  return this.digit7Inst

proc digit8(this: BcdUserTypeLe_LtrObj): int = 
  if this.digit8InstFlag:
    return this.digit8Inst
  let digit8InstExpr = int((this.b1 and 15))
  this.digit8Inst = digit8InstExpr
  this.digit8InstFlag = true
  return this.digit8Inst

proc fromFile*(_: typedesc[BcdUserTypeLe_LtrObj], filename: string): BcdUserTypeLe_LtrObj =
  BcdUserTypeLe_LtrObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[BcdUserTypeLe_RtlObj], io: KaitaiStream, root: KaitaiStruct, parent: BcdUserTypeLe): BcdUserTypeLe_RtlObj =
  template this: untyped = result
  this = new(BcdUserTypeLe_RtlObj)
  let root = if root == nil: cast[BcdUserTypeLe](this) else: cast[BcdUserTypeLe](root)
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

proc asInt(this: BcdUserTypeLe_RtlObj): int = 
  if this.asIntInstFlag:
    return this.asIntInst
  let asIntInstExpr = int(((((((((this.digit1 * 1) + (this.digit2 * 10)) + (this.digit3 * 100)) + (this.digit4 * 1000)) + (this.digit5 * 10000)) + (this.digit6 * 100000)) + (this.digit7 * 1000000)) + (this.digit8 * 10000000)))
  this.asIntInst = asIntInstExpr
  this.asIntInstFlag = true
  return this.asIntInst

proc asStr(this: BcdUserTypeLe_RtlObj): string = 
  if this.asStrInstFlag:
    return this.asStrInst
  let asStrInstExpr = string(($($($($($($($intToStr(int(this.digit8)) & $intToStr(int(this.digit7))) & $intToStr(int(this.digit6))) & $intToStr(int(this.digit5))) & $intToStr(int(this.digit4))) & $intToStr(int(this.digit3))) & $intToStr(int(this.digit2))) & $intToStr(int(this.digit1))))
  this.asStrInst = asStrInstExpr
  this.asStrInstFlag = true
  return this.asStrInst

proc digit1(this: BcdUserTypeLe_RtlObj): int = 
  if this.digit1InstFlag:
    return this.digit1Inst
  let digit1InstExpr = int(((this.b4 and 240) shr 4))
  this.digit1Inst = digit1InstExpr
  this.digit1InstFlag = true
  return this.digit1Inst

proc digit2(this: BcdUserTypeLe_RtlObj): int = 
  if this.digit2InstFlag:
    return this.digit2Inst
  let digit2InstExpr = int((this.b4 and 15))
  this.digit2Inst = digit2InstExpr
  this.digit2InstFlag = true
  return this.digit2Inst

proc digit3(this: BcdUserTypeLe_RtlObj): int = 
  if this.digit3InstFlag:
    return this.digit3Inst
  let digit3InstExpr = int(((this.b3 and 240) shr 4))
  this.digit3Inst = digit3InstExpr
  this.digit3InstFlag = true
  return this.digit3Inst

proc digit4(this: BcdUserTypeLe_RtlObj): int = 
  if this.digit4InstFlag:
    return this.digit4Inst
  let digit4InstExpr = int((this.b3 and 15))
  this.digit4Inst = digit4InstExpr
  this.digit4InstFlag = true
  return this.digit4Inst

proc digit5(this: BcdUserTypeLe_RtlObj): int = 
  if this.digit5InstFlag:
    return this.digit5Inst
  let digit5InstExpr = int(((this.b2 and 240) shr 4))
  this.digit5Inst = digit5InstExpr
  this.digit5InstFlag = true
  return this.digit5Inst

proc digit6(this: BcdUserTypeLe_RtlObj): int = 
  if this.digit6InstFlag:
    return this.digit6Inst
  let digit6InstExpr = int((this.b2 and 15))
  this.digit6Inst = digit6InstExpr
  this.digit6InstFlag = true
  return this.digit6Inst

proc digit7(this: BcdUserTypeLe_RtlObj): int = 
  if this.digit7InstFlag:
    return this.digit7Inst
  let digit7InstExpr = int(((this.b1 and 240) shr 4))
  this.digit7Inst = digit7InstExpr
  this.digit7InstFlag = true
  return this.digit7Inst

proc digit8(this: BcdUserTypeLe_RtlObj): int = 
  if this.digit8InstFlag:
    return this.digit8Inst
  let digit8InstExpr = int((this.b1 and 15))
  this.digit8Inst = digit8InstExpr
  this.digit8InstFlag = true
  return this.digit8Inst

proc fromFile*(_: typedesc[BcdUserTypeLe_RtlObj], filename: string): BcdUserTypeLe_RtlObj =
  BcdUserTypeLe_RtlObj.read(newKaitaiFileStream(filename), nil, nil)


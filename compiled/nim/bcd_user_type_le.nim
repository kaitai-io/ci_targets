import kaitai_struct_nim_runtime
import options
import strutils

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  BcdUserTypeLe* = ref object of KaitaiStruct
    ltr*: BcdUserTypeLe_LtrObj
    rtl*: BcdUserTypeLe_RtlObj
    leadingZeroLtr*: BcdUserTypeLe_LeadingZeroLtrObj
    parent*: KaitaiStruct
    rawLtr*: string
    rawRtl*: string
    rawLeadingZeroLtr*: string
  BcdUserTypeLe_LtrObj* = ref object of KaitaiStruct
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    parent*: BcdUserTypeLe
    asIntInst*: Option[int]
    digit2Inst*: Option[int]
    digit4Inst*: Option[int]
    digit3Inst*: Option[int]
    digit5Inst*: Option[int]
    digit8Inst*: Option[int]
    digit6Inst*: Option[int]
    asStrInst*: string
    digit1Inst*: Option[int]
    digit7Inst*: Option[int]
  BcdUserTypeLe_RtlObj* = ref object of KaitaiStruct
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    parent*: BcdUserTypeLe
    asIntInst*: Option[int]
    digit2Inst*: Option[int]
    digit4Inst*: Option[int]
    digit3Inst*: Option[int]
    digit5Inst*: Option[int]
    digit8Inst*: Option[int]
    digit6Inst*: Option[int]
    asStrInst*: string
    digit1Inst*: Option[int]
    digit7Inst*: Option[int]
  BcdUserTypeLe_LeadingZeroLtrObj* = ref object of KaitaiStruct
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    parent*: BcdUserTypeLe
    asIntInst*: Option[int]
    digit2Inst*: Option[int]
    digit4Inst*: Option[int]
    digit3Inst*: Option[int]
    digit5Inst*: Option[int]
    digit8Inst*: Option[int]
    digit6Inst*: Option[int]
    asStrInst*: string
    digit1Inst*: Option[int]
    digit7Inst*: Option[int]

proc read*(_: typedesc[BcdUserTypeLe], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BcdUserTypeLe
proc read*(_: typedesc[BcdUserTypeLe_LtrObj], io: KaitaiStream, root: KaitaiStruct, parent: BcdUserTypeLe): BcdUserTypeLe_LtrObj
proc read*(_: typedesc[BcdUserTypeLe_RtlObj], io: KaitaiStream, root: KaitaiStruct, parent: BcdUserTypeLe): BcdUserTypeLe_RtlObj
proc read*(_: typedesc[BcdUserTypeLe_LeadingZeroLtrObj], io: KaitaiStream, root: KaitaiStruct, parent: BcdUserTypeLe): BcdUserTypeLe_LeadingZeroLtrObj

proc asInt*(this: BcdUserTypeLe_LtrObj): int
proc digit2*(this: BcdUserTypeLe_LtrObj): int
proc digit4*(this: BcdUserTypeLe_LtrObj): int
proc digit3*(this: BcdUserTypeLe_LtrObj): int
proc digit5*(this: BcdUserTypeLe_LtrObj): int
proc digit8*(this: BcdUserTypeLe_LtrObj): int
proc digit6*(this: BcdUserTypeLe_LtrObj): int
proc asStr*(this: BcdUserTypeLe_LtrObj): string
proc digit1*(this: BcdUserTypeLe_LtrObj): int
proc digit7*(this: BcdUserTypeLe_LtrObj): int
proc asInt*(this: BcdUserTypeLe_RtlObj): int
proc digit2*(this: BcdUserTypeLe_RtlObj): int
proc digit4*(this: BcdUserTypeLe_RtlObj): int
proc digit3*(this: BcdUserTypeLe_RtlObj): int
proc digit5*(this: BcdUserTypeLe_RtlObj): int
proc digit8*(this: BcdUserTypeLe_RtlObj): int
proc digit6*(this: BcdUserTypeLe_RtlObj): int
proc asStr*(this: BcdUserTypeLe_RtlObj): string
proc digit1*(this: BcdUserTypeLe_RtlObj): int
proc digit7*(this: BcdUserTypeLe_RtlObj): int
proc asInt*(this: BcdUserTypeLe_LeadingZeroLtrObj): int
proc digit2*(this: BcdUserTypeLe_LeadingZeroLtrObj): int
proc digit4*(this: BcdUserTypeLe_LeadingZeroLtrObj): int
proc digit3*(this: BcdUserTypeLe_LeadingZeroLtrObj): int
proc digit5*(this: BcdUserTypeLe_LeadingZeroLtrObj): int
proc digit8*(this: BcdUserTypeLe_LeadingZeroLtrObj): int
proc digit6*(this: BcdUserTypeLe_LeadingZeroLtrObj): int
proc asStr*(this: BcdUserTypeLe_LeadingZeroLtrObj): string
proc digit1*(this: BcdUserTypeLe_LeadingZeroLtrObj): int
proc digit7*(this: BcdUserTypeLe_LeadingZeroLtrObj): int

proc read*(_: typedesc[BcdUserTypeLe], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BcdUserTypeLe =
  template this: untyped = result
  this = new(BcdUserTypeLe)
  let root = if root == nil: cast[BcdUserTypeLe](this) else: cast[BcdUserTypeLe](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.rawLtr = this.io.readBytes(int(4))
  let rawLtrIo = newKaitaiStringStream(this.rawLtr)
  this.ltr = BcdUserTypeLe_LtrObj.read(rawLtrIo, this.root, this)
  this.rawRtl = this.io.readBytes(int(4))
  let rawRtlIo = newKaitaiStringStream(this.rawRtl)
  this.rtl = BcdUserTypeLe_RtlObj.read(rawRtlIo, this.root, this)
  this.rawLeadingZeroLtr = this.io.readBytes(int(4))
  let rawLeadingZeroLtrIo = newKaitaiStringStream(this.rawLeadingZeroLtr)
  this.leadingZeroLtr = BcdUserTypeLe_LeadingZeroLtrObj.read(rawLeadingZeroLtrIo, this.root, this)

proc fromFile*(_: typedesc[BcdUserTypeLe], filename: string): BcdUserTypeLe =
  BcdUserTypeLe.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[BcdUserTypeLe_LtrObj], io: KaitaiStream, root: KaitaiStruct, parent: BcdUserTypeLe): BcdUserTypeLe_LtrObj =
  template this: untyped = result
  this = new(BcdUserTypeLe_LtrObj)
  let root = if root == nil: cast[BcdUserTypeLe](this) else: cast[BcdUserTypeLe](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.b1 = this.io.readU1()
  this.b2 = this.io.readU1()
  this.b3 = this.io.readU1()
  this.b4 = this.io.readU1()

proc asInt(this: BcdUserTypeLe_LtrObj): int = 
  if isSome(this.asIntInst):
    return get(this.asIntInst)
  this.asIntInst = int(((((((((this.digit8 * 1) + (this.digit7 * 10)) + (this.digit6 * 100)) + (this.digit5 * 1000)) + (this.digit4 * 10000)) + (this.digit3 * 100000)) + (this.digit2 * 1000000)) + (this.digit1 * 10000000)))
  if isSome(this.asIntInst):
    return get(this.asIntInst)

proc digit2(this: BcdUserTypeLe_LtrObj): int = 
  if isSome(this.digit2Inst):
    return get(this.digit2Inst)
  this.digit2Inst = int((this.b4 and 15))
  if isSome(this.digit2Inst):
    return get(this.digit2Inst)

proc digit4(this: BcdUserTypeLe_LtrObj): int = 
  if isSome(this.digit4Inst):
    return get(this.digit4Inst)
  this.digit4Inst = int((this.b3 and 15))
  if isSome(this.digit4Inst):
    return get(this.digit4Inst)

proc digit3(this: BcdUserTypeLe_LtrObj): int = 
  if isSome(this.digit3Inst):
    return get(this.digit3Inst)
  this.digit3Inst = int(((this.b3 and 240) shr 4))
  if isSome(this.digit3Inst):
    return get(this.digit3Inst)

proc digit5(this: BcdUserTypeLe_LtrObj): int = 
  if isSome(this.digit5Inst):
    return get(this.digit5Inst)
  this.digit5Inst = int(((this.b2 and 240) shr 4))
  if isSome(this.digit5Inst):
    return get(this.digit5Inst)

proc digit8(this: BcdUserTypeLe_LtrObj): int = 
  if isSome(this.digit8Inst):
    return get(this.digit8Inst)
  this.digit8Inst = int((this.b1 and 15))
  if isSome(this.digit8Inst):
    return get(this.digit8Inst)

proc digit6(this: BcdUserTypeLe_LtrObj): int = 
  if isSome(this.digit6Inst):
    return get(this.digit6Inst)
  this.digit6Inst = int((this.b2 and 15))
  if isSome(this.digit6Inst):
    return get(this.digit6Inst)

proc asStr(this: BcdUserTypeLe_LtrObj): string = 
  if this.asStrInst.len != 0:
    return this.asStrInst
  this.asStrInst = string(($($($($($($($intToStr(this.digit1) & $intToStr(this.digit2)) & $intToStr(this.digit3)) & $intToStr(this.digit4)) & $intToStr(this.digit5)) & $intToStr(this.digit6)) & $intToStr(this.digit7)) & $intToStr(this.digit8)))
  if this.asStrInst.len != 0:
    return this.asStrInst

proc digit1(this: BcdUserTypeLe_LtrObj): int = 
  if isSome(this.digit1Inst):
    return get(this.digit1Inst)
  this.digit1Inst = int(((this.b4 and 240) shr 4))
  if isSome(this.digit1Inst):
    return get(this.digit1Inst)

proc digit7(this: BcdUserTypeLe_LtrObj): int = 
  if isSome(this.digit7Inst):
    return get(this.digit7Inst)
  this.digit7Inst = int(((this.b1 and 240) shr 4))
  if isSome(this.digit7Inst):
    return get(this.digit7Inst)

proc fromFile*(_: typedesc[BcdUserTypeLe_LtrObj], filename: string): BcdUserTypeLe_LtrObj =
  BcdUserTypeLe_LtrObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[BcdUserTypeLe_RtlObj], io: KaitaiStream, root: KaitaiStruct, parent: BcdUserTypeLe): BcdUserTypeLe_RtlObj =
  template this: untyped = result
  this = new(BcdUserTypeLe_RtlObj)
  let root = if root == nil: cast[BcdUserTypeLe](this) else: cast[BcdUserTypeLe](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.b1 = this.io.readU1()
  this.b2 = this.io.readU1()
  this.b3 = this.io.readU1()
  this.b4 = this.io.readU1()

proc asInt(this: BcdUserTypeLe_RtlObj): int = 
  if isSome(this.asIntInst):
    return get(this.asIntInst)
  this.asIntInst = int(((((((((this.digit1 * 1) + (this.digit2 * 10)) + (this.digit3 * 100)) + (this.digit4 * 1000)) + (this.digit5 * 10000)) + (this.digit6 * 100000)) + (this.digit7 * 1000000)) + (this.digit8 * 10000000)))
  if isSome(this.asIntInst):
    return get(this.asIntInst)

proc digit2(this: BcdUserTypeLe_RtlObj): int = 
  if isSome(this.digit2Inst):
    return get(this.digit2Inst)
  this.digit2Inst = int((this.b4 and 15))
  if isSome(this.digit2Inst):
    return get(this.digit2Inst)

proc digit4(this: BcdUserTypeLe_RtlObj): int = 
  if isSome(this.digit4Inst):
    return get(this.digit4Inst)
  this.digit4Inst = int((this.b3 and 15))
  if isSome(this.digit4Inst):
    return get(this.digit4Inst)

proc digit3(this: BcdUserTypeLe_RtlObj): int = 
  if isSome(this.digit3Inst):
    return get(this.digit3Inst)
  this.digit3Inst = int(((this.b3 and 240) shr 4))
  if isSome(this.digit3Inst):
    return get(this.digit3Inst)

proc digit5(this: BcdUserTypeLe_RtlObj): int = 
  if isSome(this.digit5Inst):
    return get(this.digit5Inst)
  this.digit5Inst = int(((this.b2 and 240) shr 4))
  if isSome(this.digit5Inst):
    return get(this.digit5Inst)

proc digit8(this: BcdUserTypeLe_RtlObj): int = 
  if isSome(this.digit8Inst):
    return get(this.digit8Inst)
  this.digit8Inst = int((this.b1 and 15))
  if isSome(this.digit8Inst):
    return get(this.digit8Inst)

proc digit6(this: BcdUserTypeLe_RtlObj): int = 
  if isSome(this.digit6Inst):
    return get(this.digit6Inst)
  this.digit6Inst = int((this.b2 and 15))
  if isSome(this.digit6Inst):
    return get(this.digit6Inst)

proc asStr(this: BcdUserTypeLe_RtlObj): string = 
  if this.asStrInst.len != 0:
    return this.asStrInst
  this.asStrInst = string(($($($($($($($intToStr(this.digit8) & $intToStr(this.digit7)) & $intToStr(this.digit6)) & $intToStr(this.digit5)) & $intToStr(this.digit4)) & $intToStr(this.digit3)) & $intToStr(this.digit2)) & $intToStr(this.digit1)))
  if this.asStrInst.len != 0:
    return this.asStrInst

proc digit1(this: BcdUserTypeLe_RtlObj): int = 
  if isSome(this.digit1Inst):
    return get(this.digit1Inst)
  this.digit1Inst = int(((this.b4 and 240) shr 4))
  if isSome(this.digit1Inst):
    return get(this.digit1Inst)

proc digit7(this: BcdUserTypeLe_RtlObj): int = 
  if isSome(this.digit7Inst):
    return get(this.digit7Inst)
  this.digit7Inst = int(((this.b1 and 240) shr 4))
  if isSome(this.digit7Inst):
    return get(this.digit7Inst)

proc fromFile*(_: typedesc[BcdUserTypeLe_RtlObj], filename: string): BcdUserTypeLe_RtlObj =
  BcdUserTypeLe_RtlObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[BcdUserTypeLe_LeadingZeroLtrObj], io: KaitaiStream, root: KaitaiStruct, parent: BcdUserTypeLe): BcdUserTypeLe_LeadingZeroLtrObj =
  template this: untyped = result
  this = new(BcdUserTypeLe_LeadingZeroLtrObj)
  let root = if root == nil: cast[BcdUserTypeLe](this) else: cast[BcdUserTypeLe](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.b1 = this.io.readU1()
  this.b2 = this.io.readU1()
  this.b3 = this.io.readU1()
  this.b4 = this.io.readU1()

proc asInt(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if isSome(this.asIntInst):
    return get(this.asIntInst)
  this.asIntInst = int(((((((((this.digit8 * 1) + (this.digit7 * 10)) + (this.digit6 * 100)) + (this.digit5 * 1000)) + (this.digit4 * 10000)) + (this.digit3 * 100000)) + (this.digit2 * 1000000)) + (this.digit1 * 10000000)))
  if isSome(this.asIntInst):
    return get(this.asIntInst)

proc digit2(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if isSome(this.digit2Inst):
    return get(this.digit2Inst)
  this.digit2Inst = int((this.b4 and 15))
  if isSome(this.digit2Inst):
    return get(this.digit2Inst)

proc digit4(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if isSome(this.digit4Inst):
    return get(this.digit4Inst)
  this.digit4Inst = int((this.b3 and 15))
  if isSome(this.digit4Inst):
    return get(this.digit4Inst)

proc digit3(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if isSome(this.digit3Inst):
    return get(this.digit3Inst)
  this.digit3Inst = int(((this.b3 and 240) shr 4))
  if isSome(this.digit3Inst):
    return get(this.digit3Inst)

proc digit5(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if isSome(this.digit5Inst):
    return get(this.digit5Inst)
  this.digit5Inst = int(((this.b2 and 240) shr 4))
  if isSome(this.digit5Inst):
    return get(this.digit5Inst)

proc digit8(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if isSome(this.digit8Inst):
    return get(this.digit8Inst)
  this.digit8Inst = int((this.b1 and 15))
  if isSome(this.digit8Inst):
    return get(this.digit8Inst)

proc digit6(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if isSome(this.digit6Inst):
    return get(this.digit6Inst)
  this.digit6Inst = int((this.b2 and 15))
  if isSome(this.digit6Inst):
    return get(this.digit6Inst)

proc asStr(this: BcdUserTypeLe_LeadingZeroLtrObj): string = 
  if this.asStrInst.len != 0:
    return this.asStrInst
  this.asStrInst = string(($($($($($($($intToStr(this.digit1) & $intToStr(this.digit2)) & $intToStr(this.digit3)) & $intToStr(this.digit4)) & $intToStr(this.digit5)) & $intToStr(this.digit6)) & $intToStr(this.digit7)) & $intToStr(this.digit8)))
  if this.asStrInst.len != 0:
    return this.asStrInst

proc digit1(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if isSome(this.digit1Inst):
    return get(this.digit1Inst)
  this.digit1Inst = int(((this.b4 and 240) shr 4))
  if isSome(this.digit1Inst):
    return get(this.digit1Inst)

proc digit7(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if isSome(this.digit7Inst):
    return get(this.digit7Inst)
  this.digit7Inst = int(((this.b1 and 240) shr 4))
  if isSome(this.digit7Inst):
    return get(this.digit7Inst)

proc fromFile*(_: typedesc[BcdUserTypeLe_LeadingZeroLtrObj], filename: string): BcdUserTypeLe_LeadingZeroLtrObj =
  BcdUserTypeLe_LeadingZeroLtrObj.read(newKaitaiFileStream(filename), nil, nil)


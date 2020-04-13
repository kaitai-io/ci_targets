import kaitai_struct_nim_runtime
import options
import strutils

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  BcdUserTypeBe* = ref object of KaitaiStruct
    ltr*: BcdUserTypeBe_LtrObj
    rtl*: BcdUserTypeBe_RtlObj
    leadingZeroLtr*: BcdUserTypeBe_LeadingZeroLtrObj
    parent*: KaitaiStruct
    rawLtr*: seq[byte]
    rawRtl*: seq[byte]
    rawLeadingZeroLtr*: seq[byte]
  BcdUserTypeBe_LtrObj* = ref object of KaitaiStruct
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    parent*: BcdUserTypeBe
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
  BcdUserTypeBe_RtlObj* = ref object of KaitaiStruct
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    parent*: BcdUserTypeBe
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
  BcdUserTypeBe_LeadingZeroLtrObj* = ref object of KaitaiStruct
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    parent*: BcdUserTypeBe
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

  this.rawLtr = this.io.readBytes(int(4))
  let rawLtrIo = newKaitaiStream(this.rawLtr)
  this.ltr = BcdUserTypeBe_LtrObj.read(rawLtrIo, this.root, this)
  this.rawRtl = this.io.readBytes(int(4))
  let rawRtlIo = newKaitaiStream(this.rawRtl)
  this.rtl = BcdUserTypeBe_RtlObj.read(rawRtlIo, this.root, this)
  this.rawLeadingZeroLtr = this.io.readBytes(int(4))
  let rawLeadingZeroLtrIo = newKaitaiStream(this.rawLeadingZeroLtr)
  this.leadingZeroLtr = BcdUserTypeBe_LeadingZeroLtrObj.read(rawLeadingZeroLtrIo, this.root, this)

proc fromFile*(_: typedesc[BcdUserTypeBe], filename: string): BcdUserTypeBe =
  BcdUserTypeBe.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[BcdUserTypeBe_LtrObj], io: KaitaiStream, root: KaitaiStruct, parent: BcdUserTypeBe): BcdUserTypeBe_LtrObj =
  template this: untyped = result
  this = new(BcdUserTypeBe_LtrObj)
  let root = if root == nil: cast[BcdUserTypeBe](this) else: cast[BcdUserTypeBe](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.b1 = this.io.readU1()
  this.b2 = this.io.readU1()
  this.b3 = this.io.readU1()
  this.b4 = this.io.readU1()

proc asInt(this: BcdUserTypeBe_LtrObj): int = 
  if isSome(this.asIntInst):
    return get(this.asIntInst)
  this.asIntInst = int(((((((((this.digit8 * 1) + (this.digit7 * 10)) + (this.digit6 * 100)) + (this.digit5 * 1000)) + (this.digit4 * 10000)) + (this.digit3 * 100000)) + (this.digit2 * 1000000)) + (this.digit1 * 10000000)))
  if isSome(this.asIntInst):
    return get(this.asIntInst)

proc digit2(this: BcdUserTypeBe_LtrObj): int = 
  if isSome(this.digit2Inst):
    return get(this.digit2Inst)
  this.digit2Inst = int((this.b1 and 15))
  if isSome(this.digit2Inst):
    return get(this.digit2Inst)

proc digit4(this: BcdUserTypeBe_LtrObj): int = 
  if isSome(this.digit4Inst):
    return get(this.digit4Inst)
  this.digit4Inst = int((this.b2 and 15))
  if isSome(this.digit4Inst):
    return get(this.digit4Inst)

proc digit3(this: BcdUserTypeBe_LtrObj): int = 
  if isSome(this.digit3Inst):
    return get(this.digit3Inst)
  this.digit3Inst = int(((this.b2 and 240) shr 4))
  if isSome(this.digit3Inst):
    return get(this.digit3Inst)

proc digit5(this: BcdUserTypeBe_LtrObj): int = 
  if isSome(this.digit5Inst):
    return get(this.digit5Inst)
  this.digit5Inst = int(((this.b3 and 240) shr 4))
  if isSome(this.digit5Inst):
    return get(this.digit5Inst)

proc digit8(this: BcdUserTypeBe_LtrObj): int = 
  if isSome(this.digit8Inst):
    return get(this.digit8Inst)
  this.digit8Inst = int((this.b4 and 15))
  if isSome(this.digit8Inst):
    return get(this.digit8Inst)

proc digit6(this: BcdUserTypeBe_LtrObj): int = 
  if isSome(this.digit6Inst):
    return get(this.digit6Inst)
  this.digit6Inst = int((this.b3 and 15))
  if isSome(this.digit6Inst):
    return get(this.digit6Inst)

proc asStr(this: BcdUserTypeBe_LtrObj): string = 
  if this.asStrInst.len != 0:
    return this.asStrInst
  this.asStrInst = string(($($($($($($($intToStr(int(this.digit1)) & $intToStr(int(this.digit2))) & $intToStr(int(this.digit3))) & $intToStr(int(this.digit4))) & $intToStr(int(this.digit5))) & $intToStr(int(this.digit6))) & $intToStr(int(this.digit7))) & $intToStr(int(this.digit8))))
  if this.asStrInst.len != 0:
    return this.asStrInst

proc digit1(this: BcdUserTypeBe_LtrObj): int = 
  if isSome(this.digit1Inst):
    return get(this.digit1Inst)
  this.digit1Inst = int(((this.b1 and 240) shr 4))
  if isSome(this.digit1Inst):
    return get(this.digit1Inst)

proc digit7(this: BcdUserTypeBe_LtrObj): int = 
  if isSome(this.digit7Inst):
    return get(this.digit7Inst)
  this.digit7Inst = int(((this.b4 and 240) shr 4))
  if isSome(this.digit7Inst):
    return get(this.digit7Inst)

proc fromFile*(_: typedesc[BcdUserTypeBe_LtrObj], filename: string): BcdUserTypeBe_LtrObj =
  BcdUserTypeBe_LtrObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[BcdUserTypeBe_RtlObj], io: KaitaiStream, root: KaitaiStruct, parent: BcdUserTypeBe): BcdUserTypeBe_RtlObj =
  template this: untyped = result
  this = new(BcdUserTypeBe_RtlObj)
  let root = if root == nil: cast[BcdUserTypeBe](this) else: cast[BcdUserTypeBe](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.b1 = this.io.readU1()
  this.b2 = this.io.readU1()
  this.b3 = this.io.readU1()
  this.b4 = this.io.readU1()

proc asInt(this: BcdUserTypeBe_RtlObj): int = 
  if isSome(this.asIntInst):
    return get(this.asIntInst)
  this.asIntInst = int(((((((((this.digit1 * 1) + (this.digit2 * 10)) + (this.digit3 * 100)) + (this.digit4 * 1000)) + (this.digit5 * 10000)) + (this.digit6 * 100000)) + (this.digit7 * 1000000)) + (this.digit8 * 10000000)))
  if isSome(this.asIntInst):
    return get(this.asIntInst)

proc digit2(this: BcdUserTypeBe_RtlObj): int = 
  if isSome(this.digit2Inst):
    return get(this.digit2Inst)
  this.digit2Inst = int((this.b1 and 15))
  if isSome(this.digit2Inst):
    return get(this.digit2Inst)

proc digit4(this: BcdUserTypeBe_RtlObj): int = 
  if isSome(this.digit4Inst):
    return get(this.digit4Inst)
  this.digit4Inst = int((this.b2 and 15))
  if isSome(this.digit4Inst):
    return get(this.digit4Inst)

proc digit3(this: BcdUserTypeBe_RtlObj): int = 
  if isSome(this.digit3Inst):
    return get(this.digit3Inst)
  this.digit3Inst = int(((this.b2 and 240) shr 4))
  if isSome(this.digit3Inst):
    return get(this.digit3Inst)

proc digit5(this: BcdUserTypeBe_RtlObj): int = 
  if isSome(this.digit5Inst):
    return get(this.digit5Inst)
  this.digit5Inst = int(((this.b3 and 240) shr 4))
  if isSome(this.digit5Inst):
    return get(this.digit5Inst)

proc digit8(this: BcdUserTypeBe_RtlObj): int = 
  if isSome(this.digit8Inst):
    return get(this.digit8Inst)
  this.digit8Inst = int((this.b4 and 15))
  if isSome(this.digit8Inst):
    return get(this.digit8Inst)

proc digit6(this: BcdUserTypeBe_RtlObj): int = 
  if isSome(this.digit6Inst):
    return get(this.digit6Inst)
  this.digit6Inst = int((this.b3 and 15))
  if isSome(this.digit6Inst):
    return get(this.digit6Inst)

proc asStr(this: BcdUserTypeBe_RtlObj): string = 
  if this.asStrInst.len != 0:
    return this.asStrInst
  this.asStrInst = string(($($($($($($($intToStr(int(this.digit8)) & $intToStr(int(this.digit7))) & $intToStr(int(this.digit6))) & $intToStr(int(this.digit5))) & $intToStr(int(this.digit4))) & $intToStr(int(this.digit3))) & $intToStr(int(this.digit2))) & $intToStr(int(this.digit1))))
  if this.asStrInst.len != 0:
    return this.asStrInst

proc digit1(this: BcdUserTypeBe_RtlObj): int = 
  if isSome(this.digit1Inst):
    return get(this.digit1Inst)
  this.digit1Inst = int(((this.b1 and 240) shr 4))
  if isSome(this.digit1Inst):
    return get(this.digit1Inst)

proc digit7(this: BcdUserTypeBe_RtlObj): int = 
  if isSome(this.digit7Inst):
    return get(this.digit7Inst)
  this.digit7Inst = int(((this.b4 and 240) shr 4))
  if isSome(this.digit7Inst):
    return get(this.digit7Inst)

proc fromFile*(_: typedesc[BcdUserTypeBe_RtlObj], filename: string): BcdUserTypeBe_RtlObj =
  BcdUserTypeBe_RtlObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[BcdUserTypeBe_LeadingZeroLtrObj], io: KaitaiStream, root: KaitaiStruct, parent: BcdUserTypeBe): BcdUserTypeBe_LeadingZeroLtrObj =
  template this: untyped = result
  this = new(BcdUserTypeBe_LeadingZeroLtrObj)
  let root = if root == nil: cast[BcdUserTypeBe](this) else: cast[BcdUserTypeBe](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.b1 = this.io.readU1()
  this.b2 = this.io.readU1()
  this.b3 = this.io.readU1()
  this.b4 = this.io.readU1()

proc asInt(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if isSome(this.asIntInst):
    return get(this.asIntInst)
  this.asIntInst = int(((((((((this.digit8 * 1) + (this.digit7 * 10)) + (this.digit6 * 100)) + (this.digit5 * 1000)) + (this.digit4 * 10000)) + (this.digit3 * 100000)) + (this.digit2 * 1000000)) + (this.digit1 * 10000000)))
  if isSome(this.asIntInst):
    return get(this.asIntInst)

proc digit2(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if isSome(this.digit2Inst):
    return get(this.digit2Inst)
  this.digit2Inst = int((this.b1 and 15))
  if isSome(this.digit2Inst):
    return get(this.digit2Inst)

proc digit4(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if isSome(this.digit4Inst):
    return get(this.digit4Inst)
  this.digit4Inst = int((this.b2 and 15))
  if isSome(this.digit4Inst):
    return get(this.digit4Inst)

proc digit3(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if isSome(this.digit3Inst):
    return get(this.digit3Inst)
  this.digit3Inst = int(((this.b2 and 240) shr 4))
  if isSome(this.digit3Inst):
    return get(this.digit3Inst)

proc digit5(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if isSome(this.digit5Inst):
    return get(this.digit5Inst)
  this.digit5Inst = int(((this.b3 and 240) shr 4))
  if isSome(this.digit5Inst):
    return get(this.digit5Inst)

proc digit8(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if isSome(this.digit8Inst):
    return get(this.digit8Inst)
  this.digit8Inst = int((this.b4 and 15))
  if isSome(this.digit8Inst):
    return get(this.digit8Inst)

proc digit6(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if isSome(this.digit6Inst):
    return get(this.digit6Inst)
  this.digit6Inst = int((this.b3 and 15))
  if isSome(this.digit6Inst):
    return get(this.digit6Inst)

proc asStr(this: BcdUserTypeBe_LeadingZeroLtrObj): string = 
  if this.asStrInst.len != 0:
    return this.asStrInst
  this.asStrInst = string(($($($($($($($intToStr(int(this.digit1)) & $intToStr(int(this.digit2))) & $intToStr(int(this.digit3))) & $intToStr(int(this.digit4))) & $intToStr(int(this.digit5))) & $intToStr(int(this.digit6))) & $intToStr(int(this.digit7))) & $intToStr(int(this.digit8))))
  if this.asStrInst.len != 0:
    return this.asStrInst

proc digit1(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if isSome(this.digit1Inst):
    return get(this.digit1Inst)
  this.digit1Inst = int(((this.b1 and 240) shr 4))
  if isSome(this.digit1Inst):
    return get(this.digit1Inst)

proc digit7(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if isSome(this.digit7Inst):
    return get(this.digit7Inst)
  this.digit7Inst = int(((this.b4 and 240) shr 4))
  if isSome(this.digit7Inst):
    return get(this.digit7Inst)

proc fromFile*(_: typedesc[BcdUserTypeBe_LeadingZeroLtrObj], filename: string): BcdUserTypeBe_LeadingZeroLtrObj =
  BcdUserTypeBe_LeadingZeroLtrObj.read(newKaitaiFileStream(filename), nil, nil)


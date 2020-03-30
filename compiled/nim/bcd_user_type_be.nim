import kaitai_struct_nim_runtime
import options
import strutils

type
  BcdUserTypeBe_LtrObj* = ref BcdUserTypeBe_LtrObjObj
  BcdUserTypeBe_LtrObjObj* = object
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    io*: KaitaiStream
    root*: BcdUserTypeBe
    parent*: BcdUserTypeBe
    asIntInst*: Option[int]
    digit2Inst*: Option[int]
    digit4Inst*: Option[int]
    digit3Inst*: Option[int]
    digit5Inst*: Option[int]
    digit8Inst*: Option[int]
    digit6Inst*: Option[int]
    asStrInst*: Option[string]
    digit1Inst*: Option[int]
    digit7Inst*: Option[int]
  BcdUserTypeBe_RtlObj* = ref BcdUserTypeBe_RtlObjObj
  BcdUserTypeBe_RtlObjObj* = object
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    io*: KaitaiStream
    root*: BcdUserTypeBe
    parent*: BcdUserTypeBe
    asIntInst*: Option[int]
    digit2Inst*: Option[int]
    digit4Inst*: Option[int]
    digit3Inst*: Option[int]
    digit5Inst*: Option[int]
    digit8Inst*: Option[int]
    digit6Inst*: Option[int]
    asStrInst*: Option[string]
    digit1Inst*: Option[int]
    digit7Inst*: Option[int]
  BcdUserTypeBe_LeadingZeroLtrObj* = ref BcdUserTypeBe_LeadingZeroLtrObjObj
  BcdUserTypeBe_LeadingZeroLtrObjObj* = object
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    io*: KaitaiStream
    root*: BcdUserTypeBe
    parent*: BcdUserTypeBe
    asIntInst*: Option[int]
    digit2Inst*: Option[int]
    digit4Inst*: Option[int]
    digit3Inst*: Option[int]
    digit5Inst*: Option[int]
    digit8Inst*: Option[int]
    digit6Inst*: Option[int]
    asStrInst*: Option[string]
    digit1Inst*: Option[int]
    digit7Inst*: Option[int]
  BcdUserTypeBe* = ref BcdUserTypeBeObj
  BcdUserTypeBeObj* = object
    ltr*: BcdUserTypeBe_LtrObj
    rtl*: BcdUserTypeBe_RtlObj
    leadingZeroLtr*: BcdUserTypeBe_LeadingZeroLtrObj
    io*: KaitaiStream
    root*: BcdUserTypeBe
    parent*: ref RootObj
    rawLtr*: string
    rawRtl*: string
    rawLeadingZeroLtr*: string

### BcdUserTypeBe_LtrObj ###
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
proc asInt(this: BcdUserTypeBe_LtrObj): int = 
  if isSome(this.asIntInst):
    return get(this.asIntInst)
  let asIntInst = ((((((((this.digit8 * 1) + (this.digit7 * 10)) + (this.digit6 * 100)) + (this.digit5 * 1000)) + (this.digit4 * 10000)) + (this.digit3 * 100000)) + (this.digit2 * 1000000)) + (this.digit1 * 10000000))
  this.asIntInst = some(asIntInst)
  return get(this.asIntInst)

proc digit2(this: BcdUserTypeBe_LtrObj): int = 
  if isSome(this.digit2Inst):
    return get(this.digit2Inst)
  let digit2Inst = (this.b1 and 15)
  this.digit2Inst = some(digit2Inst)
  return get(this.digit2Inst)

proc digit4(this: BcdUserTypeBe_LtrObj): int = 
  if isSome(this.digit4Inst):
    return get(this.digit4Inst)
  let digit4Inst = (this.b2 and 15)
  this.digit4Inst = some(digit4Inst)
  return get(this.digit4Inst)

proc digit3(this: BcdUserTypeBe_LtrObj): int = 
  if isSome(this.digit3Inst):
    return get(this.digit3Inst)
  let digit3Inst = ((this.b2 and 240) shr 4)
  this.digit3Inst = some(digit3Inst)
  return get(this.digit3Inst)

proc digit5(this: BcdUserTypeBe_LtrObj): int = 
  if isSome(this.digit5Inst):
    return get(this.digit5Inst)
  let digit5Inst = ((this.b3 and 240) shr 4)
  this.digit5Inst = some(digit5Inst)
  return get(this.digit5Inst)

proc digit8(this: BcdUserTypeBe_LtrObj): int = 
  if isSome(this.digit8Inst):
    return get(this.digit8Inst)
  let digit8Inst = (this.b4 and 15)
  this.digit8Inst = some(digit8Inst)
  return get(this.digit8Inst)

proc digit6(this: BcdUserTypeBe_LtrObj): int = 
  if isSome(this.digit6Inst):
    return get(this.digit6Inst)
  let digit6Inst = (this.b3 and 15)
  this.digit6Inst = some(digit6Inst)
  return get(this.digit6Inst)

proc asStr(this: BcdUserTypeBe_LtrObj): string = 
  if isSome(this.asStrInst):
    return get(this.asStrInst)
  let asStrInst = intToStr(this.digit1) & intToStr(this.digit2) & intToStr(this.digit3) & intToStr(this.digit4) & intToStr(this.digit5) & intToStr(this.digit6) & intToStr(this.digit7) & intToStr(this.digit8)
  this.asStrInst = some(asStrInst)
  return get(this.asStrInst)

proc digit1(this: BcdUserTypeBe_LtrObj): int = 
  if isSome(this.digit1Inst):
    return get(this.digit1Inst)
  let digit1Inst = ((this.b1 and 240) shr 4)
  this.digit1Inst = some(digit1Inst)
  return get(this.digit1Inst)

proc digit7(this: BcdUserTypeBe_LtrObj): int = 
  if isSome(this.digit7Inst):
    return get(this.digit7Inst)
  let digit7Inst = ((this.b4 and 240) shr 4)
  this.digit7Inst = some(digit7Inst)
  return get(this.digit7Inst)

proc read*(_: typedesc[BcdUserTypeBe_LtrObj], io: KaitaiStream, root: BcdUserTypeBe, parent: BcdUserTypeBe): BcdUserTypeBe_LtrObj =
  let this = new(BcdUserTypeBe_LtrObj)
  let root = if root == nil: cast[BcdUserTypeBe](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let b1 = this.io.readU1()
  this.b1 = b1
  let b2 = this.io.readU1()
  this.b2 = b2
  let b3 = this.io.readU1()
  this.b3 = b3
  let b4 = this.io.readU1()
  this.b4 = b4
  result = this

proc fromFile*(_: typedesc[BcdUserTypeBe_LtrObj], filename: string): BcdUserTypeBe_LtrObj =
  BcdUserTypeBe_LtrObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeBe_LtrObjObj) =
  close(x.io)

### BcdUserTypeBe_RtlObj ###
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
proc asInt(this: BcdUserTypeBe_RtlObj): int = 
  if isSome(this.asIntInst):
    return get(this.asIntInst)
  let asIntInst = ((((((((this.digit1 * 1) + (this.digit2 * 10)) + (this.digit3 * 100)) + (this.digit4 * 1000)) + (this.digit5 * 10000)) + (this.digit6 * 100000)) + (this.digit7 * 1000000)) + (this.digit8 * 10000000))
  this.asIntInst = some(asIntInst)
  return get(this.asIntInst)

proc digit2(this: BcdUserTypeBe_RtlObj): int = 
  if isSome(this.digit2Inst):
    return get(this.digit2Inst)
  let digit2Inst = (this.b1 and 15)
  this.digit2Inst = some(digit2Inst)
  return get(this.digit2Inst)

proc digit4(this: BcdUserTypeBe_RtlObj): int = 
  if isSome(this.digit4Inst):
    return get(this.digit4Inst)
  let digit4Inst = (this.b2 and 15)
  this.digit4Inst = some(digit4Inst)
  return get(this.digit4Inst)

proc digit3(this: BcdUserTypeBe_RtlObj): int = 
  if isSome(this.digit3Inst):
    return get(this.digit3Inst)
  let digit3Inst = ((this.b2 and 240) shr 4)
  this.digit3Inst = some(digit3Inst)
  return get(this.digit3Inst)

proc digit5(this: BcdUserTypeBe_RtlObj): int = 
  if isSome(this.digit5Inst):
    return get(this.digit5Inst)
  let digit5Inst = ((this.b3 and 240) shr 4)
  this.digit5Inst = some(digit5Inst)
  return get(this.digit5Inst)

proc digit8(this: BcdUserTypeBe_RtlObj): int = 
  if isSome(this.digit8Inst):
    return get(this.digit8Inst)
  let digit8Inst = (this.b4 and 15)
  this.digit8Inst = some(digit8Inst)
  return get(this.digit8Inst)

proc digit6(this: BcdUserTypeBe_RtlObj): int = 
  if isSome(this.digit6Inst):
    return get(this.digit6Inst)
  let digit6Inst = (this.b3 and 15)
  this.digit6Inst = some(digit6Inst)
  return get(this.digit6Inst)

proc asStr(this: BcdUserTypeBe_RtlObj): string = 
  if isSome(this.asStrInst):
    return get(this.asStrInst)
  let asStrInst = intToStr(this.digit8) & intToStr(this.digit7) & intToStr(this.digit6) & intToStr(this.digit5) & intToStr(this.digit4) & intToStr(this.digit3) & intToStr(this.digit2) & intToStr(this.digit1)
  this.asStrInst = some(asStrInst)
  return get(this.asStrInst)

proc digit1(this: BcdUserTypeBe_RtlObj): int = 
  if isSome(this.digit1Inst):
    return get(this.digit1Inst)
  let digit1Inst = ((this.b1 and 240) shr 4)
  this.digit1Inst = some(digit1Inst)
  return get(this.digit1Inst)

proc digit7(this: BcdUserTypeBe_RtlObj): int = 
  if isSome(this.digit7Inst):
    return get(this.digit7Inst)
  let digit7Inst = ((this.b4 and 240) shr 4)
  this.digit7Inst = some(digit7Inst)
  return get(this.digit7Inst)

proc read*(_: typedesc[BcdUserTypeBe_RtlObj], io: KaitaiStream, root: BcdUserTypeBe, parent: BcdUserTypeBe): BcdUserTypeBe_RtlObj =
  let this = new(BcdUserTypeBe_RtlObj)
  let root = if root == nil: cast[BcdUserTypeBe](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let b1 = this.io.readU1()
  this.b1 = b1
  let b2 = this.io.readU1()
  this.b2 = b2
  let b3 = this.io.readU1()
  this.b3 = b3
  let b4 = this.io.readU1()
  this.b4 = b4
  result = this

proc fromFile*(_: typedesc[BcdUserTypeBe_RtlObj], filename: string): BcdUserTypeBe_RtlObj =
  BcdUserTypeBe_RtlObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeBe_RtlObjObj) =
  close(x.io)

### BcdUserTypeBe_LeadingZeroLtrObj ###
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
proc asInt(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if isSome(this.asIntInst):
    return get(this.asIntInst)
  let asIntInst = ((((((((this.digit8 * 1) + (this.digit7 * 10)) + (this.digit6 * 100)) + (this.digit5 * 1000)) + (this.digit4 * 10000)) + (this.digit3 * 100000)) + (this.digit2 * 1000000)) + (this.digit1 * 10000000))
  this.asIntInst = some(asIntInst)
  return get(this.asIntInst)

proc digit2(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if isSome(this.digit2Inst):
    return get(this.digit2Inst)
  let digit2Inst = (this.b1 and 15)
  this.digit2Inst = some(digit2Inst)
  return get(this.digit2Inst)

proc digit4(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if isSome(this.digit4Inst):
    return get(this.digit4Inst)
  let digit4Inst = (this.b2 and 15)
  this.digit4Inst = some(digit4Inst)
  return get(this.digit4Inst)

proc digit3(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if isSome(this.digit3Inst):
    return get(this.digit3Inst)
  let digit3Inst = ((this.b2 and 240) shr 4)
  this.digit3Inst = some(digit3Inst)
  return get(this.digit3Inst)

proc digit5(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if isSome(this.digit5Inst):
    return get(this.digit5Inst)
  let digit5Inst = ((this.b3 and 240) shr 4)
  this.digit5Inst = some(digit5Inst)
  return get(this.digit5Inst)

proc digit8(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if isSome(this.digit8Inst):
    return get(this.digit8Inst)
  let digit8Inst = (this.b4 and 15)
  this.digit8Inst = some(digit8Inst)
  return get(this.digit8Inst)

proc digit6(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if isSome(this.digit6Inst):
    return get(this.digit6Inst)
  let digit6Inst = (this.b3 and 15)
  this.digit6Inst = some(digit6Inst)
  return get(this.digit6Inst)

proc asStr(this: BcdUserTypeBe_LeadingZeroLtrObj): string = 
  if isSome(this.asStrInst):
    return get(this.asStrInst)
  let asStrInst = intToStr(this.digit1) & intToStr(this.digit2) & intToStr(this.digit3) & intToStr(this.digit4) & intToStr(this.digit5) & intToStr(this.digit6) & intToStr(this.digit7) & intToStr(this.digit8)
  this.asStrInst = some(asStrInst)
  return get(this.asStrInst)

proc digit1(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if isSome(this.digit1Inst):
    return get(this.digit1Inst)
  let digit1Inst = ((this.b1 and 240) shr 4)
  this.digit1Inst = some(digit1Inst)
  return get(this.digit1Inst)

proc digit7(this: BcdUserTypeBe_LeadingZeroLtrObj): int = 
  if isSome(this.digit7Inst):
    return get(this.digit7Inst)
  let digit7Inst = ((this.b4 and 240) shr 4)
  this.digit7Inst = some(digit7Inst)
  return get(this.digit7Inst)

proc read*(_: typedesc[BcdUserTypeBe_LeadingZeroLtrObj], io: KaitaiStream, root: BcdUserTypeBe, parent: BcdUserTypeBe): BcdUserTypeBe_LeadingZeroLtrObj =
  let this = new(BcdUserTypeBe_LeadingZeroLtrObj)
  let root = if root == nil: cast[BcdUserTypeBe](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let b1 = this.io.readU1()
  this.b1 = b1
  let b2 = this.io.readU1()
  this.b2 = b2
  let b3 = this.io.readU1()
  this.b3 = b3
  let b4 = this.io.readU1()
  this.b4 = b4
  result = this

proc fromFile*(_: typedesc[BcdUserTypeBe_LeadingZeroLtrObj], filename: string): BcdUserTypeBe_LeadingZeroLtrObj =
  BcdUserTypeBe_LeadingZeroLtrObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeBe_LeadingZeroLtrObjObj) =
  close(x.io)

### BcdUserTypeBe ###
proc read*(_: typedesc[BcdUserTypeBe], io: KaitaiStream, root: BcdUserTypeBe, parent: ref RootObj): BcdUserTypeBe =
  let this = new(BcdUserTypeBe)
  let root = if root == nil: cast[BcdUserTypeBe](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let rawLtr = this.io.readBytes(int(4))
  this.rawLtr = rawLtr
  let rawLtrIo = newKaitaiStringStream(rawLtr)
  let ltr = BcdUserTypeBe_LtrObj.read(rawLtrIo, this.root, this)
  this.ltr = ltr
  let rawRtl = this.io.readBytes(int(4))
  this.rawRtl = rawRtl
  let rawRtlIo = newKaitaiStringStream(rawRtl)
  let rtl = BcdUserTypeBe_RtlObj.read(rawRtlIo, this.root, this)
  this.rtl = rtl
  let rawLeadingZeroLtr = this.io.readBytes(int(4))
  this.rawLeadingZeroLtr = rawLeadingZeroLtr
  let rawLeadingZeroLtrIo = newKaitaiStringStream(rawLeadingZeroLtr)
  let leadingZeroLtr = BcdUserTypeBe_LeadingZeroLtrObj.read(rawLeadingZeroLtrIo, this.root, this)
  this.leadingZeroLtr = leadingZeroLtr
  result = this

proc fromFile*(_: typedesc[BcdUserTypeBe], filename: string): BcdUserTypeBe =
  BcdUserTypeBe.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeBeObj) =
  close(x.io)


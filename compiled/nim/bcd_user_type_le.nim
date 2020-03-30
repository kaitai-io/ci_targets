import kaitai_struct_nim_runtime
import options
import strutils

type
  BcdUserTypeLe_LtrObj* = ref BcdUserTypeLe_LtrObjObj
  BcdUserTypeLe_LtrObjObj* = object
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    io*: KaitaiStream
    root*: BcdUserTypeLe
    parent*: BcdUserTypeLe
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
  BcdUserTypeLe_RtlObj* = ref BcdUserTypeLe_RtlObjObj
  BcdUserTypeLe_RtlObjObj* = object
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    io*: KaitaiStream
    root*: BcdUserTypeLe
    parent*: BcdUserTypeLe
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
  BcdUserTypeLe_LeadingZeroLtrObj* = ref BcdUserTypeLe_LeadingZeroLtrObjObj
  BcdUserTypeLe_LeadingZeroLtrObjObj* = object
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    io*: KaitaiStream
    root*: BcdUserTypeLe
    parent*: BcdUserTypeLe
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
  BcdUserTypeLe* = ref BcdUserTypeLeObj
  BcdUserTypeLeObj* = object
    ltr*: BcdUserTypeLe_LtrObj
    rtl*: BcdUserTypeLe_RtlObj
    leadingZeroLtr*: BcdUserTypeLe_LeadingZeroLtrObj
    io*: KaitaiStream
    root*: BcdUserTypeLe
    parent*: ref RootObj
    rawLtr*: string
    rawRtl*: string
    rawLeadingZeroLtr*: string

### BcdUserTypeLe_LtrObj ###
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
proc asInt(this: BcdUserTypeLe_LtrObj): int = 
  if isSome(this.asIntInst):
    return get(this.asIntInst)
  let asIntInst = ((((((((this.digit8 * 1) + (this.digit7 * 10)) + (this.digit6 * 100)) + (this.digit5 * 1000)) + (this.digit4 * 10000)) + (this.digit3 * 100000)) + (this.digit2 * 1000000)) + (this.digit1 * 10000000))
  this.asIntInst = some(asIntInst)
  return get(this.asIntInst)

proc digit2(this: BcdUserTypeLe_LtrObj): int = 
  if isSome(this.digit2Inst):
    return get(this.digit2Inst)
  let digit2Inst = (this.b4 and 15)
  this.digit2Inst = some(digit2Inst)
  return get(this.digit2Inst)

proc digit4(this: BcdUserTypeLe_LtrObj): int = 
  if isSome(this.digit4Inst):
    return get(this.digit4Inst)
  let digit4Inst = (this.b3 and 15)
  this.digit4Inst = some(digit4Inst)
  return get(this.digit4Inst)

proc digit3(this: BcdUserTypeLe_LtrObj): int = 
  if isSome(this.digit3Inst):
    return get(this.digit3Inst)
  let digit3Inst = ((this.b3 and 240) shr 4)
  this.digit3Inst = some(digit3Inst)
  return get(this.digit3Inst)

proc digit5(this: BcdUserTypeLe_LtrObj): int = 
  if isSome(this.digit5Inst):
    return get(this.digit5Inst)
  let digit5Inst = ((this.b2 and 240) shr 4)
  this.digit5Inst = some(digit5Inst)
  return get(this.digit5Inst)

proc digit8(this: BcdUserTypeLe_LtrObj): int = 
  if isSome(this.digit8Inst):
    return get(this.digit8Inst)
  let digit8Inst = (this.b1 and 15)
  this.digit8Inst = some(digit8Inst)
  return get(this.digit8Inst)

proc digit6(this: BcdUserTypeLe_LtrObj): int = 
  if isSome(this.digit6Inst):
    return get(this.digit6Inst)
  let digit6Inst = (this.b2 and 15)
  this.digit6Inst = some(digit6Inst)
  return get(this.digit6Inst)

proc asStr(this: BcdUserTypeLe_LtrObj): string = 
  if isSome(this.asStrInst):
    return get(this.asStrInst)
  let asStrInst = intToStr(this.digit1) & intToStr(this.digit2) & intToStr(this.digit3) & intToStr(this.digit4) & intToStr(this.digit5) & intToStr(this.digit6) & intToStr(this.digit7) & intToStr(this.digit8)
  this.asStrInst = some(asStrInst)
  return get(this.asStrInst)

proc digit1(this: BcdUserTypeLe_LtrObj): int = 
  if isSome(this.digit1Inst):
    return get(this.digit1Inst)
  let digit1Inst = ((this.b4 and 240) shr 4)
  this.digit1Inst = some(digit1Inst)
  return get(this.digit1Inst)

proc digit7(this: BcdUserTypeLe_LtrObj): int = 
  if isSome(this.digit7Inst):
    return get(this.digit7Inst)
  let digit7Inst = ((this.b1 and 240) shr 4)
  this.digit7Inst = some(digit7Inst)
  return get(this.digit7Inst)

proc read*(_: typedesc[BcdUserTypeLe_LtrObj], io: KaitaiStream, root: BcdUserTypeLe, parent: BcdUserTypeLe): BcdUserTypeLe_LtrObj =
  let this = new(BcdUserTypeLe_LtrObj)
  let root = if root == nil: cast[BcdUserTypeLe](result) else: root
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

proc fromFile*(_: typedesc[BcdUserTypeLe_LtrObj], filename: string): BcdUserTypeLe_LtrObj =
  BcdUserTypeLe_LtrObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeLe_LtrObjObj) =
  close(x.io)

### BcdUserTypeLe_RtlObj ###
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
proc asInt(this: BcdUserTypeLe_RtlObj): int = 
  if isSome(this.asIntInst):
    return get(this.asIntInst)
  let asIntInst = ((((((((this.digit1 * 1) + (this.digit2 * 10)) + (this.digit3 * 100)) + (this.digit4 * 1000)) + (this.digit5 * 10000)) + (this.digit6 * 100000)) + (this.digit7 * 1000000)) + (this.digit8 * 10000000))
  this.asIntInst = some(asIntInst)
  return get(this.asIntInst)

proc digit2(this: BcdUserTypeLe_RtlObj): int = 
  if isSome(this.digit2Inst):
    return get(this.digit2Inst)
  let digit2Inst = (this.b4 and 15)
  this.digit2Inst = some(digit2Inst)
  return get(this.digit2Inst)

proc digit4(this: BcdUserTypeLe_RtlObj): int = 
  if isSome(this.digit4Inst):
    return get(this.digit4Inst)
  let digit4Inst = (this.b3 and 15)
  this.digit4Inst = some(digit4Inst)
  return get(this.digit4Inst)

proc digit3(this: BcdUserTypeLe_RtlObj): int = 
  if isSome(this.digit3Inst):
    return get(this.digit3Inst)
  let digit3Inst = ((this.b3 and 240) shr 4)
  this.digit3Inst = some(digit3Inst)
  return get(this.digit3Inst)

proc digit5(this: BcdUserTypeLe_RtlObj): int = 
  if isSome(this.digit5Inst):
    return get(this.digit5Inst)
  let digit5Inst = ((this.b2 and 240) shr 4)
  this.digit5Inst = some(digit5Inst)
  return get(this.digit5Inst)

proc digit8(this: BcdUserTypeLe_RtlObj): int = 
  if isSome(this.digit8Inst):
    return get(this.digit8Inst)
  let digit8Inst = (this.b1 and 15)
  this.digit8Inst = some(digit8Inst)
  return get(this.digit8Inst)

proc digit6(this: BcdUserTypeLe_RtlObj): int = 
  if isSome(this.digit6Inst):
    return get(this.digit6Inst)
  let digit6Inst = (this.b2 and 15)
  this.digit6Inst = some(digit6Inst)
  return get(this.digit6Inst)

proc asStr(this: BcdUserTypeLe_RtlObj): string = 
  if isSome(this.asStrInst):
    return get(this.asStrInst)
  let asStrInst = intToStr(this.digit8) & intToStr(this.digit7) & intToStr(this.digit6) & intToStr(this.digit5) & intToStr(this.digit4) & intToStr(this.digit3) & intToStr(this.digit2) & intToStr(this.digit1)
  this.asStrInst = some(asStrInst)
  return get(this.asStrInst)

proc digit1(this: BcdUserTypeLe_RtlObj): int = 
  if isSome(this.digit1Inst):
    return get(this.digit1Inst)
  let digit1Inst = ((this.b4 and 240) shr 4)
  this.digit1Inst = some(digit1Inst)
  return get(this.digit1Inst)

proc digit7(this: BcdUserTypeLe_RtlObj): int = 
  if isSome(this.digit7Inst):
    return get(this.digit7Inst)
  let digit7Inst = ((this.b1 and 240) shr 4)
  this.digit7Inst = some(digit7Inst)
  return get(this.digit7Inst)

proc read*(_: typedesc[BcdUserTypeLe_RtlObj], io: KaitaiStream, root: BcdUserTypeLe, parent: BcdUserTypeLe): BcdUserTypeLe_RtlObj =
  let this = new(BcdUserTypeLe_RtlObj)
  let root = if root == nil: cast[BcdUserTypeLe](result) else: root
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

proc fromFile*(_: typedesc[BcdUserTypeLe_RtlObj], filename: string): BcdUserTypeLe_RtlObj =
  BcdUserTypeLe_RtlObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeLe_RtlObjObj) =
  close(x.io)

### BcdUserTypeLe_LeadingZeroLtrObj ###
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
proc asInt(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if isSome(this.asIntInst):
    return get(this.asIntInst)
  let asIntInst = ((((((((this.digit8 * 1) + (this.digit7 * 10)) + (this.digit6 * 100)) + (this.digit5 * 1000)) + (this.digit4 * 10000)) + (this.digit3 * 100000)) + (this.digit2 * 1000000)) + (this.digit1 * 10000000))
  this.asIntInst = some(asIntInst)
  return get(this.asIntInst)

proc digit2(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if isSome(this.digit2Inst):
    return get(this.digit2Inst)
  let digit2Inst = (this.b4 and 15)
  this.digit2Inst = some(digit2Inst)
  return get(this.digit2Inst)

proc digit4(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if isSome(this.digit4Inst):
    return get(this.digit4Inst)
  let digit4Inst = (this.b3 and 15)
  this.digit4Inst = some(digit4Inst)
  return get(this.digit4Inst)

proc digit3(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if isSome(this.digit3Inst):
    return get(this.digit3Inst)
  let digit3Inst = ((this.b3 and 240) shr 4)
  this.digit3Inst = some(digit3Inst)
  return get(this.digit3Inst)

proc digit5(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if isSome(this.digit5Inst):
    return get(this.digit5Inst)
  let digit5Inst = ((this.b2 and 240) shr 4)
  this.digit5Inst = some(digit5Inst)
  return get(this.digit5Inst)

proc digit8(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if isSome(this.digit8Inst):
    return get(this.digit8Inst)
  let digit8Inst = (this.b1 and 15)
  this.digit8Inst = some(digit8Inst)
  return get(this.digit8Inst)

proc digit6(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if isSome(this.digit6Inst):
    return get(this.digit6Inst)
  let digit6Inst = (this.b2 and 15)
  this.digit6Inst = some(digit6Inst)
  return get(this.digit6Inst)

proc asStr(this: BcdUserTypeLe_LeadingZeroLtrObj): string = 
  if isSome(this.asStrInst):
    return get(this.asStrInst)
  let asStrInst = intToStr(this.digit1) & intToStr(this.digit2) & intToStr(this.digit3) & intToStr(this.digit4) & intToStr(this.digit5) & intToStr(this.digit6) & intToStr(this.digit7) & intToStr(this.digit8)
  this.asStrInst = some(asStrInst)
  return get(this.asStrInst)

proc digit1(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if isSome(this.digit1Inst):
    return get(this.digit1Inst)
  let digit1Inst = ((this.b4 and 240) shr 4)
  this.digit1Inst = some(digit1Inst)
  return get(this.digit1Inst)

proc digit7(this: BcdUserTypeLe_LeadingZeroLtrObj): int = 
  if isSome(this.digit7Inst):
    return get(this.digit7Inst)
  let digit7Inst = ((this.b1 and 240) shr 4)
  this.digit7Inst = some(digit7Inst)
  return get(this.digit7Inst)

proc read*(_: typedesc[BcdUserTypeLe_LeadingZeroLtrObj], io: KaitaiStream, root: BcdUserTypeLe, parent: BcdUserTypeLe): BcdUserTypeLe_LeadingZeroLtrObj =
  let this = new(BcdUserTypeLe_LeadingZeroLtrObj)
  let root = if root == nil: cast[BcdUserTypeLe](result) else: root
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

proc fromFile*(_: typedesc[BcdUserTypeLe_LeadingZeroLtrObj], filename: string): BcdUserTypeLe_LeadingZeroLtrObj =
  BcdUserTypeLe_LeadingZeroLtrObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeLe_LeadingZeroLtrObjObj) =
  close(x.io)

### BcdUserTypeLe ###
proc read*(_: typedesc[BcdUserTypeLe], io: KaitaiStream, root: BcdUserTypeLe, parent: ref RootObj): BcdUserTypeLe =
  let this = new(BcdUserTypeLe)
  let root = if root == nil: cast[BcdUserTypeLe](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let rawLtr = this.io.readBytes(int(4))
  this.rawLtr = rawLtr
  let rawLtrIo = newKaitaiStringStream(rawLtr)
  let ltr = BcdUserTypeLe_LtrObj.read(rawLtrIo, this.root, this)
  this.ltr = ltr
  let rawRtl = this.io.readBytes(int(4))
  this.rawRtl = rawRtl
  let rawRtlIo = newKaitaiStringStream(rawRtl)
  let rtl = BcdUserTypeLe_RtlObj.read(rawRtlIo, this.root, this)
  this.rtl = rtl
  let rawLeadingZeroLtr = this.io.readBytes(int(4))
  this.rawLeadingZeroLtr = rawLeadingZeroLtr
  let rawLeadingZeroLtrIo = newKaitaiStringStream(rawLeadingZeroLtr)
  let leadingZeroLtr = BcdUserTypeLe_LeadingZeroLtrObj.read(rawLeadingZeroLtrIo, this.root, this)
  this.leadingZeroLtr = leadingZeroLtr
  result = this

proc fromFile*(_: typedesc[BcdUserTypeLe], filename: string): BcdUserTypeLe =
  BcdUserTypeLe.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeLeObj) =
  close(x.io)


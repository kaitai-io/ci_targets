import ../../runtime/nim/kaitai
import options

{.experimental: "dotOperators".}

type
  LtrObj* = ref LtrObjObj
  LtrObjObj* = object
    io: KaitaiStream
    root*: BcdUserTypeLe
    parent*: BcdUserTypeLe
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    asIntInst: proc(): int
    digit2Inst: proc(): int
    digit4Inst: proc(): int
    digit3Inst: proc(): int
    digit5Inst: proc(): int
    digit8Inst: proc(): int
    digit6Inst: proc(): int
    asStrInst: proc(): string
    digit1Inst: proc(): int
    digit7Inst: proc(): int
  RtlObj* = ref RtlObjObj
  RtlObjObj* = object
    io: KaitaiStream
    root*: BcdUserTypeLe
    parent*: BcdUserTypeLe
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    asIntInst: proc(): int
    digit2Inst: proc(): int
    digit4Inst: proc(): int
    digit3Inst: proc(): int
    digit5Inst: proc(): int
    digit8Inst: proc(): int
    digit6Inst: proc(): int
    asStrInst: proc(): string
    digit1Inst: proc(): int
    digit7Inst: proc(): int
  LeadingZeroLtrObj* = ref LeadingZeroLtrObjObj
  LeadingZeroLtrObjObj* = object
    io: KaitaiStream
    root*: BcdUserTypeLe
    parent*: BcdUserTypeLe
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    asIntInst: proc(): int
    digit2Inst: proc(): int
    digit4Inst: proc(): int
    digit3Inst: proc(): int
    digit5Inst: proc(): int
    digit8Inst: proc(): int
    digit6Inst: proc(): int
    asStrInst: proc(): string
    digit1Inst: proc(): int
    digit7Inst: proc(): int
  BcdUserTypeLe* = ref BcdUserTypeLeObj
  BcdUserTypeLeObj* = object
    io: KaitaiStream
    root*: BcdUserTypeLe
    parent*: ref RootObj
    ltr*: LtrObj
    rtl*: RtlObj
    leadingZeroLtr*: LeadingZeroLtrObj

# LtrObj
template `.`*(a: LtrObj, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[LtrObj], io: KaitaiStream, root: BcdUserTypeLe, parent: BcdUserTypeLe): owned LtrObj =
  result = new(LtrObj)
  let root = if root == nil: cast[BcdUserTypeLe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.b1 = readU1(io)
  result.b2 = readU1(io)
  result.b3 = readU1(io)
  result.b4 = readU1(io)

proc fromFile*(_: typedesc[LtrObj], filename: string): owned LtrObj =
  LtrObj.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var LtrObjObj) =
  close(x.io)

# RtlObj
template `.`*(a: RtlObj, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[RtlObj], io: KaitaiStream, root: BcdUserTypeLe, parent: BcdUserTypeLe): owned RtlObj =
  result = new(RtlObj)
  let root = if root == nil: cast[BcdUserTypeLe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.b1 = readU1(io)
  result.b2 = readU1(io)
  result.b3 = readU1(io)
  result.b4 = readU1(io)

proc fromFile*(_: typedesc[RtlObj], filename: string): owned RtlObj =
  RtlObj.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var RtlObjObj) =
  close(x.io)

# LeadingZeroLtrObj
template `.`*(a: LeadingZeroLtrObj, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[LeadingZeroLtrObj], io: KaitaiStream, root: BcdUserTypeLe, parent: BcdUserTypeLe): owned LeadingZeroLtrObj =
  result = new(LeadingZeroLtrObj)
  let root = if root == nil: cast[BcdUserTypeLe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.b1 = readU1(io)
  result.b2 = readU1(io)
  result.b3 = readU1(io)
  result.b4 = readU1(io)

proc fromFile*(_: typedesc[LeadingZeroLtrObj], filename: string): owned LeadingZeroLtrObj =
  LeadingZeroLtrObj.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var LeadingZeroLtrObjObj) =
  close(x.io)

# BcdUserTypeLe
proc read*(_: typedesc[BcdUserTypeLe], io: KaitaiStream, root: BcdUserTypeLe, parent: ref RootObj): owned BcdUserTypeLe =
  result = new(BcdUserTypeLe)
  let root = if root == nil: cast[BcdUserTypeLe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.ltr = LtrObj.read(io, root, result)
  result.rtl = RtlObj.read(io, root, result)
  result.leadingZeroLtr = LeadingZeroLtrObj.read(io, root, result)

proc fromFile*(_: typedesc[BcdUserTypeLe], filename: string): owned BcdUserTypeLe =
  BcdUserTypeLe.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeLeObj) =
  close(x.io)


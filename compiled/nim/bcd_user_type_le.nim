# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  BcdUserTypeLe* = ref object
    ltr*: LtrObj
    rtl*: RtlObj
    leadingZeroLtr*: LeadingZeroLtrObj
    root*: BcdUserTypeLe
    parent*: ref RootObj
    raw_ltr*: seq[byte]
    raw_rtl*: seq[byte]
    raw_leadingZeroLtr*: seq[byte]
  LtrObj* = ref object
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    root*: BcdUserTypeLe
    parent*: BcdUserTypeLe
    asInt*: Option[int]
    digit2*: Option[int]
    digit4*: Option[int]
    digit3*: Option[int]
    digit5*: Option[int]
    digit8*: Option[int]
    digit6*: Option[int]
    asStr*: Option[string]
    digit1*: Option[int]
    digit7*: Option[int]
  RtlObj* = ref object
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    root*: BcdUserTypeLe
    parent*: BcdUserTypeLe
    asInt*: Option[int]
    digit2*: Option[int]
    digit4*: Option[int]
    digit3*: Option[int]
    digit5*: Option[int]
    digit8*: Option[int]
    digit6*: Option[int]
    asStr*: Option[string]
    digit1*: Option[int]
    digit7*: Option[int]
  LeadingZeroLtrObj* = ref object
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    root*: BcdUserTypeLe
    parent*: BcdUserTypeLe
    asInt*: Option[int]
    digit2*: Option[int]
    digit4*: Option[int]
    digit3*: Option[int]
    digit5*: Option[int]
    digit8*: Option[int]
    digit6*: Option[int]
    asStr*: Option[string]
    digit1*: Option[int]
    digit7*: Option[int]

proc read*(_: typedesc[LtrObj], stream: KaitaiStream, root: BcdUserTypeLe, parent: BcdUserTypeLe): owned LtrObj =
  result = new(LtrObj)
  let root = if root == nil: cast[BcdUserTypeLe](result) else: root
  result.b1 = readU1(stream)
  result.b2 = readU1(stream)
  result.b3 = readU1(stream)
  result.b4 = readU1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[LtrObj], filename: string): owned LtrObj =
  var stream = newKaitaiStream(filename)
  LtrObj.read(stream, nil, nil)

proc read*(_: typedesc[RtlObj], stream: KaitaiStream, root: BcdUserTypeLe, parent: BcdUserTypeLe): owned RtlObj =
  result = new(RtlObj)
  let root = if root == nil: cast[BcdUserTypeLe](result) else: root
  result.b1 = readU1(stream)
  result.b2 = readU1(stream)
  result.b3 = readU1(stream)
  result.b4 = readU1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[RtlObj], filename: string): owned RtlObj =
  var stream = newKaitaiStream(filename)
  RtlObj.read(stream, nil, nil)

proc read*(_: typedesc[LeadingZeroLtrObj], stream: KaitaiStream, root: BcdUserTypeLe, parent: BcdUserTypeLe): owned LeadingZeroLtrObj =
  result = new(LeadingZeroLtrObj)
  let root = if root == nil: cast[BcdUserTypeLe](result) else: root
  result.b1 = readU1(stream)
  result.b2 = readU1(stream)
  result.b3 = readU1(stream)
  result.b4 = readU1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[LeadingZeroLtrObj], filename: string): owned LeadingZeroLtrObj =
  var stream = newKaitaiStream(filename)
  LeadingZeroLtrObj.read(stream, nil, nil)

proc read*(_: typedesc[BcdUserTypeLe], stream: KaitaiStream, root: BcdUserTypeLe, parent: ref RootObj): owned BcdUserTypeLe =
  result = new(BcdUserTypeLe)
  let root = if root == nil: cast[BcdUserTypeLe](result) else: root
  result.ltr = LtrObj.read(stream, root, result)
  result.rtl = RtlObj.read(stream, root, result)
  result.leadingZeroLtr = LeadingZeroLtrObj.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[BcdUserTypeLe], filename: string): owned BcdUserTypeLe =
  var stream = newKaitaiStream(filename)
  BcdUserTypeLe.read(stream, nil, nil)

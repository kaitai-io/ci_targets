# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  BcdUserTypeLe* = ref object
    ltr*: LtrObj
    rtl*: RtlObj
    leadingZeroLtr*: LeadingZeroLtrObj
    root*: BcdUserTypeLe
    parent*: ref RootObj
    _raw_ltr*: seq[byte]
    _raw_rtl*: seq[byte]
    _raw_leadingZeroLtr*: seq[byte]
BcdUserTypeLeltrObj* = ref object
  b1*: uint8
  b2*: uint8
  b3*: uint8
  b4*: uint8
  root*: BcdUserTypeLe
  parent*: BcdUserTypeLe
BcdUserTypeLertlObj* = ref object
b1*: uint8
b2*: uint8
b3*: uint8
b4*: uint8
root*: BcdUserTypeLe
parent*: BcdUserTypeLe
BcdUserTypeLeleadingZeroLtrObj* = ref object
b1*: uint8
b2*: uint8
b3*: uint8
b4*: uint8
root*: BcdUserTypeLe
parent*: BcdUserTypeLe

proc read*(_: typedesc[BcdUserTypeLe], stream: KaitaiStream, root: BcdUserTypeLe, parent: ref RootObj): owned BcdUserTypeLe =
result = new(BcdUserTypeLe)
let root = if root == nil: result else: root
result.ltr = readUserTypeFromBytes(List(ltr_obj),None,List(),BytesLimitType(IntNum(4),None,false,None,None),None)(stream)
result.rtl = readUserTypeFromBytes(List(rtl_obj),None,List(),BytesLimitType(IntNum(4),None,false,None,None),None)(stream)
result.leadingZeroLtr = readUserTypeFromBytes(List(leading_zero_ltr_obj),None,List(),BytesLimitType(IntNum(4),None,false,None,None),None)(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[BcdUserTypeLe], filename: string): owned BcdUserTypeLe =
var stream = newKaitaiStream(filename)
BcdUserTypeLe.read(stream, nil, nil)

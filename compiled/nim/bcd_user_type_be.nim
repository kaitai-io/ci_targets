# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  BcdUserTypeBe* = ref object
    ltr*: LtrObj
    rtl*: RtlObj
    leadingZeroLtr*: LeadingZeroLtrObj
    root*: BcdUserTypeBe
    parent*: ref RootObj
    _raw_ltr*: seq[byte]
    _raw_rtl*: seq[byte]
    _raw_leadingZeroLtr*: seq[byte]
BcdUserTypeBeltrObj* = ref object
  b1*: uint8
  b2*: uint8
  b3*: uint8
  b4*: uint8
  root*: BcdUserTypeBe
  parent*: BcdUserTypeBe
BcdUserTypeBertlObj* = ref object
b1*: uint8
b2*: uint8
b3*: uint8
b4*: uint8
root*: BcdUserTypeBe
parent*: BcdUserTypeBe
BcdUserTypeBeleadingZeroLtrObj* = ref object
b1*: uint8
b2*: uint8
b3*: uint8
b4*: uint8
root*: BcdUserTypeBe
parent*: BcdUserTypeBe

proc read*(_: typedesc[BcdUserTypeBe], stream: KaitaiStream, root: BcdUserTypeBe, parent: ref RootObj): owned BcdUserTypeBe =
result = new(BcdUserTypeBe)
let root = if root == nil: result else: root
result.ltr = readUserTypeFromBytes(List(ltr_obj),None,List(),BytesLimitType(IntNum(4),None,false,None,None),None)(stream)
result.rtl = readUserTypeFromBytes(List(rtl_obj),None,List(),BytesLimitType(IntNum(4),None,false,None,None),None)(stream)
result.leadingZeroLtr = readUserTypeFromBytes(List(leading_zero_ltr_obj),None,List(),BytesLimitType(IntNum(4),None,false,None,None),None)(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[BcdUserTypeBe], filename: string): owned BcdUserTypeBe =
var stream = newKaitaiStream(filename)
BcdUserTypeBe.read(stream, nil, nil)

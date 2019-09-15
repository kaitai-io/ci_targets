# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ParamsCallShort* = ref object
    buf1*: MyStr1
    buf2*: MyStr2
    root*: ParamsCallShort
    parent*: ref RootObj
ParamsCallShortmyStr1* = ref object
  body*: string
  root*: ParamsCallShort
  parent*: ParamsCallShort
ParamsCallShortmyStr2* = ref object
body*: string
trailer*: uint8
root*: ParamsCallShort
parent*: ParamsCallShort

proc read*(_: typedesc[ParamsCallShort], stream: KaitaiStream, root: ParamsCallShort, parent: ref RootObj): owned ParamsCallShort =
result = new(ParamsCallShort)
let root = if root == nil: result else: root
result.buf1 = readUserTypeInstream(List(my_str1),None,ArrayBuffer(IntNum(5)))(stream)
result.buf2 = readUserTypeInstream(List(my_str2),None,ArrayBuffer(BinOp(IntNum(2),Add,IntNum(3)), Bool(true)))(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[ParamsCallShort], filename: string): owned ParamsCallShort =
var stream = newKaitaiStream(filename)
ParamsCallShort.read(stream, nil, nil)

# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ExprIoPos* = ref object
    substream1*: AllPlusNumber
    substream2*: AllPlusNumber
    root*: ExprIoPos
    parent*: ref RootObj
    _raw_substream1*: seq[byte]
    _raw_substream2*: seq[byte]
ExprIoPosallPlusNumber* = ref object
  myStr*: string
  body*: seq[byte]
  number*: uint16
  root*: ExprIoPos
  parent*: ExprIoPos

proc read*(_: typedesc[ExprIoPos], stream: KaitaiStream, root: ExprIoPos, parent: ref RootObj): owned ExprIoPos =
result = new(ExprIoPos)
let root = if root == nil: result else: root
result.substream1 = readUserTypeFromBytes(List(all_plus_number),None,List(),BytesLimitType(IntNum(16),None,false,None,None),None)(stream)
result.substream2 = readUserTypeFromBytes(List(all_plus_number),None,List(),BytesLimitType(IntNum(14),None,false,None,None),None)(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[ExprIoPos], filename: string): owned ExprIoPos =
var stream = newKaitaiStream(filename)
ExprIoPos.read(stream, nil, nil)

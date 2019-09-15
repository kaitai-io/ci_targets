# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ExprIoEof* = ref object
    substream1*: OneOrTwo
    substream2*: OneOrTwo
    root*: ExprIoEof
    parent*: ref RootObj
    _raw_substream1*: seq[byte]
    _raw_substream2*: seq[byte]
ExprIoEofoneOrTwo* = ref object
  one*: uint32
  two*: uint32
  root*: ExprIoEof
  parent*: ExprIoEof

proc read*(_: typedesc[ExprIoEof], stream: KaitaiStream, root: ExprIoEof, parent: ref RootObj): owned ExprIoEof =
result = new(ExprIoEof)
let root = if root == nil: result else: root
result.substream1 = readUserTypeFromBytes(List(one_or_two),None,List(),BytesLimitType(IntNum(4),None,false,None,None),None)(stream)
result.substream2 = readUserTypeFromBytes(List(one_or_two),None,List(),BytesLimitType(IntNum(8),None,false,None,None),None)(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[ExprIoEof], filename: string): owned ExprIoEof =
var stream = newKaitaiStream(filename)
ExprIoEof.read(stream, nil, nil)

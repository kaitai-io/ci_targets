# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ExprSizeofValueSized* = ref object
    block1*: Block
    more*: uint16
    root*: ExprSizeofValueSized
    parent*: ref RootObj
    _raw_block1*: seq[byte]
ExprSizeofValueSizedblock* = ref object
  a*: uint8
  b*: uint32
  c*: seq[byte]
  root*: ExprSizeofValueSized
  parent*: ExprSizeofValueSized

proc read*(_: typedesc[ExprSizeofValueSized], stream: KaitaiStream, root: ExprSizeofValueSized, parent: ref RootObj): owned ExprSizeofValueSized =
result = new(ExprSizeofValueSized)
let root = if root == nil: result else: root
result.block1 = readUserTypeFromBytes(List(block),None,List(),BytesLimitType(IntNum(12),None,false,None,None),None)(stream)
result.more = readU2le(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[ExprSizeofValueSized], filename: string): owned ExprSizeofValueSized =
var stream = newKaitaiStream(filename)
ExprSizeofValueSized.read(stream, nil, nil)

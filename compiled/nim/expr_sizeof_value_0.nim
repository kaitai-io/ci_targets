# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ExprSizeofValue0* = ref object
    block1*: Block
    more*: uint16
    root*: ExprSizeofValue0
    parent*: ref RootObj
ExprSizeofValue0block* = ref object
  a*: uint8
  b*: uint32
  c*: seq[byte]
  root*: ExprSizeofValue0
  parent*: ExprSizeofValue0

proc read*(_: typedesc[ExprSizeofValue0], stream: KaitaiStream, root: ExprSizeofValue0, parent: ref RootObj): owned ExprSizeofValue0 =
result = new(ExprSizeofValue0)
let root = if root == nil: result else: root
result.block1 = readUserTypeInstream(List(block),None,List())(stream)
result.more = readU2le(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[ExprSizeofValue0], filename: string): owned ExprSizeofValue0 =
var stream = newKaitaiStream(filename)
ExprSizeofValue0.read(stream, nil, nil)

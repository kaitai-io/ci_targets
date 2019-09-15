# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ExprSizeofType1* = ref object
    root*: ExprSizeofType1
    parent*: ref RootObj
ExprSizeofType1block* = ref object
  a*: uint8
  b*: uint32
  c*: seq[byte]
  d*: Subblock
  root*: ExprSizeofType1
  parent*: ref RootObj
ExprSizeofType1blocksubblock* = ref object
a*: seq[byte]
root*: ExprSizeofType1
parent*: ref RootObj

proc read*(_: typedesc[ExprSizeofType1], stream: KaitaiStream, root: ExprSizeofType1, parent: ref RootObj): owned ExprSizeofType1 =
result = new(ExprSizeofType1)
let root = if root == nil: result else: root
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[ExprSizeofType1], filename: string): owned ExprSizeofType1 =
var stream = newKaitaiStream(filename)
ExprSizeofType1.read(stream, nil, nil)

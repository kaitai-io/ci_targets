# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ExprSizeofType0* = ref object
    root*: ExprSizeofType0
    parent*: ref RootObj
ExprSizeofType0block* = ref object
  a*: uint8
  b*: uint32
  c*: seq[byte]
  root*: ExprSizeofType0
  parent*: ref RootObj

proc read*(_: typedesc[ExprSizeofType0], stream: KaitaiStream, root: ExprSizeofType0, parent: ref RootObj): owned ExprSizeofType0 =
result = new(ExprSizeofType0)
let root = if root == nil: result else: root
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[ExprSizeofType0], filename: string): owned ExprSizeofType0 =
var stream = newKaitaiStream(filename)
ExprSizeofType0.read(stream, nil, nil)

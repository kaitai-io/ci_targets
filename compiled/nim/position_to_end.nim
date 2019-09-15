# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  PositionToEnd* = ref object
    root*: PositionToEnd
    parent*: ref RootObj
PositionToEndindexObj* = ref object
  foo*: uint32
  bar*: uint32
  root*: PositionToEnd
  parent*: PositionToEnd

proc read*(_: typedesc[PositionToEnd], stream: KaitaiStream, root: PositionToEnd, parent: ref RootObj): owned PositionToEnd =
result = new(PositionToEnd)
let root = if root == nil: result else: root
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[PositionToEnd], filename: string): owned PositionToEnd =
var stream = newKaitaiStream(filename)
PositionToEnd.read(stream, nil, nil)

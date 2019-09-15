# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  PositionAbs* = ref object
    indexOffset*: uint32
    root*: PositionAbs
    parent*: ref RootObj
PositionAbsindexObj* = ref object
  entry*: string
  root*: PositionAbs
  parent*: PositionAbs

proc read*(_: typedesc[PositionAbs], stream: KaitaiStream, root: PositionAbs, parent: ref RootObj): owned PositionAbs =
result = new(PositionAbs)
let root = if root == nil: result else: root
result.indexOffset = readU4le(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[PositionAbs], filename: string): owned PositionAbs =
var stream = newKaitaiStream(filename)
PositionAbs.read(stream, nil, nil)

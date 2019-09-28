# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  PositionToEnd* = ref object
    root*: PositionToEnd
    parent*: ref RootObj
    index*: Option[IndexObj]
  IndexObj* = ref object
    foo*: uint32
    bar*: uint32
    root*: PositionToEnd
    parent*: PositionToEnd

proc read*(_: typedesc[IndexObj], stream: KaitaiStream, root: PositionToEnd, parent: PositionToEnd): owned IndexObj =
  result = new(IndexObj)
  let root = if root == nil: cast[PositionToEnd](result) else: root
  result.foo = readU4le(stream)
  result.bar = readU4le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[IndexObj], filename: string): owned IndexObj =
  var stream = newKaitaiStream(filename)
  IndexObj.read(stream, nil, nil)

proc read*(_: typedesc[PositionToEnd], stream: KaitaiStream, root: PositionToEnd, parent: ref RootObj): owned PositionToEnd =
  result = new(PositionToEnd)
  let root = if root == nil: cast[PositionToEnd](result) else: root
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[PositionToEnd], filename: string): owned PositionToEnd =
  var stream = newKaitaiStream(filename)
  PositionToEnd.read(stream, nil, nil)

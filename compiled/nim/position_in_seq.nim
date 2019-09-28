# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  PositionInSeq* = ref object
    numbers*: seq[uint8]
    root*: PositionInSeq
    parent*: ref RootObj
    header*: Option[HeaderObj]
  HeaderObj* = ref object
    qtyNumbers*: uint32
    root*: PositionInSeq
    parent*: PositionInSeq

proc read*(_: typedesc[HeaderObj], stream: KaitaiStream, root: PositionInSeq, parent: PositionInSeq): owned HeaderObj =
  result = new(HeaderObj)
  let root = if root == nil: cast[PositionInSeq](result) else: root
  result.qtyNumbers = readU4le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[HeaderObj], filename: string): owned HeaderObj =
  var stream = newKaitaiStream(filename)
  HeaderObj.read(stream, nil, nil)

proc read*(_: typedesc[PositionInSeq], stream: KaitaiStream, root: PositionInSeq, parent: ref RootObj): owned PositionInSeq =
  result = new(PositionInSeq)
  let root = if root == nil: cast[PositionInSeq](result) else: root
  result.numbers = newSeq[uint8]()
  while not eof(stream):
    result.numbers.add(readU1(stream))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[PositionInSeq], filename: string): owned PositionInSeq =
  var stream = newKaitaiStream(filename)
  PositionInSeq.read(stream, nil, nil)

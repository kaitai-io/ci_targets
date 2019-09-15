# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  BitsByteAligned* = ref object
    one*: uint64
    byte1*: uint8
    two*: uint64
    three*: bool
    byte2*: uint8
    four*: uint64
    byte3*: seq[byte]
    fullByte*: uint64
    byte4*: uint8
    root*: BitsByteAligned
    parent*: ref RootObj

proc read*(_: typedesc[BitsByteAligned], stream: KaitaiStream, root: BitsByteAligned, parent: ref RootObj): owned BitsByteAligned =
  result = new(BitsByteAligned)
  let root = if root == nil: result else: root
  result.one = readBitsType(6)(stream)
  result.byte1 = readU1(stream)
  result.two = readBitsType(3)(stream)
  result.three = readBitsType1(stream)
  result.byte2 = readU1(stream)
  result.four = readBitsType(14)(stream)
  result.byte3 = readBytesLimitType(IntNum(1),None,false,None,None)(stream)
  result.fullByte = readBitsType(8)(stream)
  result.byte4 = readU1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[BitsByteAligned], filename: string): owned BitsByteAligned =
  var stream = newKaitaiStream(filename)
  BitsByteAligned.read(stream, nil, nil)

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
  let root = if root == nil: cast[BitsByteAligned](result) else: root
  result.one = readBitsInt(stream, 6)
  result.byte1 = readU1(stream)
  result.two = readBitsInt(stream, 3)
  result.three = bool(readBitsInt(stream, 1))
  result.byte2 = readU1(stream)
  result.four = readBitsInt(stream, 14)
  result.byte3 = readBytes(stream, int(1))
  result.fullByte = readBitsInt(stream, 8)
  result.byte4 = readU1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[BitsByteAligned], filename: string): owned BitsByteAligned =
  var stream = newKaitaiStream(filename)
  BitsByteAligned.read(stream, nil, nil)

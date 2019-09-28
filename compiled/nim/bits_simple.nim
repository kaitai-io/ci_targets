# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  BitsSimple* = ref object
    byte1*: uint64
    byte2*: uint64
    bitsA*: bool
    bitsB*: uint64
    bitsC*: uint64
    largeBits1*: uint64
    spacer*: uint64
    largeBits2*: uint64
    normalS2*: int16
    byte8910*: uint64
    byte11To14*: uint64
    byte15To19*: uint64
    byte20To27*: uint64
    root*: BitsSimple
    parent*: ref RootObj
    testIfB1*: Option[int8]

proc read*(_: typedesc[BitsSimple], stream: KaitaiStream, root: BitsSimple, parent: ref RootObj): owned BitsSimple =
  result = new(BitsSimple)
  let root = if root == nil: cast[BitsSimple](result) else: root
  result.byte1 = readBitsInt(stream, 8)
  result.byte2 = readBitsInt(stream, 8)
  result.bitsA = bool(readBitsInt(stream, 1))
  result.bitsB = readBitsInt(stream, 3)
  result.bitsC = readBitsInt(stream, 4)
  result.largeBits1 = readBitsInt(stream, 10)
  result.spacer = readBitsInt(stream, 3)
  result.largeBits2 = readBitsInt(stream, 11)
  result.normalS2 = readS2be(stream)
  result.byte8910 = readBitsInt(stream, 24)
  result.byte11To14 = readBitsInt(stream, 32)
  result.byte15To19 = readBitsInt(stream, 40)
  result.byte20To27 = readBitsInt(stream, 64)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[BitsSimple], filename: string): owned BitsSimple =
  var stream = newKaitaiStream(filename)
  BitsSimple.read(stream, nil, nil)

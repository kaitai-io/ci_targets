# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

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

proc read*(_: typedesc[BitsSimple], stream: KaitaiStream, root: BitsSimple, parent: ref RootObj): owned BitsSimple =
  result = new(BitsSimple)
  let root = if root == nil: result else: root
  result.byte1 = readBitsType(8)(stream)
  result.byte2 = readBitsType(8)(stream)
  result.bitsA = readBitsType1(stream)
  result.bitsB = readBitsType(3)(stream)
  result.bitsC = readBitsType(4)(stream)
  result.largeBits1 = readBitsType(10)(stream)
  result.spacer = readBitsType(3)(stream)
  result.largeBits2 = readBitsType(11)(stream)
  result.normalS2 = readS2be(stream)
  result.byte8910 = readBitsType(24)(stream)
  result.byte11To14 = readBitsType(32)(stream)
  result.byte15To19 = readBitsType(40)(stream)
  result.byte20To27 = readBitsType(64)(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[BitsSimple], filename: string): owned BitsSimple =
  var stream = newKaitaiStream(filename)
  BitsSimple.read(stream, nil, nil)

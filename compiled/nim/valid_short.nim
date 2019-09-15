# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ValidShort* = ref object
    magic1*: seq[byte]
    uint8*: uint8
    sint8*: int8
    magicUint*: string
    uint16*: uint16
    uint32*: uint32
    uint64*: uint64
    magicSint*: string
    sint16*: int16
    sint32*: int32
    sint64*: int
    root*: ValidShort
    parent*: ref RootObj

proc read*(_: typedesc[ValidShort], stream: KaitaiStream, root: ValidShort, parent: ref RootObj): owned ValidShort =
  result = new(ValidShort)
  let root = if root == nil: result else: root
  result.magic1 = readBytesLimitType(IntNum(6),None,false,None,None)(stream)
  result.uint8 = readU1(stream)
  result.sint8 = readS1(stream)
  result.magicUint = readStrFromBytesType(BytesLimitType(IntNum(10),None,false,None,None),utf-8)(stream)
  result.uint16 = readU2le(stream)
  result.uint32 = readU4le(stream)
  result.uint64 = readU8le(stream)
  result.magicSint = readStrFromBytesType(BytesLimitType(IntNum(10),None,false,None,None),utf-8)(stream)
  result.sint16 = readS2le(stream)
  result.sint32 = readS4le(stream)
  result.sint64 = readS8le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ValidShort], filename: string): owned ValidShort =
  var stream = newKaitaiStream(filename)
  ValidShort.read(stream, nil, nil)

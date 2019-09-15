# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  Integers* = ref object
    magic1*: seq[byte]
    uint8*: uint8
    sint8*: int8
    magicUint*: seq[byte]
    uint16*: uint16
    uint32*: uint32
    uint64*: uint64
    magicSint*: seq[byte]
    sint16*: int16
    sint32*: int32
    sint64*: int
    magicUintLe*: seq[byte]
    uint16le*: uint16
    uint32le*: uint32
    uint64le*: uint64
    magicSintLe*: seq[byte]
    sint16le*: int16
    sint32le*: int32
    sint64le*: int
    magicUintBe*: seq[byte]
    uint16be*: uint16
    uint32be*: uint32
    uint64be*: uint64
    magicSintBe*: seq[byte]
    sint16be*: int16
    sint32be*: int32
    sint64be*: int
    root*: Integers
    parent*: ref RootObj

proc read*(_: typedesc[Integers], stream: KaitaiStream, root: Integers, parent: ref RootObj): owned Integers =
  result = new(Integers)
  let root = if root == nil: result else: root
  result.magic1 = readFixedBytesType([B@6a84bc3f,None)(stream)
  result.uint8 = readU1(stream)
  result.sint8 = readS1(stream)
  result.magicUint = readFixedBytesType([B@258ee7de,None)(stream)
  result.uint16 = readU2le(stream)
  result.uint32 = readU4le(stream)
  result.uint64 = readU8le(stream)
  result.magicSint = readFixedBytesType([B@4930539b,None)(stream)
  result.sint16 = readS2le(stream)
  result.sint32 = readS4le(stream)
  result.sint64 = readS8le(stream)
  result.magicUintLe = readFixedBytesType([B@6d171ce0,None)(stream)
  result.uint16le = readU2le(stream)
  result.uint32le = readU4le(stream)
  result.uint64le = readU8le(stream)
  result.magicSintLe = readFixedBytesType([B@22bd2039,None)(stream)
  result.sint16le = readS2le(stream)
  result.sint32le = readS4le(stream)
  result.sint64le = readS8le(stream)
  result.magicUintBe = readFixedBytesType([B@705f83a7,None)(stream)
  result.uint16be = readU2be(stream)
  result.uint32be = readU4be(stream)
  result.uint64be = readU8be(stream)
  result.magicSintBe = readFixedBytesType([B@3bb8aabc,None)(stream)
  result.sint16be = readS2be(stream)
  result.sint32be = readS4be(stream)
  result.sint64be = readS8be(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Integers], filename: string): owned Integers =
  var stream = newKaitaiStream(filename)
  Integers.read(stream, nil, nil)

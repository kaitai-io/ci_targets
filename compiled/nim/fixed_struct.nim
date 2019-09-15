# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  FixedStruct* = ref object
    root*: FixedStruct
    parent*: ref RootObj
FixedStructheader* = ref object
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
  root*: FixedStruct
  parent*: FixedStruct

proc read*(_: typedesc[FixedStruct], stream: KaitaiStream, root: FixedStruct, parent: ref RootObj): owned FixedStruct =
result = new(FixedStruct)
let root = if root == nil: result else: root
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[FixedStruct], filename: string): owned FixedStruct =
var stream = newKaitaiStream(filename)
FixedStruct.read(stream, nil, nil)

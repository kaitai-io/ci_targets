# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  BufferedStruct* = ref object
    len1*: uint32
    block1*: Block
    len2*: uint32
    block2*: Block
    finisher*: uint32
    root*: BufferedStruct
    parent*: ref RootObj
    _raw_block1*: seq[byte]
    _raw_block2*: seq[byte]
BufferedStructblock* = ref object
  number1*: uint32
  number2*: uint32
  root*: BufferedStruct
  parent*: BufferedStruct

proc read*(_: typedesc[BufferedStruct], stream: KaitaiStream, root: BufferedStruct, parent: ref RootObj): owned BufferedStruct =
result = new(BufferedStruct)
let root = if root == nil: result else: root
result.len1 = readU4le(stream)
result.block1 = readUserTypeFromBytes(List(block),None,List(),BytesLimitType(Name(identifier(len1)),None,false,None,None),None)(stream)
result.len2 = readU4le(stream)
result.block2 = readUserTypeFromBytes(List(block),None,List(),BytesLimitType(Name(identifier(len2)),None,false,None,None),None)(stream)
result.finisher = readU4le(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[BufferedStruct], filename: string): owned BufferedStruct =
var stream = newKaitaiStream(filename)
BufferedStruct.read(stream, nil, nil)

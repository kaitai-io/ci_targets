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
    raw_block1*: seq[byte]
    raw_block2*: seq[byte]
  Block* = ref object
    number1*: uint32
    number2*: uint32
    root*: BufferedStruct
    parent*: BufferedStruct

proc read*(_: typedesc[Block], stream: KaitaiStream, root: BufferedStruct, parent: BufferedStruct): owned Block =
  result = new(Block)
  let root = if root == nil: cast[BufferedStruct](result) else: root
  result.number1 = readU4le(stream)
  result.number2 = readU4le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Block], filename: string): owned Block =
  var stream = newKaitaiStream(filename)
  Block.read(stream, nil, nil)

proc read*(_: typedesc[BufferedStruct], stream: KaitaiStream, root: BufferedStruct, parent: ref RootObj): owned BufferedStruct =
  result = new(BufferedStruct)
  let root = if root == nil: cast[BufferedStruct](result) else: root
  result.len1 = readU4le(stream)
  result.block1 = Block.read(stream, root, result)
  result.len2 = readU4le(stream)
  result.block2 = Block.read(stream, root, result)
  result.finisher = readU4le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[BufferedStruct], filename: string): owned BufferedStruct =
  var stream = newKaitaiStream(filename)
  BufferedStruct.read(stream, nil, nil)

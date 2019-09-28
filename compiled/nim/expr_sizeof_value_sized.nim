# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  ExprSizeofValueSized* = ref object
    block1*: Block
    more*: uint16
    root*: ExprSizeofValueSized
    parent*: ref RootObj
    raw_block1*: seq[byte]
    selfSizeof*: Option[int]
    sizeofBlock*: Option[int]
    sizeofBlockB*: Option[int]
    sizeofBlockA*: Option[int]
    sizeofBlockC*: Option[int]
  Block* = ref object
    a*: uint8
    b*: uint32
    c*: seq[byte]
    root*: ExprSizeofValueSized
    parent*: ExprSizeofValueSized

proc read*(_: typedesc[Block], stream: KaitaiStream, root: ExprSizeofValueSized, parent: ExprSizeofValueSized): owned Block =
  result = new(Block)
  let root = if root == nil: cast[ExprSizeofValueSized](result) else: root
  result.a = readU1(stream)
  result.b = readU4le(stream)
  result.c = readBytes(stream, int(2))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Block], filename: string): owned Block =
  var stream = newKaitaiStream(filename)
  Block.read(stream, nil, nil)

proc read*(_: typedesc[ExprSizeofValueSized], stream: KaitaiStream, root: ExprSizeofValueSized, parent: ref RootObj): owned ExprSizeofValueSized =
  result = new(ExprSizeofValueSized)
  let root = if root == nil: cast[ExprSizeofValueSized](result) else: root
  result.block1 = Block.read(stream, root, result)
  result.more = readU2le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ExprSizeofValueSized], filename: string): owned ExprSizeofValueSized =
  var stream = newKaitaiStream(filename)
  ExprSizeofValueSized.read(stream, nil, nil)

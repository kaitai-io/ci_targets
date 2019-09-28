# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  ExprSizeofValue0* = ref object
    block1*: Block
    more*: uint16
    root*: ExprSizeofValue0
    parent*: ref RootObj
    selfSizeof*: Option[int]
    sizeofBlock*: Option[int]
    sizeofBlockB*: Option[int]
    sizeofBlockA*: Option[int]
    sizeofBlockC*: Option[int]
  Block* = ref object
    a*: uint8
    b*: uint32
    c*: seq[byte]
    root*: ExprSizeofValue0
    parent*: ExprSizeofValue0

proc read*(_: typedesc[Block], stream: KaitaiStream, root: ExprSizeofValue0, parent: ExprSizeofValue0): owned Block =
  result = new(Block)
  let root = if root == nil: cast[ExprSizeofValue0](result) else: root
  result.a = readU1(stream)
  result.b = readU4le(stream)
  result.c = readBytes(stream, int(2))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Block], filename: string): owned Block =
  var stream = newKaitaiStream(filename)
  Block.read(stream, nil, nil)

proc read*(_: typedesc[ExprSizeofValue0], stream: KaitaiStream, root: ExprSizeofValue0, parent: ref RootObj): owned ExprSizeofValue0 =
  result = new(ExprSizeofValue0)
  let root = if root == nil: cast[ExprSizeofValue0](result) else: root
  result.block1 = Block.read(stream, root, result)
  result.more = readU2le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ExprSizeofValue0], filename: string): owned ExprSizeofValue0 =
  var stream = newKaitaiStream(filename)
  ExprSizeofValue0.read(stream, nil, nil)

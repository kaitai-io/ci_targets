# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  ExprSizeofType0* = ref object
    root*: ExprSizeofType0
    parent*: ref RootObj
    sizeofBlock*: Option[int]
  Block* = ref object
    a*: uint8
    b*: uint32
    c*: seq[byte]
    root*: ExprSizeofType0
    parent*: ref RootObj

proc read*(_: typedesc[Block], stream: KaitaiStream, root: ExprSizeofType0, parent: ref RootObj): owned Block =
  result = new(Block)
  let root = if root == nil: cast[ExprSizeofType0](result) else: root
  result.a = readU1(stream)
  result.b = readU4le(stream)
  result.c = readBytes(stream, int(2))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Block], filename: string): owned Block =
  var stream = newKaitaiStream(filename)
  Block.read(stream, nil, nil)

proc read*(_: typedesc[ExprSizeofType0], stream: KaitaiStream, root: ExprSizeofType0, parent: ref RootObj): owned ExprSizeofType0 =
  result = new(ExprSizeofType0)
  let root = if root == nil: cast[ExprSizeofType0](result) else: root
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ExprSizeofType0], filename: string): owned ExprSizeofType0 =
  var stream = newKaitaiStream(filename)
  ExprSizeofType0.read(stream, nil, nil)

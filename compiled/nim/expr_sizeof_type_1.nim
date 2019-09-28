# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  ExprSizeofType1* = ref object
    root*: ExprSizeofType1
    parent*: ref RootObj
    sizeofBlock*: Option[int]
    sizeofSubblock*: Option[int]
  Block* = ref object
    a*: uint8
    b*: uint32
    c*: seq[byte]
    d*: Subblock
    root*: ExprSizeofType1
    parent*: ref RootObj
  Subblock* = ref object
    a*: seq[byte]
    root*: ExprSizeofType1
    parent*: ref RootObj

proc read*(_: typedesc[Subblock], stream: KaitaiStream, root: ExprSizeofType1, parent: ref RootObj): owned Subblock =
  result = new(Subblock)
  let root = if root == nil: cast[ExprSizeofType1](result) else: root
  result.a = readBytes(stream, int(4))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Subblock], filename: string): owned Subblock =
  var stream = newKaitaiStream(filename)
  Subblock.read(stream, nil, nil)

proc read*(_: typedesc[Block], stream: KaitaiStream, root: ExprSizeofType1, parent: ref RootObj): owned Block =
  result = new(Block)
  let root = if root == nil: cast[ExprSizeofType1](result) else: root
  result.a = readU1(stream)
  result.b = readU4le(stream)
  result.c = readBytes(stream, int(2))
  result.d = Subblock.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Block], filename: string): owned Block =
  var stream = newKaitaiStream(filename)
  Block.read(stream, nil, nil)

proc read*(_: typedesc[ExprSizeofType1], stream: KaitaiStream, root: ExprSizeofType1, parent: ref RootObj): owned ExprSizeofType1 =
  result = new(ExprSizeofType1)
  let root = if root == nil: cast[ExprSizeofType1](result) else: root
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ExprSizeofType1], filename: string): owned ExprSizeofType1 =
  var stream = newKaitaiStream(filename)
  ExprSizeofType1.read(stream, nil, nil)

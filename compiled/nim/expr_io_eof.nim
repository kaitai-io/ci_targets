# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  ExprIoEof* = ref object
    substream1*: OneOrTwo
    substream2*: OneOrTwo
    root*: ExprIoEof
    parent*: ref RootObj
    raw_substream1*: seq[byte]
    raw_substream2*: seq[byte]
  OneOrTwo* = ref object
    one*: uint32
    two*: uint32
    root*: ExprIoEof
    parent*: ExprIoEof
    reflectEof*: Option[bool]

proc read*(_: typedesc[OneOrTwo], stream: KaitaiStream, root: ExprIoEof, parent: ExprIoEof): owned OneOrTwo =
  result = new(OneOrTwo)
  let root = if root == nil: cast[ExprIoEof](result) else: root
  result.one = readU4le(stream)
  result.two = readU4le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[OneOrTwo], filename: string): owned OneOrTwo =
  var stream = newKaitaiStream(filename)
  OneOrTwo.read(stream, nil, nil)

proc read*(_: typedesc[ExprIoEof], stream: KaitaiStream, root: ExprIoEof, parent: ref RootObj): owned ExprIoEof =
  result = new(ExprIoEof)
  let root = if root == nil: cast[ExprIoEof](result) else: root
  result.substream1 = OneOrTwo.read(stream, root, result)
  result.substream2 = OneOrTwo.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ExprIoEof], filename: string): owned ExprIoEof =
  var stream = newKaitaiStream(filename)
  ExprIoEof.read(stream, nil, nil)

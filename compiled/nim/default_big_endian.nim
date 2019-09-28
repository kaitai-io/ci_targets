# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  DefaultBigEndian* = ref object
    one*: uint32
    root*: DefaultBigEndian
    parent*: ref RootObj

proc read*(_: typedesc[DefaultBigEndian], stream: KaitaiStream, root: DefaultBigEndian, parent: ref RootObj): owned DefaultBigEndian =
  result = new(DefaultBigEndian)
  let root = if root == nil: cast[DefaultBigEndian](result) else: root
  result.one = readU4be(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[DefaultBigEndian], filename: string): owned DefaultBigEndian =
  var stream = newKaitaiStream(filename)
  DefaultBigEndian.read(stream, nil, nil)

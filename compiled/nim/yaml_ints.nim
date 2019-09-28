# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  YamlInts* = ref object
    root*: YamlInts
    parent*: ref RootObj
    testU4Dec*: Option[int]
    testU4Hex*: Option[int]
    testU8Dec*: Option[int]
    testU8Hex*: Option[int]

proc read*(_: typedesc[YamlInts], stream: KaitaiStream, root: YamlInts, parent: ref RootObj): owned YamlInts =
  result = new(YamlInts)
  let root = if root == nil: cast[YamlInts](result) else: root
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[YamlInts], filename: string): owned YamlInts =
  var stream = newKaitaiStream(filename)
  YamlInts.read(stream, nil, nil)

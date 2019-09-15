# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  FixedContents* = ref object
    normal*: seq[byte]
    highBit8*: seq[byte]
    root*: FixedContents
    parent*: ref RootObj

proc read*(_: typedesc[FixedContents], stream: KaitaiStream, root: FixedContents, parent: ref RootObj): owned FixedContents =
  result = new(FixedContents)
  let root = if root == nil: result else: root
  result.normal = readFixedBytesType([B@54534abf,None)(stream)
  result.highBit8 = readFixedBytesType([B@51745f40,None)(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[FixedContents], filename: string): owned FixedContents =
  var stream = newKaitaiStream(filename)
  FixedContents.read(stream, nil, nil)

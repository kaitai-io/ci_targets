# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  CastToTop* = ref object
    code*: uint8
    root*: CastToTop
    parent*: ref RootObj

proc read*(_: typedesc[CastToTop], stream: KaitaiStream, root: CastToTop, parent: ref RootObj): owned CastToTop =
  result = new(CastToTop)
  let root = if root == nil: result else: root
  result.code = readU1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[CastToTop], filename: string): owned CastToTop =
  var stream = newKaitaiStream(filename)
  CastToTop.read(stream, nil, nil)

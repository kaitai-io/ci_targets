# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  MetaTags* = ref object
    root*: MetaTags
    parent*: ref RootObj

proc read*(_: typedesc[MetaTags], stream: KaitaiStream, root: MetaTags, parent: ref RootObj): owned MetaTags =
  result = new(MetaTags)
  let root = if root == nil: result else: root
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[MetaTags], filename: string): owned MetaTags =
  var stream = newKaitaiStream(filename)
  MetaTags.read(stream, nil, nil)

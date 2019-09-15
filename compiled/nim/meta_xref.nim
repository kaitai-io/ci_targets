# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  MetaXref* = ref object
    root*: MetaXref
    parent*: ref RootObj

proc read*(_: typedesc[MetaXref], stream: KaitaiStream, root: MetaXref, parent: ref RootObj): owned MetaXref =
  result = new(MetaXref)
  let root = if root == nil: result else: root
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[MetaXref], filename: string): owned MetaXref =
  var stream = newKaitaiStream(filename)
  MetaXref.read(stream, nil, nil)

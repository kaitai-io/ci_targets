# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  Imported2* = ref object
    one*: uint8
    root*: Imported2
    parent*: ref RootObj

proc read*(_: typedesc[Imported2], stream: KaitaiStream, root: Imported2, parent: ref RootObj): owned Imported2 =
  result = new(Imported2)
  let root = if root == nil: cast[Imported2](result) else: root
  result.one = readU1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Imported2], filename: string): owned Imported2 =
  var stream = newKaitaiStream(filename)
  Imported2.read(stream, nil, nil)

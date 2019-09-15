# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  Imported1* = ref object
    one*: uint8
    two*: Imported2
    root*: Imported1
    parent*: ref RootObj

proc read*(_: typedesc[Imported1], stream: KaitaiStream, root: Imported1, parent: ref RootObj): owned Imported1 =
  result = new(Imported1)
  let root = if root == nil: result else: root
  result.one = readU1(stream)
  result.two = readUserTypeInstream(List(imported_2),None,List())(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Imported1], filename: string): owned Imported1 =
  var stream = newKaitaiStream(filename)
  Imported1.read(stream, nil, nil)

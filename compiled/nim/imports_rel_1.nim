# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ImportsRel1* = ref object
    one*: uint8
    two*: Imported1
    root*: ImportsRel1
    parent*: ref RootObj

proc read*(_: typedesc[ImportsRel1], stream: KaitaiStream, root: ImportsRel1, parent: ref RootObj): owned ImportsRel1 =
  result = new(ImportsRel1)
  let root = if root == nil: result else: root
  result.one = readU1(stream)
  result.two = readUserTypeInstream(List(imported_1),None,List())(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ImportsRel1], filename: string): owned ImportsRel1 =
  var stream = newKaitaiStream(filename)
  ImportsRel1.read(stream, nil, nil)

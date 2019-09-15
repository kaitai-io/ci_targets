# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  CastToImported* = ref object
    one*: HelloWorld
    root*: CastToImported
    parent*: ref RootObj

proc read*(_: typedesc[CastToImported], stream: KaitaiStream, root: CastToImported, parent: ref RootObj): owned CastToImported =
  result = new(CastToImported)
  let root = if root == nil: result else: root
  result.one = readUserTypeInstream(List(hello_world),None,List())(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[CastToImported], filename: string): owned CastToImported =
  var stream = newKaitaiStream(filename)
  CastToImported.read(stream, nil, nil)

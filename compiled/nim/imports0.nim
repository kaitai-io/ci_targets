# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  Imports0* = ref object
    two*: uint8
    hw*: HelloWorld
    root*: Imports0
    parent*: ref RootObj

proc read*(_: typedesc[Imports0], stream: KaitaiStream, root: Imports0, parent: ref RootObj): owned Imports0 =
  result = new(Imports0)
  let root = if root == nil: result else: root
  result.two = readU1(stream)
  result.hw = readUserTypeInstream(List(hello_world),None,List())(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Imports0], filename: string): owned Imports0 =
  var stream = newKaitaiStream(filename)
  Imports0.read(stream, nil, nil)

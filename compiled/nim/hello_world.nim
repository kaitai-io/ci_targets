# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  HelloWorld* = ref object
    one*: uint8
    root*: HelloWorld
    parent*: ref RootObj

proc read*(_: typedesc[HelloWorld], stream: KaitaiStream, root: HelloWorld, parent: ref RootObj): owned HelloWorld =
  result = new(HelloWorld)
  let root = if root == nil: cast[HelloWorld](result) else: root
  result.one = readU1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[HelloWorld], filename: string): owned HelloWorld =
  var stream = newKaitaiStream(filename)
  HelloWorld.read(stream, nil, nil)

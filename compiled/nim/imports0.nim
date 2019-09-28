# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  Imports0* = ref object
    two*: uint8
    hw*: HelloWorld
    root*: Imports0
    parent*: ref RootObj
    hwOne*: Option[uint8]

proc read*(_: typedesc[Imports0], stream: KaitaiStream, root: Imports0, parent: ref RootObj): owned Imports0 =
  result = new(Imports0)
  let root = if root == nil: cast[Imports0](result) else: root
  result.two = readU1(stream)
  result.hw = HelloWorld.read(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Imports0], filename: string): owned Imports0 =
  var stream = newKaitaiStream(filename)
  Imports0.read(stream, nil, nil)

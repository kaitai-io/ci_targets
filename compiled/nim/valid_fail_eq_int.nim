# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ValidFailEqInt* = ref object
    foo*: uint8
    root*: ValidFailEqInt
    parent*: ref RootObj

proc read*(_: typedesc[ValidFailEqInt], stream: KaitaiStream, root: ValidFailEqInt, parent: ref RootObj): owned ValidFailEqInt =
  result = new(ValidFailEqInt)
  let root = if root == nil: cast[ValidFailEqInt](result) else: root
  result.foo = readU1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ValidFailEqInt], filename: string): owned ValidFailEqInt =
  var stream = newKaitaiStream(filename)
  ValidFailEqInt.read(stream, nil, nil)

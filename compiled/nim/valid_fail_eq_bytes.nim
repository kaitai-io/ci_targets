# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ValidFailEqBytes* = ref object
    foo*: seq[byte]
    root*: ValidFailEqBytes
    parent*: ref RootObj

proc read*(_: typedesc[ValidFailEqBytes], stream: KaitaiStream, root: ValidFailEqBytes, parent: ref RootObj): owned ValidFailEqBytes =
  result = new(ValidFailEqBytes)
  let root = if root == nil: cast[ValidFailEqBytes](result) else: root
  result.foo = readBytes(stream, int(2))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ValidFailEqBytes], filename: string): owned ValidFailEqBytes =
  var stream = newKaitaiStream(filename)
  ValidFailEqBytes.read(stream, nil, nil)

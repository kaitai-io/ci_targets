# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  OptionalId* = ref object
    _unnamed0*: uint8
    _unnamed1*: uint8
    _unnamed2*: seq[byte]
    root*: OptionalId
    parent*: ref RootObj

proc read*(_: typedesc[OptionalId], stream: KaitaiStream, root: OptionalId, parent: ref RootObj): owned OptionalId =
  result = new(OptionalId)
  let root = if root == nil: cast[OptionalId](result) else: root
  result._unnamed0 = readU1(stream)
  result._unnamed1 = readU1(stream)
  result._unnamed2 = readBytes(stream, int(5))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[OptionalId], filename: string): owned OptionalId =
  var stream = newKaitaiStream(filename)
  OptionalId.read(stream, nil, nil)

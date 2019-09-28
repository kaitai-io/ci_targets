# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  OpaqueExternalType* = ref object
    one*: TermStrz
    root*: OpaqueExternalType
    parent*: ref RootObj

proc read*(_: typedesc[OpaqueExternalType], stream: KaitaiStream, root: OpaqueExternalType, parent: ref RootObj): owned OpaqueExternalType =
  result = new(OpaqueExternalType)
  let root = if root == nil: cast[OpaqueExternalType](result) else: root
  result.one = TermStrz.read(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[OpaqueExternalType], filename: string): owned OpaqueExternalType =
  var stream = newKaitaiStream(filename)
  OpaqueExternalType.read(stream, nil, nil)

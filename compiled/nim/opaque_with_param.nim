# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  OpaqueWithParam* = ref object
    one*: ParamsDef
    root*: OpaqueWithParam
    parent*: ref RootObj

proc read*(_: typedesc[OpaqueWithParam], stream: KaitaiStream, root: OpaqueWithParam, parent: ref RootObj): owned OpaqueWithParam =
  result = new(OpaqueWithParam)
  let root = if root == nil: cast[OpaqueWithParam](result) else: root
  result.one = ParamsDef.read(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[OpaqueWithParam], filename: string): owned OpaqueWithParam =
  var stream = newKaitaiStream(filename)
  OpaqueWithParam.read(stream, nil, nil)

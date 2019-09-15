# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ParamsDef* = ref object
    buf*: string
    trailer*: uint8
    root*: ParamsDef
    parent*: ref RootObj

proc read*(_: typedesc[ParamsDef], stream: KaitaiStream, root: ParamsDef, parent: ref RootObj): owned ParamsDef =
  result = new(ParamsDef)
  let root = if root == nil: result else: root
  result.buf = readStrFromBytesType(BytesLimitType(Name(identifier(len)),None,false,None,None),UTF-8)(stream)
  result.trailer = readU1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ParamsDef], filename: string): owned ParamsDef =
  var stream = newKaitaiStream(filename)
  ParamsDef.read(stream, nil, nil)

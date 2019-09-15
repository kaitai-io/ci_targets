# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  Expr1* = ref object
    lenOf1*: uint16
    str1*: string
    root*: Expr1
    parent*: ref RootObj

proc read*(_: typedesc[Expr1], stream: KaitaiStream, root: Expr1, parent: ref RootObj): owned Expr1 =
  result = new(Expr1)
  let root = if root == nil: result else: root
  result.lenOf1 = readU2le(stream)
  result.str1 = readStrFromBytesType(BytesLimitType(Name(identifier(len_of_1_mod)),None,false,None,None),ASCII)(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Expr1], filename: string): owned Expr1 =
  var stream = newKaitaiStream(filename)
  Expr1.read(stream, nil, nil)

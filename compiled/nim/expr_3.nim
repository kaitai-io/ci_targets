# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  Expr3* = ref object
    one*: uint8
    two*: string
    root*: Expr3
    parent*: ref RootObj

proc read*(_: typedesc[Expr3], stream: KaitaiStream, root: Expr3, parent: ref RootObj): owned Expr3 =
  result = new(Expr3)
  let root = if root == nil: result else: root
  result.one = readU1(stream)
  result.two = readStrFromBytesType(BytesLimitType(IntNum(3),None,false,None,None),ASCII)(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Expr3], filename: string): owned Expr3 =
  var stream = newKaitaiStream(filename)
  Expr3.read(stream, nil, nil)

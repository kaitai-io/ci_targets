# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ExprBytesCmp* = ref object
    one*: seq[byte]
    two*: seq[byte]
    root*: ExprBytesCmp
    parent*: ref RootObj

proc read*(_: typedesc[ExprBytesCmp], stream: KaitaiStream, root: ExprBytesCmp, parent: ref RootObj): owned ExprBytesCmp =
  result = new(ExprBytesCmp)
  let root = if root == nil: result else: root
  result.one = readBytesLimitType(IntNum(1),None,false,None,None)(stream)
  result.two = readBytesLimitType(IntNum(3),None,false,None,None)(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ExprBytesCmp], filename: string): owned ExprBytesCmp =
  var stream = newKaitaiStream(filename)
  ExprBytesCmp.read(stream, nil, nil)

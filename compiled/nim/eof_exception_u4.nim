# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  EofExceptionU4* = ref object
    prebuf*: seq[byte]
    failInt*: uint32
    root*: EofExceptionU4
    parent*: ref RootObj

proc read*(_: typedesc[EofExceptionU4], stream: KaitaiStream, root: EofExceptionU4, parent: ref RootObj): owned EofExceptionU4 =
  result = new(EofExceptionU4)
  let root = if root == nil: result else: root
  result.prebuf = readBytesLimitType(IntNum(9),None,false,None,None)(stream)
  result.failInt = readU4le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[EofExceptionU4], filename: string): owned EofExceptionU4 =
  var stream = newKaitaiStream(filename)
  EofExceptionU4.read(stream, nil, nil)

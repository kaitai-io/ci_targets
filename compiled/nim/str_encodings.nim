# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  StrEncodings* = ref object
    lenOf1*: uint16
    str1*: string
    lenOf2*: uint16
    str2*: string
    lenOf3*: uint16
    str3*: string
    lenOf4*: uint16
    str4*: string
    root*: StrEncodings
    parent*: ref RootObj

proc read*(_: typedesc[StrEncodings], stream: KaitaiStream, root: StrEncodings, parent: ref RootObj): owned StrEncodings =
  result = new(StrEncodings)
  let root = if root == nil: result else: root
  result.lenOf1 = readU2le(stream)
  result.str1 = readStrFromBytesType(BytesLimitType(Name(identifier(len_of_1)),None,false,None,None),ASCII)(stream)
  result.lenOf2 = readU2le(stream)
  result.str2 = readStrFromBytesType(BytesLimitType(Name(identifier(len_of_2)),None,false,None,None),UTF-8)(stream)
  result.lenOf3 = readU2le(stream)
  result.str3 = readStrFromBytesType(BytesLimitType(Name(identifier(len_of_3)),None,false,None,None),SJIS)(stream)
  result.lenOf4 = readU2le(stream)
  result.str4 = readStrFromBytesType(BytesLimitType(Name(identifier(len_of_4)),None,false,None,None),CP437)(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[StrEncodings], filename: string): owned StrEncodings =
  var stream = newKaitaiStream(filename)
  StrEncodings.read(stream, nil, nil)

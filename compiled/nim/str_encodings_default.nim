# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  StrEncodingsDefault* = ref object
    lenOf1*: uint16
    str1*: string
    rest*: Subtype
    root*: StrEncodingsDefault
    parent*: ref RootObj
StrEncodingsDefaultsubtype* = ref object
  lenOf2*: uint16
  str2*: string
  lenOf3*: uint16
  str3*: string
  lenOf4*: uint16
  str4*: string
  root*: StrEncodingsDefault
  parent*: StrEncodingsDefault

proc read*(_: typedesc[StrEncodingsDefault], stream: KaitaiStream, root: StrEncodingsDefault, parent: ref RootObj): owned StrEncodingsDefault =
result = new(StrEncodingsDefault)
let root = if root == nil: result else: root
result.lenOf1 = readU2le(stream)
result.str1 = readStrFromBytesType(BytesLimitType(Name(identifier(len_of_1)),None,false,None,None),UTF-8)(stream)
result.rest = readUserTypeInstream(List(subtype),None,List())(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[StrEncodingsDefault], filename: string): owned StrEncodingsDefault =
var stream = newKaitaiStream(filename)
StrEncodingsDefault.read(stream, nil, nil)

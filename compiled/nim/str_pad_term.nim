# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  StrPadTerm* = ref object
    strPad*: string
    strTerm*: string
    strTermAndPad*: string
    strTermInclude*: string
    root*: StrPadTerm
    parent*: ref RootObj

proc read*(_: typedesc[StrPadTerm], stream: KaitaiStream, root: StrPadTerm, parent: ref RootObj): owned StrPadTerm =
  result = new(StrPadTerm)
  let root = if root == nil: result else: root
  result.strPad = readStrFromBytesType(BytesLimitType(IntNum(20),None,false,Some(64),None),UTF-8)(stream)
  result.strTerm = readStrFromBytesType(BytesLimitType(IntNum(20),Some(64),false,None,None),UTF-8)(stream)
  result.strTermAndPad = readStrFromBytesType(BytesLimitType(IntNum(20),Some(64),false,Some(43),None),UTF-8)(stream)
  result.strTermInclude = readStrFromBytesType(BytesLimitType(IntNum(20),Some(64),true,None,None),UTF-8)(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[StrPadTerm], filename: string): owned StrPadTerm =
  var stream = newKaitaiStream(filename)
  StrPadTerm.read(stream, nil, nil)

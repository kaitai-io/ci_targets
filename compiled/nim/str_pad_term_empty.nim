# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  StrPadTermEmpty* = ref object
    strPad*: string
    strTerm*: string
    strTermAndPad*: string
    strTermInclude*: string
    root*: StrPadTermEmpty
    parent*: ref RootObj

proc read*(_: typedesc[StrPadTermEmpty], stream: KaitaiStream, root: StrPadTermEmpty, parent: ref RootObj): owned StrPadTermEmpty =
  result = new(StrPadTermEmpty)
  let root = if root == nil: result else: root
  result.strPad = readStrFromBytesType(BytesLimitType(IntNum(20),None,false,Some(64),None),UTF-8)(stream)
  result.strTerm = readStrFromBytesType(BytesLimitType(IntNum(20),Some(64),false,None,None),UTF-8)(stream)
  result.strTermAndPad = readStrFromBytesType(BytesLimitType(IntNum(20),Some(64),false,Some(43),None),UTF-8)(stream)
  result.strTermInclude = readStrFromBytesType(BytesLimitType(IntNum(20),Some(64),true,None,None),UTF-8)(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[StrPadTermEmpty], filename: string): owned StrPadTermEmpty =
  var stream = newKaitaiStream(filename)
  StrPadTermEmpty.read(stream, nil, nil)

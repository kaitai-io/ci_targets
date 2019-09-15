# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  BytesPadTerm* = ref object
    strPad*: seq[byte]
    strTerm*: seq[byte]
    strTermAndPad*: seq[byte]
    strTermInclude*: seq[byte]
    root*: BytesPadTerm
    parent*: ref RootObj

proc read*(_: typedesc[BytesPadTerm], stream: KaitaiStream, root: BytesPadTerm, parent: ref RootObj): owned BytesPadTerm =
  result = new(BytesPadTerm)
  let root = if root == nil: result else: root
  result.strPad = readBytesLimitType(IntNum(20),None,false,Some(64),None)(stream)
  result.strTerm = readBytesLimitType(IntNum(20),Some(64),false,None,None)(stream)
  result.strTermAndPad = readBytesLimitType(IntNum(20),Some(64),false,Some(43),None)(stream)
  result.strTermInclude = readBytesLimitType(IntNum(20),Some(64),true,None,None)(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[BytesPadTerm], filename: string): owned BytesPadTerm =
  var stream = newKaitaiStream(filename)
  BytesPadTerm.read(stream, nil, nil)

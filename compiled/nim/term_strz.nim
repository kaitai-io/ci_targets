# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  TermStrz* = ref object
    s1*: string
    s2*: string
    s3*: string
    root*: TermStrz
    parent*: ref RootObj

proc read*(_: typedesc[TermStrz], stream: KaitaiStream, root: TermStrz, parent: ref RootObj): owned TermStrz =
  result = new(TermStrz)
  let root = if root == nil: result else: root
  result.s1 = readStrFromBytesType(BytesTerminatedType(124,false,true,true,None),UTF-8)(stream)
  result.s2 = readStrFromBytesType(BytesTerminatedType(124,false,false,true,None),UTF-8)(stream)
  result.s3 = readStrFromBytesType(BytesTerminatedType(64,true,true,true,None),UTF-8)(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[TermStrz], filename: string): owned TermStrz =
  var stream = newKaitaiStream(filename)
  TermStrz.read(stream, nil, nil)

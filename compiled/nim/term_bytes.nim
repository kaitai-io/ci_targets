# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  TermBytes* = ref object
    s1*: seq[byte]
    s2*: seq[byte]
    s3*: seq[byte]
    root*: TermBytes
    parent*: ref RootObj

proc read*(_: typedesc[TermBytes], stream: KaitaiStream, root: TermBytes, parent: ref RootObj): owned TermBytes =
  result = new(TermBytes)
  let root = if root == nil: result else: root
  result.s1 = readBytesTerminatedType(124,false,true,true,None)(stream)
  result.s2 = readBytesTerminatedType(124,false,false,true,None)(stream)
  result.s3 = readBytesTerminatedType(64,true,true,true,None)(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[TermBytes], filename: string): owned TermBytes =
  var stream = newKaitaiStream(filename)
  TermBytes.read(stream, nil, nil)

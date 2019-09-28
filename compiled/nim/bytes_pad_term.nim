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
  let root = if root == nil: cast[BytesPadTerm](result) else: root
  result.strPad = readBytes(stream, int(20))
  result.strTerm = readBytes(stream, int(20))
  result.strTermAndPad = readBytes(stream, int(20))
  result.strTermInclude = readBytes(stream, int(20))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[BytesPadTerm], filename: string): owned BytesPadTerm =
  var stream = newKaitaiStream(filename)
  BytesPadTerm.read(stream, nil, nil)

# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  StrEos* = ref object
    str*: string
    root*: StrEos
    parent*: ref RootObj

proc read*(_: typedesc[StrEos], stream: KaitaiStream, root: StrEos, parent: ref RootObj): owned StrEos =
  result = new(StrEos)
  let root = if root == nil: result else: root
  result.str = readStrFromBytesType(BytesEosType(None,false,None,None),UTF-8)(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[StrEos], filename: string): owned StrEos =
  var stream = newKaitaiStream(filename)
  StrEos.read(stream, nil, nil)

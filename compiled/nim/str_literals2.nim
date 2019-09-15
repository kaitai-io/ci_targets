# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  StrLiterals2* = ref object
    root*: StrLiterals2
    parent*: ref RootObj

proc read*(_: typedesc[StrLiterals2], stream: KaitaiStream, root: StrLiterals2, parent: ref RootObj): owned StrLiterals2 =
  result = new(StrLiterals2)
  let root = if root == nil: result else: root
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[StrLiterals2], filename: string): owned StrLiterals2 =
  var stream = newKaitaiStream(filename)
  StrLiterals2.read(stream, nil, nil)

# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  StrLiterals* = ref object
    root*: StrLiterals
    parent*: ref RootObj

proc read*(_: typedesc[StrLiterals], stream: KaitaiStream, root: StrLiterals, parent: ref RootObj): owned StrLiterals =
  result = new(StrLiterals)
  let root = if root == nil: result else: root
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[StrLiterals], filename: string): owned StrLiterals =
  var stream = newKaitaiStream(filename)
  StrLiterals.read(stream, nil, nil)

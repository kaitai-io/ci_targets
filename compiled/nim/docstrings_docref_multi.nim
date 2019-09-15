# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  DocstringsDocrefMulti* = ref object
    root*: DocstringsDocrefMulti
    parent*: ref RootObj

proc read*(_: typedesc[DocstringsDocrefMulti], stream: KaitaiStream, root: DocstringsDocrefMulti, parent: ref RootObj): owned DocstringsDocrefMulti =
  result = new(DocstringsDocrefMulti)
  let root = if root == nil: result else: root
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[DocstringsDocrefMulti], filename: string): owned DocstringsDocrefMulti =
  var stream = newKaitaiStream(filename)
  DocstringsDocrefMulti.read(stream, nil, nil)

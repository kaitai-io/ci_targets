# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ImportedAndRel* = ref object
    one*: uint8
    two*: ImportedRoot
    root*: ImportedAndRel
    parent*: ref RootObj

proc read*(_: typedesc[ImportedAndRel], stream: KaitaiStream, root: ImportedAndRel, parent: ref RootObj): owned ImportedAndRel =
  result = new(ImportedAndRel)
  let root = if root == nil: result else: root
  result.one = readU1(stream)
  result.two = readUserTypeInstream(List(imported_root),None,List())(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ImportedAndRel], filename: string): owned ImportedAndRel =
  var stream = newKaitaiStream(filename)
  ImportedAndRel.read(stream, nil, nil)

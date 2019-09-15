# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ImportedAndAbs* = ref object
    one*: uint8
    two*: ImportedRoot
    root*: ImportedAndAbs
    parent*: ref RootObj

proc read*(_: typedesc[ImportedAndAbs], stream: KaitaiStream, root: ImportedAndAbs, parent: ref RootObj): owned ImportedAndAbs =
  result = new(ImportedAndAbs)
  let root = if root == nil: result else: root
  result.one = readU1(stream)
  result.two = readUserTypeInstream(List(imported_root),None,List())(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ImportedAndAbs], filename: string): owned ImportedAndAbs =
  var stream = newKaitaiStream(filename)
  ImportedAndAbs.read(stream, nil, nil)

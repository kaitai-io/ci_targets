# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ImportsAbsRel* = ref object
    one*: uint8
    two*: ImportedAndRel
    root*: ImportsAbsRel
    parent*: ref RootObj

proc read*(_: typedesc[ImportsAbsRel], stream: KaitaiStream, root: ImportsAbsRel, parent: ref RootObj): owned ImportsAbsRel =
  result = new(ImportsAbsRel)
  let root = if root == nil: cast[ImportsAbsRel](result) else: root
  result.one = readU1(stream)
  result.two = ImportedAndRel.read(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ImportsAbsRel], filename: string): owned ImportsAbsRel =
  var stream = newKaitaiStream(filename)
  ImportsAbsRel.read(stream, nil, nil)

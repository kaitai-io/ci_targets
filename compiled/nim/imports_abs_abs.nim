# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ImportsAbsAbs* = ref object
    one*: uint8
    two*: ImportedAndAbs
    root*: ImportsAbsAbs
    parent*: ref RootObj

proc read*(_: typedesc[ImportsAbsAbs], stream: KaitaiStream, root: ImportsAbsAbs, parent: ref RootObj): owned ImportsAbsAbs =
  result = new(ImportsAbsAbs)
  let root = if root == nil: cast[ImportsAbsAbs](result) else: root
  result.one = readU1(stream)
  result.two = ImportedAndAbs.read(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ImportsAbsAbs], filename: string): owned ImportsAbsAbs =
  var stream = newKaitaiStream(filename)
  ImportsAbsAbs.read(stream, nil, nil)

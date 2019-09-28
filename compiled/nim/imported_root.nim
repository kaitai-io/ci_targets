# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ImportedRoot* = ref object
    one*: uint8
    root*: ImportedRoot
    parent*: ref RootObj

proc read*(_: typedesc[ImportedRoot], stream: KaitaiStream, root: ImportedRoot, parent: ref RootObj): owned ImportedRoot =
  result = new(ImportedRoot)
  let root = if root == nil: cast[ImportedRoot](result) else: root
  result.one = readU1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ImportedRoot], filename: string): owned ImportedRoot =
  var stream = newKaitaiStream(filename)
  ImportedRoot.read(stream, nil, nil)

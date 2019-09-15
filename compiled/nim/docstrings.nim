# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  Docstrings* = ref object
    one*: uint8
    root*: Docstrings
    parent*: ref RootObj
DocstringscomplexSubtype* = ref object
  root*: Docstrings
  parent*: ref RootObj

proc read*(_: typedesc[Docstrings], stream: KaitaiStream, root: Docstrings, parent: ref RootObj): owned Docstrings =
result = new(Docstrings)
let root = if root == nil: result else: root
result.one = readU1(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[Docstrings], filename: string): owned Docstrings =
var stream = newKaitaiStream(filename)
Docstrings.read(stream, nil, nil)

# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  NavParent3* = ref object
    ofsTags*: uint32
    numTags*: uint32
    root*: NavParent3
    parent*: ref RootObj
NavParent3tag* = ref object
  name*: string
  ofs*: uint32
  numItems*: uint32
  root*: NavParent3
  parent*: NavParent3
NavParent3tagtagChar* = ref object
content*: string
root*: NavParent3
parent*: NavParent3_Tag

proc read*(_: typedesc[NavParent3], stream: KaitaiStream, root: NavParent3, parent: ref RootObj): owned NavParent3 =
result = new(NavParent3)
let root = if root == nil: result else: root
result.ofsTags = readU4le(stream)
result.numTags = readU4le(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[NavParent3], filename: string): owned NavParent3 =
var stream = newKaitaiStream(filename)
NavParent3.read(stream, nil, nil)

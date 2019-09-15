# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  MultipleUse* = ref object
    t1*: Type1
    t2*: Type2
    root*: MultipleUse
    parent*: ref RootObj
MultipleUsemulti* = ref object
  value*: int32
  root*: MultipleUse
  parent*: ref RootObj
MultipleUsetype1* = ref object
firstUse*: Multi
root*: MultipleUse
parent*: MultipleUse
MultipleUsetype2* = ref object
root*: MultipleUse
parent*: MultipleUse

proc read*(_: typedesc[MultipleUse], stream: KaitaiStream, root: MultipleUse, parent: ref RootObj): owned MultipleUse =
result = new(MultipleUse)
let root = if root == nil: result else: root
result.t1 = readUserTypeInstream(List(type_1),None,List())(stream)
result.t2 = readUserTypeInstream(List(type_2),None,List())(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[MultipleUse], filename: string): owned MultipleUse =
var stream = newKaitaiStream(filename)
MultipleUse.read(stream, nil, nil)

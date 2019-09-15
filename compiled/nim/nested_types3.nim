# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  NestedTypes3* = ref object
    aCc*: SubtypeA_SubtypeCc
    aCD*: SubtypeA_SubtypeC_SubtypeD
    b*: SubtypeB
    root*: NestedTypes3
    parent*: ref RootObj
NestedTypes3subtypeA* = ref object
  root*: NestedTypes3
  parent*: ref RootObj
NestedTypes3subtypeAsubtypeC* = ref object
root*: NestedTypes3
parent*: ref RootObj
NestedTypes3subtypeAsubtypeCsubtypeD* = ref object
valueD*: int8
root*: NestedTypes3
parent*: ref RootObj
NestedTypes3subtypeAsubtypeCc* = ref object
valueCc*: int8
root*: NestedTypes3
parent*: ref RootObj
NestedTypes3subtypeB* = ref object
valueB*: int8
aCc*: SubtypeA_SubtypeCc
aCD*: SubtypeA_SubtypeC_SubtypeD
root*: NestedTypes3
parent*: NestedTypes3

proc read*(_: typedesc[NestedTypes3], stream: KaitaiStream, root: NestedTypes3, parent: ref RootObj): owned NestedTypes3 =
result = new(NestedTypes3)
let root = if root == nil: result else: root
result.aCc = readUserTypeInstream(List(subtype_a, subtype_cc),None,List())(stream)
result.aCD = readUserTypeInstream(List(subtype_a, subtype_c, subtype_d),None,List())(stream)
result.b = readUserTypeInstream(List(subtype_b),None,List())(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[NestedTypes3], filename: string): owned NestedTypes3 =
var stream = newKaitaiStream(filename)
NestedTypes3.read(stream, nil, nil)

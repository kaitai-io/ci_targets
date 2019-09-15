# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  NestedTypes2* = ref object
    one*: SubtypeA
    two*: SubtypeB
    root*: NestedTypes2
    parent*: ref RootObj
NestedTypes2subtypeA* = ref object
  typedAtRoot*: SubtypeB
  typedHere1*: SubtypeC
  typedHere2*: SubtypeCc
  root*: NestedTypes2
  parent*: NestedTypes2
NestedTypes2subtypeAsubtypeC* = ref object
valueC*: int8
typedHere*: SubtypeD
typedParent*: SubtypeCc
typedRoot*: SubtypeB
root*: NestedTypes2
parent*: NestedTypes2_SubtypeA
NestedTypes2subtypeAsubtypeCsubtypeD* = ref object
valueD*: int8
root*: NestedTypes2
parent*: NestedTypes2_SubtypeA_SubtypeC
NestedTypes2subtypeAsubtypeCc* = ref object
valueCc*: int8
root*: NestedTypes2
parent*: ref RootObj
NestedTypes2subtypeB* = ref object
valueB*: int8
root*: NestedTypes2
parent*: ref RootObj

proc read*(_: typedesc[NestedTypes2], stream: KaitaiStream, root: NestedTypes2, parent: ref RootObj): owned NestedTypes2 =
result = new(NestedTypes2)
let root = if root == nil: result else: root
result.one = readUserTypeInstream(List(subtype_a),None,List())(stream)
result.two = readUserTypeInstream(List(subtype_b),None,List())(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[NestedTypes2], filename: string): owned NestedTypes2 =
var stream = newKaitaiStream(filename)
NestedTypes2.read(stream, nil, nil)

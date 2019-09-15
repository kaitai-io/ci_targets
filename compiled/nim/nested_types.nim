# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  NestedTypes* = ref object
    one*: SubtypeA
    two*: SubtypeB
    root*: NestedTypes
    parent*: ref RootObj
NestedTypessubtypeA* = ref object
  typedAtRoot*: SubtypeB
  typedHere*: SubtypeC
  root*: NestedTypes
  parent*: NestedTypes
NestedTypessubtypeAsubtypeC* = ref object
valueC*: int8
root*: NestedTypes
parent*: NestedTypes_SubtypeA
NestedTypessubtypeB* = ref object
valueB*: int8
root*: NestedTypes
parent*: ref RootObj

proc read*(_: typedesc[NestedTypes], stream: KaitaiStream, root: NestedTypes, parent: ref RootObj): owned NestedTypes =
result = new(NestedTypes)
let root = if root == nil: result else: root
result.one = readUserTypeInstream(List(subtype_a),None,List())(stream)
result.two = readUserTypeInstream(List(subtype_b),None,List())(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[NestedTypes], filename: string): owned NestedTypes =
var stream = newKaitaiStream(filename)
NestedTypes.read(stream, nil, nil)

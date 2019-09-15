# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ParamsPassStruct* = ref object
    first*: Block
    one*: StructType
    root*: ParamsPassStruct
    parent*: ref RootObj
ParamsPassStructblock* = ref object
  foo*: uint8
  root*: ParamsPassStruct
  parent*: ParamsPassStruct
ParamsPassStructstructType* = ref object
bar*: Baz
root*: ParamsPassStruct
parent*: ParamsPassStruct
ParamsPassStructstructTypebaz* = ref object
qux*: uint8
root*: ParamsPassStruct
parent*: ParamsPassStruct_StructType

proc read*(_: typedesc[ParamsPassStruct], stream: KaitaiStream, root: ParamsPassStruct, parent: ref RootObj): owned ParamsPassStruct =
result = new(ParamsPassStruct)
let root = if root == nil: result else: root
result.first = readUserTypeInstream(List(block),None,List())(stream)
result.one = readUserTypeInstream(List(struct_type),None,ArrayBuffer(Name(identifier(first))))(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[ParamsPassStruct], filename: string): owned ParamsPassStruct =
var stream = newKaitaiStream(filename)
ParamsPassStruct.read(stream, nil, nil)

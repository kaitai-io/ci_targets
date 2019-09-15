# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  NestedSameName2* = ref object
    version*: uint32
    mainData*: Main
    dummy*: DummyObj
    root*: NestedSameName2
    parent*: ref RootObj
NestedSameName2main* = ref object
  mainSize*: int32
  foo*: FooObj
  root*: NestedSameName2
  parent*: NestedSameName2
NestedSameName2mainfooObj* = ref object
data1*: seq[byte]
root*: NestedSameName2
parent*: NestedSameName2_Main
NestedSameName2dummyObj* = ref object
dummySize*: int32
foo*: FooObj
root*: NestedSameName2
parent*: NestedSameName2
NestedSameName2dummyObjfooObj* = ref object
data2*: seq[byte]
root*: NestedSameName2
parent*: NestedSameName2_DummyObj

proc read*(_: typedesc[NestedSameName2], stream: KaitaiStream, root: NestedSameName2, parent: ref RootObj): owned NestedSameName2 =
result = new(NestedSameName2)
let root = if root == nil: result else: root
result.version = readU4le(stream)
result.mainData = readUserTypeInstream(List(main),None,List())(stream)
result.dummy = readUserTypeInstream(List(dummy_obj),None,List())(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[NestedSameName2], filename: string): owned NestedSameName2 =
var stream = newKaitaiStream(filename)
NestedSameName2.read(stream, nil, nil)

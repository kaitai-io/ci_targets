# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  NestedSameName* = ref object
    mainData*: Main
    dummy*: DummyObj
    root*: NestedSameName
    parent*: ref RootObj
NestedSameNamemain* = ref object
  mainSize*: int32
  foo*: FooObj
  root*: NestedSameName
  parent*: NestedSameName
NestedSameNamemainfooObj* = ref object
data*: seq[byte]
root*: NestedSameName
parent*: NestedSameName_Main
NestedSameNamedummyObj* = ref object
root*: NestedSameName
parent*: NestedSameName
NestedSameNamedummyObjfoo* = ref object
root*: NestedSameName
parent*: ref RootObj

proc read*(_: typedesc[NestedSameName], stream: KaitaiStream, root: NestedSameName, parent: ref RootObj): owned NestedSameName =
result = new(NestedSameName)
let root = if root == nil: result else: root
result.mainData = readUserTypeInstream(List(main),None,List())(stream)
result.dummy = readUserTypeInstream(List(dummy_obj),None,List())(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[NestedSameName], filename: string): owned NestedSameName =
var stream = newKaitaiStream(filename)
NestedSameName.read(stream, nil, nil)

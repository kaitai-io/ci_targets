# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  NavParentVsValueInst* = ref object
    s1*: string
    child*: ChildObj
    root*: NavParentVsValueInst
    parent*: ref RootObj
NavParentVsValueInstchildObj* = ref object
  root*: NavParentVsValueInst
  parent*: NavParentVsValueInst

proc read*(_: typedesc[NavParentVsValueInst], stream: KaitaiStream, root: NavParentVsValueInst, parent: ref RootObj): owned NavParentVsValueInst =
result = new(NavParentVsValueInst)
let root = if root == nil: result else: root
result.s1 = readStrFromBytesType(BytesTerminatedType(124,false,true,true,None),UTF-8)(stream)
result.child = readUserTypeInstream(List(child_obj),None,List())(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[NavParentVsValueInst], filename: string): owned NavParentVsValueInst =
var stream = newKaitaiStream(filename)
NavParentVsValueInst.read(stream, nil, nil)

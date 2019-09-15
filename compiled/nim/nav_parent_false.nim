# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  NavParentFalse* = ref object
    childSize*: uint8
    elementA*: ParentA
    elementB*: ParentB
    root*: NavParentFalse
    parent*: ref RootObj
NavParentFalseparentA* = ref object
  foo*: Child
  bar*: ParentB
  root*: NavParentFalse
  parent*: NavParentFalse
NavParentFalseparentB* = ref object
foo*: Child
root*: NavParentFalse
parent*: ref RootObj
NavParentFalsechild* = ref object
code*: uint8
more*: seq[byte]
root*: NavParentFalse
parent*: NavParentFalse_ParentA

proc read*(_: typedesc[NavParentFalse], stream: KaitaiStream, root: NavParentFalse, parent: ref RootObj): owned NavParentFalse =
result = new(NavParentFalse)
let root = if root == nil: result else: root
result.childSize = readU1(stream)
result.elementA = readUserTypeInstream(List(parent_a),None,List())(stream)
result.elementB = readUserTypeInstream(List(parent_b),None,List())(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[NavParentFalse], filename: string): owned NavParentFalse =
var stream = newKaitaiStream(filename)
NavParentFalse.read(stream, nil, nil)

# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  NavParentOverride* = ref object
    childSize*: uint8
    child1*: Child
    mediator2*: Mediator
    root*: NavParentOverride
    parent*: ref RootObj
NavParentOverridemediator* = ref object
  child2*: Child
  root*: NavParentOverride
  parent*: NavParentOverride
NavParentOverridechild* = ref object
data*: seq[byte]
root*: NavParentOverride
parent*: NavParentOverride

proc read*(_: typedesc[NavParentOverride], stream: KaitaiStream, root: NavParentOverride, parent: ref RootObj): owned NavParentOverride =
result = new(NavParentOverride)
let root = if root == nil: result else: root
result.childSize = readU1(stream)
result.child1 = readUserTypeInstream(List(child),None,List())(stream)
result.mediator2 = readUserTypeInstream(List(mediator),None,List())(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[NavParentOverride], filename: string): owned NavParentOverride =
var stream = newKaitaiStream(filename)
NavParentOverride.read(stream, nil, nil)

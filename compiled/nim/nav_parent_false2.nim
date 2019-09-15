# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  NavParentFalse2* = ref object
    parentless*: Child
    root*: NavParentFalse2
    parent*: ref RootObj
NavParentFalse2child* = ref object
  foo*: uint8
  root*: NavParentFalse2
  parent*: ref RootObj

proc read*(_: typedesc[NavParentFalse2], stream: KaitaiStream, root: NavParentFalse2, parent: ref RootObj): owned NavParentFalse2 =
result = new(NavParentFalse2)
let root = if root == nil: result else: root
result.parentless = readUserTypeInstream(List(child),Some(Bool(false)),List())(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[NavParentFalse2], filename: string): owned NavParentFalse2 =
var stream = newKaitaiStream(filename)
NavParentFalse2.read(stream, nil, nil)

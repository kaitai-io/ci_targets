# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  OpaqueExternalType02Parent* = ref object
    parent*: ParentObj
    root*: OpaqueExternalType02Parent
    parent*: ref RootObj
OpaqueExternalType02ParentparentObj* = ref object
  child*: OpaqueExternalType02Child
  root*: OpaqueExternalType02Parent
  parent*: OpaqueExternalType02Parent

proc read*(_: typedesc[OpaqueExternalType02Parent], stream: KaitaiStream, root: OpaqueExternalType02Parent, parent: ref RootObj): owned OpaqueExternalType02Parent =
result = new(OpaqueExternalType02Parent)
let root = if root == nil: result else: root
result.parent = readUserTypeInstream(List(parent_obj),None,List())(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[OpaqueExternalType02Parent], filename: string): owned OpaqueExternalType02Parent =
var stream = newKaitaiStream(filename)
OpaqueExternalType02Parent.read(stream, nil, nil)

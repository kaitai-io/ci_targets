# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  OpaqueExternalType02Child* = ref object
    s1*: string
    s2*: string
    s3*: OpaqueExternalType02ChildChild
    root*: OpaqueExternalType02Child
    parent*: ref RootObj
OpaqueExternalType02ChildopaqueExternalType02ChildChild* = ref object
  s3*: string
  root*: OpaqueExternalType02Child
  parent*: OpaqueExternalType02Child

proc read*(_: typedesc[OpaqueExternalType02Child], stream: KaitaiStream, root: OpaqueExternalType02Child, parent: ref RootObj): owned OpaqueExternalType02Child =
result = new(OpaqueExternalType02Child)
let root = if root == nil: result else: root
result.s1 = readStrFromBytesType(BytesTerminatedType(124,false,true,true,None),UTF-8)(stream)
result.s2 = readStrFromBytesType(BytesTerminatedType(124,false,false,true,None),UTF-8)(stream)
result.s3 = readUserTypeInstream(List(opaque_external_type_02_child_child),None,List())(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[OpaqueExternalType02Child], filename: string): owned OpaqueExternalType02Child =
var stream = newKaitaiStream(filename)
OpaqueExternalType02Child.read(stream, nil, nil)

# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  UserType* = ref object
    one*: Header
    root*: UserType
    parent*: ref RootObj
UserTypeheader* = ref object
  width*: uint32
  height*: uint32
  root*: UserType
  parent*: UserType

proc read*(_: typedesc[UserType], stream: KaitaiStream, root: UserType, parent: ref RootObj): owned UserType =
result = new(UserType)
let root = if root == nil: result else: root
result.one = readUserTypeInstream(List(header),None,List())(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[UserType], filename: string): owned UserType =
var stream = newKaitaiStream(filename)
UserType.read(stream, nil, nil)

# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  UserType* = ref object
    one*: Header
    root*: UserType
    parent*: ref RootObj
  Header* = ref object
    width*: uint32
    height*: uint32
    root*: UserType
    parent*: UserType

proc read*(_: typedesc[Header], stream: KaitaiStream, root: UserType, parent: UserType): owned Header =
  result = new(Header)
  let root = if root == nil: cast[UserType](result) else: root
  result.width = readU4le(stream)
  result.height = readU4le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Header], filename: string): owned Header =
  var stream = newKaitaiStream(filename)
  Header.read(stream, nil, nil)

proc read*(_: typedesc[UserType], stream: KaitaiStream, root: UserType, parent: ref RootObj): owned UserType =
  result = new(UserType)
  let root = if root == nil: cast[UserType](result) else: root
  result.one = Header.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[UserType], filename: string): owned UserType =
  var stream = newKaitaiStream(filename)
  UserType.read(stream, nil, nil)

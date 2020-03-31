import kaitai_struct_nim_runtime
import options

type
  UserType* = ref object of KaitaiStruct
    one*: UserType_Header
    parent*: KaitaiStruct
  UserType_Header* = ref object of KaitaiStruct
    width*: uint32
    height*: uint32
    parent*: UserType

proc read*(_: typedesc[UserType_Header], io: KaitaiStream, root: KaitaiStruct, parent: UserType): UserType_Header =
  template this: untyped = result
  this = new(UserType_Header)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.width = this.io.readU4le()

  ##[
  ]##
  this.height = this.io.readU4le()

proc fromFile*(_: typedesc[UserType_Header], filename: string): UserType_Header =
  UserType_Header.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[UserType], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): UserType =
  template this: untyped = result
  this = new(UserType)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.one = UserType_Header.read(this.io, this.root, this)

proc fromFile*(_: typedesc[UserType], filename: string): UserType =
  UserType.read(newKaitaiFileStream(filename), nil, nil)


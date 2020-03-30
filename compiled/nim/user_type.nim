import kaitai_struct_nim_runtime
import options

type
  UserType_Header* = ref UserType_HeaderObj
  UserType_HeaderObj* = object
    width*: uint32
    height*: uint32
    io*: KaitaiStream
    root*: UserType
    parent*: UserType
  UserType* = ref UserTypeObj
  UserTypeObj* = object
    one*: UserType_Header
    io*: KaitaiStream
    root*: UserType
    parent*: ref RootObj

## UserType_Header
proc read*(_: typedesc[UserType_Header], io: KaitaiStream, root: UserType, parent: UserType): UserType_Header =
  let this = new(UserType_Header)
  let root = if root == nil: cast[UserType](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.width = this.io.readU4le()
  this.height = this.io.readU4le()
  result = this

proc fromFile*(_: typedesc[UserType_Header], filename: string): UserType_Header =
  UserType_Header.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var UserType_HeaderObj) =
  close(x.io)

## UserType
proc read*(_: typedesc[UserType], io: KaitaiStream, root: UserType, parent: ref RootObj): UserType =
  let this = new(UserType)
  let root = if root == nil: cast[UserType](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = UserType_Header.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[UserType], filename: string): UserType =
  UserType.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var UserTypeObj) =
  close(x.io)


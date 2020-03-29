import kaitai_struct_nim_runtime

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

### UserType_Header ###
proc read*(_: typedesc[UserType_Header], io: KaitaiStream, root: UserType, parent: UserType): UserType_Header =
  result = new(UserType_Header)
  let root = if root == nil: cast[UserType](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let width = io.readU4le()
  result.width = width
  let height = io.readU4le()
  result.height = height

proc fromFile*(_: typedesc[UserType_Header], filename: string): UserType_Header =
  UserType_Header.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var UserType_HeaderObj) =
  close(x.io)

### UserType ###
proc read*(_: typedesc[UserType], io: KaitaiStream, root: UserType, parent: ref RootObj): UserType =
  result = new(UserType)
  let root = if root == nil: cast[UserType](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let one = UserType_Header.read(io, result, root)
  result.one = one

proc fromFile*(_: typedesc[UserType], filename: string): UserType =
  UserType.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var UserTypeObj) =
  close(x.io)


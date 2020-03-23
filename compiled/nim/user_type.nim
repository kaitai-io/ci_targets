import kaitai_struct_nim_runtime

type
  UserTypeheader* = ref UserTypeheaderObj
  UserTypeheaderObj* = object
    one*: Header
    io*: KaitaiStream
    root*: UserType
    parent*: ref RootObj
  UserType* = ref UserTypeObj
  UserTypeObj* = object
    one*: Header
    io*: KaitaiStream
    root*: UserType
    parent*: ref RootObj

### UserTypeheader ###
proc read*(_: typedesc[UserTypeheader], io: KaitaiStream, root: UserType, parent: UserType): UserTypeheader =
  result = new(UserTypeheader)
  let root = if root == nil: cast[UserType](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.width = result.io.readU4le()
  result.height = result.io.readU4le()

proc fromFile*(_: typedesc[UserTypeheader], filename: string): UserTypeheader =
  UserTypeheader.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var UserTypeheaderObj) =
  close(x.io)

### UserType ###
proc read*(_: typedesc[UserType], io: KaitaiStream, root: UserType, parent: ref RootObj): UserType =
  result = new(UserType)
  let root = if root == nil: cast[UserType](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.one = Header.read(result.io, result, root)

proc fromFile*(_: typedesc[UserType], filename: string): UserType =
  UserType.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var UserTypeObj) =
  close(x.io)


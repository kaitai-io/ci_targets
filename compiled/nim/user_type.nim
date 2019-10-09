import ../../runtime/nim/kaitai



type
  Header* = ref HeaderObj
  HeaderObj* = object
    io: KaitaiStream
    root*: UserType
    parent*: UserType
    width*: uint32
    height*: uint32
  UserType* = ref UserTypeObj
  UserTypeObj* = object
    io: KaitaiStream
    root*: UserType
    parent*: ref RootObj
    one*: Header

# Header
proc read*(_: typedesc[Header], io: KaitaiStream, root: UserType, parent: UserType): owned Header =
  result = new(Header)
  let root = if root == nil: cast[UserType](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.width = readU4le(io)
  result.height = readU4le(io)

proc fromFile*(_: typedesc[Header], filename: string): owned Header =
  Header.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var HeaderObj) =
  close(x.io)

# UserType
proc read*(_: typedesc[UserType], io: KaitaiStream, root: UserType, parent: ref RootObj): owned UserType =
  result = new(UserType)
  let root = if root == nil: cast[UserType](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.one = Header.read(io, root, result)

proc fromFile*(_: typedesc[UserType], filename: string): owned UserType =
  UserType.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var UserTypeObj) =
  close(x.io)


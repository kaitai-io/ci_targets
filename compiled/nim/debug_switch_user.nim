import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  DebugSwitchUser* = ref object of KaitaiStruct
    code*: uint8
    data*: KaitaiStruct
    parent*: KaitaiStruct
  DebugSwitchUser_One* = ref object of KaitaiStruct
    val*: int16
    parent*: DebugSwitchUser
  DebugSwitchUser_Two* = ref object of KaitaiStruct
    val*: uint16
    parent*: DebugSwitchUser

proc read*(_: typedesc[DebugSwitchUser], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DebugSwitchUser
proc read*(_: typedesc[DebugSwitchUser_One], io: KaitaiStream, root: KaitaiStruct, parent: DebugSwitchUser): DebugSwitchUser_One
proc read*(_: typedesc[DebugSwitchUser_Two], io: KaitaiStream, root: KaitaiStruct, parent: DebugSwitchUser): DebugSwitchUser_Two


proc read*(_: typedesc[DebugSwitchUser], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DebugSwitchUser =
  template this: untyped = result
  this = new(DebugSwitchUser)
  let root = if root == nil: cast[DebugSwitchUser](this) else: cast[DebugSwitchUser](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.code = this.io.readU1()
  case ord(this.code)
  of 1:
    this.data = DebugSwitchUser_One.read(this.io, this.root, this)
  of 2:
    this.data = DebugSwitchUser_Two.read(this.io, this.root, this)
  else: discard

proc fromFile*(_: typedesc[DebugSwitchUser], filename: string): DebugSwitchUser =
  DebugSwitchUser.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[DebugSwitchUser_One], io: KaitaiStream, root: KaitaiStruct, parent: DebugSwitchUser): DebugSwitchUser_One =
  template this: untyped = result
  this = new(DebugSwitchUser_One)
  let root = if root == nil: cast[DebugSwitchUser](this) else: cast[DebugSwitchUser](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.val = this.io.readS2le()

proc fromFile*(_: typedesc[DebugSwitchUser_One], filename: string): DebugSwitchUser_One =
  DebugSwitchUser_One.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[DebugSwitchUser_Two], io: KaitaiStream, root: KaitaiStruct, parent: DebugSwitchUser): DebugSwitchUser_Two =
  template this: untyped = result
  this = new(DebugSwitchUser_Two)
  let root = if root == nil: cast[DebugSwitchUser](this) else: cast[DebugSwitchUser](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.val = this.io.readU2le()

proc fromFile*(_: typedesc[DebugSwitchUser_Two], filename: string): DebugSwitchUser_Two =
  DebugSwitchUser_Two.read(newKaitaiFileStream(filename), nil, nil)


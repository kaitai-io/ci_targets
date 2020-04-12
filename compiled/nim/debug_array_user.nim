import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  DebugArrayUser* = ref object of KaitaiStruct
    oneCat*: DebugArrayUser_Cat
    arrayOfCats*: seq[DebugArrayUser_Cat]
    parent*: KaitaiStruct
  DebugArrayUser_Cat* = ref object of KaitaiStruct
    meow*: uint8
    parent*: DebugArrayUser

proc read*(_: typedesc[DebugArrayUser], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DebugArrayUser
proc read*(_: typedesc[DebugArrayUser_Cat], io: KaitaiStream, root: KaitaiStruct, parent: DebugArrayUser): DebugArrayUser_Cat


proc read*(_: typedesc[DebugArrayUser], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DebugArrayUser =
  template this: untyped = result
  this = new(DebugArrayUser)
  let root = if root == nil: cast[DebugArrayUser](this) else: cast[DebugArrayUser](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.oneCat = DebugArrayUser_Cat.read(this.io, this.root, this)
  for i in 0 ..< 3:
    this.arrayOfCats.add(arrayOfCats)

proc fromFile*(_: typedesc[DebugArrayUser], filename: string): DebugArrayUser =
  DebugArrayUser.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[DebugArrayUser_Cat], io: KaitaiStream, root: KaitaiStruct, parent: DebugArrayUser): DebugArrayUser_Cat =
  template this: untyped = result
  this = new(DebugArrayUser_Cat)
  let root = if root == nil: cast[DebugArrayUser](this) else: cast[DebugArrayUser](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.meow = this.io.readU1()

proc fromFile*(_: typedesc[DebugArrayUser_Cat], filename: string): DebugArrayUser_Cat =
  DebugArrayUser_Cat.read(newKaitaiFileStream(filename), nil, nil)


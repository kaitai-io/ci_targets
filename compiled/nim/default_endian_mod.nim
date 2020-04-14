import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  DefaultEndianMod* = ref object of KaitaiStruct
    main*: DefaultEndianMod_MainObj
    parent*: KaitaiStruct
  DefaultEndianMod_MainObj* = ref object of KaitaiStruct
    one*: int32
    nest*: DefaultEndianMod_MainObj_Subnest
    nestBe*: DefaultEndianMod_MainObj_SubnestBe
    parent*: DefaultEndianMod
  DefaultEndianMod_MainObj_Subnest* = ref object of KaitaiStruct
    two*: int32
    parent*: DefaultEndianMod_MainObj
  DefaultEndianMod_MainObj_SubnestBe* = ref object of KaitaiStruct
    two*: int32
    parent*: DefaultEndianMod_MainObj

proc read*(_: typedesc[DefaultEndianMod], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DefaultEndianMod
proc read*(_: typedesc[DefaultEndianMod_MainObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianMod): DefaultEndianMod_MainObj
proc read*(_: typedesc[DefaultEndianMod_MainObj_Subnest], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianMod_MainObj): DefaultEndianMod_MainObj_Subnest
proc read*(_: typedesc[DefaultEndianMod_MainObj_SubnestBe], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianMod_MainObj): DefaultEndianMod_MainObj_SubnestBe


proc read*(_: typedesc[DefaultEndianMod], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DefaultEndianMod =
  template this: untyped = result
  this = new(DefaultEndianMod)
  let root = if root == nil: cast[DefaultEndianMod](this) else: cast[DefaultEndianMod](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.main = DefaultEndianMod_MainObj.read(this.io, this.root, this)

proc fromFile*(_: typedesc[DefaultEndianMod], filename: string): DefaultEndianMod =
  DefaultEndianMod.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[DefaultEndianMod_MainObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianMod): DefaultEndianMod_MainObj =
  template this: untyped = result
  this = new(DefaultEndianMod_MainObj)
  let root = if root == nil: cast[DefaultEndianMod](this) else: cast[DefaultEndianMod](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readS4le()
  this.nest = DefaultEndianMod_MainObj_Subnest.read(this.io, this.root, this)
  this.nestBe = DefaultEndianMod_MainObj_SubnestBe.read(this.io, this.root, this)

proc fromFile*(_: typedesc[DefaultEndianMod_MainObj], filename: string): DefaultEndianMod_MainObj =
  DefaultEndianMod_MainObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[DefaultEndianMod_MainObj_Subnest], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianMod_MainObj): DefaultEndianMod_MainObj_Subnest =
  template this: untyped = result
  this = new(DefaultEndianMod_MainObj_Subnest)
  let root = if root == nil: cast[DefaultEndianMod](this) else: cast[DefaultEndianMod](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.two = this.io.readS4le()

proc fromFile*(_: typedesc[DefaultEndianMod_MainObj_Subnest], filename: string): DefaultEndianMod_MainObj_Subnest =
  DefaultEndianMod_MainObj_Subnest.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[DefaultEndianMod_MainObj_SubnestBe], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianMod_MainObj): DefaultEndianMod_MainObj_SubnestBe =
  template this: untyped = result
  this = new(DefaultEndianMod_MainObj_SubnestBe)
  let root = if root == nil: cast[DefaultEndianMod](this) else: cast[DefaultEndianMod](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.two = this.io.readS4be()

proc fromFile*(_: typedesc[DefaultEndianMod_MainObj_SubnestBe], filename: string): DefaultEndianMod_MainObj_SubnestBe =
  DefaultEndianMod_MainObj_SubnestBe.read(newKaitaiFileStream(filename), nil, nil)


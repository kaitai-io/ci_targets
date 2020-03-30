import kaitai_struct_nim_runtime
import options

type
  DefaultEndianMod_MainObj_Subnest* = ref DefaultEndianMod_MainObj_SubnestObj
  DefaultEndianMod_MainObj_SubnestObj* = object
    two*: int32
    io*: KaitaiStream
    root*: DefaultEndianMod
    parent*: DefaultEndianMod_MainObj
  DefaultEndianMod_MainObj_SubnestBe* = ref DefaultEndianMod_MainObj_SubnestBeObj
  DefaultEndianMod_MainObj_SubnestBeObj* = object
    two*: int32
    io*: KaitaiStream
    root*: DefaultEndianMod
    parent*: DefaultEndianMod_MainObj
  DefaultEndianMod_MainObj* = ref DefaultEndianMod_MainObjObj
  DefaultEndianMod_MainObjObj* = object
    one*: int32
    nest*: DefaultEndianMod_MainObj_Subnest
    nestBe*: DefaultEndianMod_MainObj_SubnestBe
    io*: KaitaiStream
    root*: DefaultEndianMod
    parent*: DefaultEndianMod
  DefaultEndianMod* = ref DefaultEndianModObj
  DefaultEndianModObj* = object
    main*: DefaultEndianMod_MainObj
    io*: KaitaiStream
    root*: DefaultEndianMod
    parent*: ref RootObj

## DefaultEndianMod_MainObj_Subnest
proc read*(_: typedesc[DefaultEndianMod_MainObj_Subnest], io: KaitaiStream, root: DefaultEndianMod, parent: DefaultEndianMod_MainObj): DefaultEndianMod_MainObj_Subnest =
  let this = new(DefaultEndianMod_MainObj_Subnest)
  let root = if root == nil: cast[DefaultEndianMod](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.two = this.io.readS4le()
  result = this

proc fromFile*(_: typedesc[DefaultEndianMod_MainObj_Subnest], filename: string): DefaultEndianMod_MainObj_Subnest =
  DefaultEndianMod_MainObj_Subnest.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianMod_MainObj_SubnestObj) =
  close(x.io)

## DefaultEndianMod_MainObj_SubnestBe
proc read*(_: typedesc[DefaultEndianMod_MainObj_SubnestBe], io: KaitaiStream, root: DefaultEndianMod, parent: DefaultEndianMod_MainObj): DefaultEndianMod_MainObj_SubnestBe =
  let this = new(DefaultEndianMod_MainObj_SubnestBe)
  let root = if root == nil: cast[DefaultEndianMod](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.two = this.io.readS4be()
  result = this

proc fromFile*(_: typedesc[DefaultEndianMod_MainObj_SubnestBe], filename: string): DefaultEndianMod_MainObj_SubnestBe =
  DefaultEndianMod_MainObj_SubnestBe.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianMod_MainObj_SubnestBeObj) =
  close(x.io)

## DefaultEndianMod_MainObj
proc read*(_: typedesc[DefaultEndianMod_MainObj], io: KaitaiStream, root: DefaultEndianMod, parent: DefaultEndianMod): DefaultEndianMod_MainObj =
  let this = new(DefaultEndianMod_MainObj)
  let root = if root == nil: cast[DefaultEndianMod](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readS4le()
  this.nest = DefaultEndianMod_MainObj_Subnest.read(this.io, this.root, this)
  this.nestBe = DefaultEndianMod_MainObj_SubnestBe.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[DefaultEndianMod_MainObj], filename: string): DefaultEndianMod_MainObj =
  DefaultEndianMod_MainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianMod_MainObjObj) =
  close(x.io)

## DefaultEndianMod
proc read*(_: typedesc[DefaultEndianMod], io: KaitaiStream, root: DefaultEndianMod, parent: ref RootObj): DefaultEndianMod =
  let this = new(DefaultEndianMod)
  let root = if root == nil: cast[DefaultEndianMod](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.main = DefaultEndianMod_MainObj.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[DefaultEndianMod], filename: string): DefaultEndianMod =
  DefaultEndianMod.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianModObj) =
  close(x.io)


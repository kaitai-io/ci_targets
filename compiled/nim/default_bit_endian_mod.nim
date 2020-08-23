import kaitai_struct_nim_runtime
import options

type
  DefaultBitEndianMod* = ref object of KaitaiStruct
    `main`*: DefaultBitEndianMod_MainObj
    `parent`*: KaitaiStruct
  DefaultBitEndianMod_MainObj* = ref object of KaitaiStruct
    `one`*: uint64
    `two`*: uint64
    `nest`*: DefaultBitEndianMod_MainObj_Subnest
    `nestBe`*: DefaultBitEndianMod_MainObj_SubnestBe
    `parent`*: DefaultBitEndianMod
  DefaultBitEndianMod_MainObj_Subnest* = ref object of KaitaiStruct
    `two`*: uint64
    `parent`*: DefaultBitEndianMod_MainObj
  DefaultBitEndianMod_MainObj_SubnestBe* = ref object of KaitaiStruct
    `two`*: uint64
    `parent`*: DefaultBitEndianMod_MainObj

proc read*(_: typedesc[DefaultBitEndianMod], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DefaultBitEndianMod
proc read*(_: typedesc[DefaultBitEndianMod_MainObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultBitEndianMod): DefaultBitEndianMod_MainObj
proc read*(_: typedesc[DefaultBitEndianMod_MainObj_Subnest], io: KaitaiStream, root: KaitaiStruct, parent: DefaultBitEndianMod_MainObj): DefaultBitEndianMod_MainObj_Subnest
proc read*(_: typedesc[DefaultBitEndianMod_MainObj_SubnestBe], io: KaitaiStream, root: KaitaiStruct, parent: DefaultBitEndianMod_MainObj): DefaultBitEndianMod_MainObj_SubnestBe


proc read*(_: typedesc[DefaultBitEndianMod], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DefaultBitEndianMod =
  template this: untyped = result
  this = new(DefaultBitEndianMod)
  let root = if root == nil: cast[DefaultBitEndianMod](this) else: cast[DefaultBitEndianMod](root)
  this.io = io
  this.root = root
  this.parent = parent

  let mainExpr = DefaultBitEndianMod_MainObj.read(this.io, this.root, this)
  this.main = mainExpr

proc fromFile*(_: typedesc[DefaultBitEndianMod], filename: string): DefaultBitEndianMod =
  DefaultBitEndianMod.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[DefaultBitEndianMod_MainObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultBitEndianMod): DefaultBitEndianMod_MainObj =
  template this: untyped = result
  this = new(DefaultBitEndianMod_MainObj)
  let root = if root == nil: cast[DefaultBitEndianMod](this) else: cast[DefaultBitEndianMod](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = this.io.readBitsIntLe(9)
  this.one = oneExpr
  let twoExpr = this.io.readBitsIntLe(15)
  this.two = twoExpr
  alignToByte(this.io)
  let nestExpr = DefaultBitEndianMod_MainObj_Subnest.read(this.io, this.root, this)
  this.nest = nestExpr
  let nestBeExpr = DefaultBitEndianMod_MainObj_SubnestBe.read(this.io, this.root, this)
  this.nestBe = nestBeExpr

proc fromFile*(_: typedesc[DefaultBitEndianMod_MainObj], filename: string): DefaultBitEndianMod_MainObj =
  DefaultBitEndianMod_MainObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[DefaultBitEndianMod_MainObj_Subnest], io: KaitaiStream, root: KaitaiStruct, parent: DefaultBitEndianMod_MainObj): DefaultBitEndianMod_MainObj_Subnest =
  template this: untyped = result
  this = new(DefaultBitEndianMod_MainObj_Subnest)
  let root = if root == nil: cast[DefaultBitEndianMod](this) else: cast[DefaultBitEndianMod](root)
  this.io = io
  this.root = root
  this.parent = parent

  let twoExpr = this.io.readBitsIntLe(16)
  this.two = twoExpr

proc fromFile*(_: typedesc[DefaultBitEndianMod_MainObj_Subnest], filename: string): DefaultBitEndianMod_MainObj_Subnest =
  DefaultBitEndianMod_MainObj_Subnest.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[DefaultBitEndianMod_MainObj_SubnestBe], io: KaitaiStream, root: KaitaiStruct, parent: DefaultBitEndianMod_MainObj): DefaultBitEndianMod_MainObj_SubnestBe =
  template this: untyped = result
  this = new(DefaultBitEndianMod_MainObj_SubnestBe)
  let root = if root == nil: cast[DefaultBitEndianMod](this) else: cast[DefaultBitEndianMod](root)
  this.io = io
  this.root = root
  this.parent = parent

  let twoExpr = this.io.readBitsIntBe(16)
  this.two = twoExpr

proc fromFile*(_: typedesc[DefaultBitEndianMod_MainObj_SubnestBe], filename: string): DefaultBitEndianMod_MainObj_SubnestBe =
  DefaultBitEndianMod_MainObj_SubnestBe.read(newKaitaiFileStream(filename), nil, nil)


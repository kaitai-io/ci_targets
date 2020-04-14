import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ParamsPassArrayStruct* = ref object of KaitaiStruct
    one*: ParamsPassArrayStruct_Foo
    two*: ParamsPassArrayStruct_Bar
    passStructs*: ParamsPassArrayStruct_StructType
    parent*: KaitaiStruct
    oneTwoInst*: seq[KaitaiStruct]
  ParamsPassArrayStruct_Foo* = ref object of KaitaiStruct
    f*: uint8
    parent*: ParamsPassArrayStruct
  ParamsPassArrayStruct_Bar* = ref object of KaitaiStruct
    b*: uint8
    parent*: ParamsPassArrayStruct
  ParamsPassArrayStruct_StructType* = ref object of KaitaiStruct
    structs*: seq[KaitaiStruct]
    parent*: ParamsPassArrayStruct

proc read*(_: typedesc[ParamsPassArrayStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsPassArrayStruct
proc read*(_: typedesc[ParamsPassArrayStruct_Foo], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassArrayStruct): ParamsPassArrayStruct_Foo
proc read*(_: typedesc[ParamsPassArrayStruct_Bar], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassArrayStruct): ParamsPassArrayStruct_Bar
proc read*(_: typedesc[ParamsPassArrayStruct_StructType], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassArrayStruct, structs: any): ParamsPassArrayStruct_StructType

proc oneTwo*(this: ParamsPassArrayStruct): seq[KaitaiStruct]

proc read*(_: typedesc[ParamsPassArrayStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsPassArrayStruct =
  template this: untyped = result
  this = new(ParamsPassArrayStruct)
  let root = if root == nil: cast[ParamsPassArrayStruct](this) else: cast[ParamsPassArrayStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.one = ParamsPassArrayStruct_Foo.read(this.io, this.root, this)
  this.two = ParamsPassArrayStruct_Bar.read(this.io, this.root, this)
  this.passStructs = ParamsPassArrayStruct_StructType.read(this.io, this.root, this, this.oneTwo)

proc oneTwo(this: ParamsPassArrayStruct): seq[KaitaiStruct] = 
  if this.oneTwoInst.len != 0:
    return this.oneTwoInst
  this.oneTwoInst = seq[KaitaiStruct](@[KaitaiStruct(this.one), KaitaiStruct(this.two)])
  if this.oneTwoInst.len != 0:
    return this.oneTwoInst

proc fromFile*(_: typedesc[ParamsPassArrayStruct], filename: string): ParamsPassArrayStruct =
  ParamsPassArrayStruct.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsPassArrayStruct_Foo], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassArrayStruct): ParamsPassArrayStruct_Foo =
  template this: untyped = result
  this = new(ParamsPassArrayStruct_Foo)
  let root = if root == nil: cast[ParamsPassArrayStruct](this) else: cast[ParamsPassArrayStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.f = this.io.readU1()

proc fromFile*(_: typedesc[ParamsPassArrayStruct_Foo], filename: string): ParamsPassArrayStruct_Foo =
  ParamsPassArrayStruct_Foo.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsPassArrayStruct_Bar], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassArrayStruct): ParamsPassArrayStruct_Bar =
  template this: untyped = result
  this = new(ParamsPassArrayStruct_Bar)
  let root = if root == nil: cast[ParamsPassArrayStruct](this) else: cast[ParamsPassArrayStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.b = this.io.readU1()

proc fromFile*(_: typedesc[ParamsPassArrayStruct_Bar], filename: string): ParamsPassArrayStruct_Bar =
  ParamsPassArrayStruct_Bar.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsPassArrayStruct_StructType], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassArrayStruct, structs: any): ParamsPassArrayStruct_StructType =
  template this: untyped = result
  this = new(ParamsPassArrayStruct_StructType)
  let root = if root == nil: cast[ParamsPassArrayStruct](this) else: cast[ParamsPassArrayStruct](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[ParamsPassArrayStruct_StructType], filename: string): ParamsPassArrayStruct_StructType =
  ParamsPassArrayStruct_StructType.read(newKaitaiFileStream(filename), nil, nil)


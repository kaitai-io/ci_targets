import kaitai_struct_nim_runtime
import options

type
  ParamsPassStruct* = ref object of KaitaiStruct
    `first`*: ParamsPassStruct_Block
    `one`*: ParamsPassStruct_StructType
    `parent`*: KaitaiStruct
  ParamsPassStruct_Block* = ref object of KaitaiStruct
    `foo`*: uint8
    `parent`*: ParamsPassStruct
  ParamsPassStruct_StructType* = ref object of KaitaiStruct
    `bar`*: ParamsPassStruct_StructType_Baz
    `foo`*: KaitaiStruct
    `parent`*: ParamsPassStruct
  ParamsPassStruct_StructType_Baz* = ref object of KaitaiStruct
    `qux`*: uint8
    `foo`*: KaitaiStruct
    `parent`*: ParamsPassStruct_StructType

proc read*(_: typedesc[ParamsPassStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsPassStruct
proc read*(_: typedesc[ParamsPassStruct_Block], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassStruct): ParamsPassStruct_Block
proc read*(_: typedesc[ParamsPassStruct_StructType], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassStruct, foo: any): ParamsPassStruct_StructType
proc read*(_: typedesc[ParamsPassStruct_StructType_Baz], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassStruct_StructType, foo: any): ParamsPassStruct_StructType_Baz


proc read*(_: typedesc[ParamsPassStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsPassStruct =
  template this: untyped = result
  this = new(ParamsPassStruct)
  let root = if root == nil: cast[ParamsPassStruct](this) else: cast[ParamsPassStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  let firstExpr = ParamsPassStruct_Block.read(this.io, this.root, this)
  this.first = firstExpr
  let oneExpr = ParamsPassStruct_StructType.read(this.io, this.root, this, this.first)
  this.one = oneExpr

proc fromFile*(_: typedesc[ParamsPassStruct], filename: string): ParamsPassStruct =
  ParamsPassStruct.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsPassStruct_Block], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassStruct): ParamsPassStruct_Block =
  template this: untyped = result
  this = new(ParamsPassStruct_Block)
  let root = if root == nil: cast[ParamsPassStruct](this) else: cast[ParamsPassStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = this.io.readU1()
  this.foo = fooExpr

proc fromFile*(_: typedesc[ParamsPassStruct_Block], filename: string): ParamsPassStruct_Block =
  ParamsPassStruct_Block.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsPassStruct_StructType], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassStruct, foo: any): ParamsPassStruct_StructType =
  template this: untyped = result
  this = new(ParamsPassStruct_StructType)
  let root = if root == nil: cast[ParamsPassStruct](this) else: cast[ParamsPassStruct](root)
  this.io = io
  this.root = root
  this.parent = parent
  let fooExpr = KaitaiStruct(foo)
  this.foo = fooExpr

  let barExpr = ParamsPassStruct_StructType_Baz.read(this.io, this.root, this, this.foo)
  this.bar = barExpr

proc fromFile*(_: typedesc[ParamsPassStruct_StructType], filename: string): ParamsPassStruct_StructType =
  ParamsPassStruct_StructType.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsPassStruct_StructType_Baz], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassStruct_StructType, foo: any): ParamsPassStruct_StructType_Baz =
  template this: untyped = result
  this = new(ParamsPassStruct_StructType_Baz)
  let root = if root == nil: cast[ParamsPassStruct](this) else: cast[ParamsPassStruct](root)
  this.io = io
  this.root = root
  this.parent = parent
  let fooExpr = KaitaiStruct(foo)
  this.foo = fooExpr

  let quxExpr = this.io.readU1()
  this.qux = quxExpr

proc fromFile*(_: typedesc[ParamsPassStruct_StructType_Baz], filename: string): ParamsPassStruct_StructType_Baz =
  ParamsPassStruct_StructType_Baz.read(newKaitaiFileStream(filename), nil, nil)


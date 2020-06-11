import kaitai_struct_nim_runtime
import options

type
  NestedSameName* = ref object of KaitaiStruct
    `mainData`*: NestedSameName_Main
    `dummy`*: NestedSameName_DummyObj
    `parent`*: KaitaiStruct
  NestedSameName_Main* = ref object of KaitaiStruct
    `mainSize`*: int32
    `foo`*: NestedSameName_Main_FooObj
    `parent`*: NestedSameName
  NestedSameName_Main_FooObj* = ref object of KaitaiStruct
    `data`*: seq[byte]
    `parent`*: NestedSameName_Main
  NestedSameName_DummyObj* = ref object of KaitaiStruct
    `parent`*: NestedSameName
  NestedSameName_DummyObj_Foo* = ref object of KaitaiStruct
    `parent`*: KaitaiStruct

proc read*(_: typedesc[NestedSameName], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedSameName
proc read*(_: typedesc[NestedSameName_Main], io: KaitaiStream, root: KaitaiStruct, parent: NestedSameName): NestedSameName_Main
proc read*(_: typedesc[NestedSameName_Main_FooObj], io: KaitaiStream, root: KaitaiStruct, parent: NestedSameName_Main): NestedSameName_Main_FooObj
proc read*(_: typedesc[NestedSameName_DummyObj], io: KaitaiStream, root: KaitaiStruct, parent: NestedSameName): NestedSameName_DummyObj
proc read*(_: typedesc[NestedSameName_DummyObj_Foo], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedSameName_DummyObj_Foo


proc read*(_: typedesc[NestedSameName], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedSameName =
  template this: untyped = result
  this = new(NestedSameName)
  let root = if root == nil: cast[NestedSameName](this) else: cast[NestedSameName](root)
  this.io = io
  this.root = root
  this.parent = parent

  let mainDataExpr = NestedSameName_Main.read(this.io, this.root, this)
  this.mainData = mainDataExpr
  let dummyExpr = NestedSameName_DummyObj.read(this.io, this.root, this)
  this.dummy = dummyExpr

proc fromFile*(_: typedesc[NestedSameName], filename: string): NestedSameName =
  NestedSameName.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedSameName_Main], io: KaitaiStream, root: KaitaiStruct, parent: NestedSameName): NestedSameName_Main =
  template this: untyped = result
  this = new(NestedSameName_Main)
  let root = if root == nil: cast[NestedSameName](this) else: cast[NestedSameName](root)
  this.io = io
  this.root = root
  this.parent = parent

  let mainSizeExpr = this.io.readS4le()
  this.mainSize = mainSizeExpr
  let fooExpr = NestedSameName_Main_FooObj.read(this.io, this.root, this)
  this.foo = fooExpr

proc fromFile*(_: typedesc[NestedSameName_Main], filename: string): NestedSameName_Main =
  NestedSameName_Main.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedSameName_Main_FooObj], io: KaitaiStream, root: KaitaiStruct, parent: NestedSameName_Main): NestedSameName_Main_FooObj =
  template this: untyped = result
  this = new(NestedSameName_Main_FooObj)
  let root = if root == nil: cast[NestedSameName](this) else: cast[NestedSameName](root)
  this.io = io
  this.root = root
  this.parent = parent

  let dataExpr = this.io.readBytes(int((this.parent.mainSize * 2)))
  this.data = dataExpr

proc fromFile*(_: typedesc[NestedSameName_Main_FooObj], filename: string): NestedSameName_Main_FooObj =
  NestedSameName_Main_FooObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedSameName_DummyObj], io: KaitaiStream, root: KaitaiStruct, parent: NestedSameName): NestedSameName_DummyObj =
  template this: untyped = result
  this = new(NestedSameName_DummyObj)
  let root = if root == nil: cast[NestedSameName](this) else: cast[NestedSameName](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[NestedSameName_DummyObj], filename: string): NestedSameName_DummyObj =
  NestedSameName_DummyObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedSameName_DummyObj_Foo], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedSameName_DummyObj_Foo =
  template this: untyped = result
  this = new(NestedSameName_DummyObj_Foo)
  let root = if root == nil: cast[NestedSameName](this) else: cast[NestedSameName](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[NestedSameName_DummyObj_Foo], filename: string): NestedSameName_DummyObj_Foo =
  NestedSameName_DummyObj_Foo.read(newKaitaiFileStream(filename), nil, nil)


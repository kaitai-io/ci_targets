import kaitai_struct_nim_runtime
import options

type
  NestedSameName2* = ref object of KaitaiStruct
    version*: uint32
    mainData*: NestedSameName2_Main
    dummy*: NestedSameName2_DummyObj
    parent*: KaitaiStruct
  NestedSameName2_Main* = ref object of KaitaiStruct
    mainSize*: int32
    foo*: NestedSameName2_Main_FooObj
    parent*: NestedSameName2
  NestedSameName2_Main_FooObj* = ref object of KaitaiStruct
    data1*: seq[byte]
    parent*: NestedSameName2_Main
  NestedSameName2_DummyObj* = ref object of KaitaiStruct
    dummySize*: int32
    foo*: NestedSameName2_DummyObj_FooObj
    parent*: NestedSameName2
  NestedSameName2_DummyObj_FooObj* = ref object of KaitaiStruct
    data2*: seq[byte]
    parent*: NestedSameName2_DummyObj

proc read*(_: typedesc[NestedSameName2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedSameName2
proc read*(_: typedesc[NestedSameName2_Main], io: KaitaiStream, root: KaitaiStruct, parent: NestedSameName2): NestedSameName2_Main
proc read*(_: typedesc[NestedSameName2_Main_FooObj], io: KaitaiStream, root: KaitaiStruct, parent: NestedSameName2_Main): NestedSameName2_Main_FooObj
proc read*(_: typedesc[NestedSameName2_DummyObj], io: KaitaiStream, root: KaitaiStruct, parent: NestedSameName2): NestedSameName2_DummyObj
proc read*(_: typedesc[NestedSameName2_DummyObj_FooObj], io: KaitaiStream, root: KaitaiStruct, parent: NestedSameName2_DummyObj): NestedSameName2_DummyObj_FooObj


proc read*(_: typedesc[NestedSameName2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedSameName2 =
  template this: untyped = result
  this = new(NestedSameName2)
  let root = if root == nil: cast[NestedSameName2](this) else: cast[NestedSameName2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let versionExpr = this.io.readU4le()
  this.version = versionExpr
  let mainDataExpr = NestedSameName2_Main.read(this.io, this.root, this)
  this.mainData = mainDataExpr
  let dummyExpr = NestedSameName2_DummyObj.read(this.io, this.root, this)
  this.dummy = dummyExpr

proc fromFile*(_: typedesc[NestedSameName2], filename: string): NestedSameName2 =
  NestedSameName2.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedSameName2_Main], io: KaitaiStream, root: KaitaiStruct, parent: NestedSameName2): NestedSameName2_Main =
  template this: untyped = result
  this = new(NestedSameName2_Main)
  let root = if root == nil: cast[NestedSameName2](this) else: cast[NestedSameName2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let mainSizeExpr = this.io.readS4le()
  this.mainSize = mainSizeExpr
  let fooExpr = NestedSameName2_Main_FooObj.read(this.io, this.root, this)
  this.foo = fooExpr

proc fromFile*(_: typedesc[NestedSameName2_Main], filename: string): NestedSameName2_Main =
  NestedSameName2_Main.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedSameName2_Main_FooObj], io: KaitaiStream, root: KaitaiStruct, parent: NestedSameName2_Main): NestedSameName2_Main_FooObj =
  template this: untyped = result
  this = new(NestedSameName2_Main_FooObj)
  let root = if root == nil: cast[NestedSameName2](this) else: cast[NestedSameName2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let data1Expr = this.io.readBytes(int((this.parent.mainSize * 2)))
  this.data1 = data1Expr

proc fromFile*(_: typedesc[NestedSameName2_Main_FooObj], filename: string): NestedSameName2_Main_FooObj =
  NestedSameName2_Main_FooObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedSameName2_DummyObj], io: KaitaiStream, root: KaitaiStruct, parent: NestedSameName2): NestedSameName2_DummyObj =
  template this: untyped = result
  this = new(NestedSameName2_DummyObj)
  let root = if root == nil: cast[NestedSameName2](this) else: cast[NestedSameName2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let dummySizeExpr = this.io.readS4le()
  this.dummySize = dummySizeExpr
  let fooExpr = NestedSameName2_DummyObj_FooObj.read(this.io, this.root, this)
  this.foo = fooExpr

proc fromFile*(_: typedesc[NestedSameName2_DummyObj], filename: string): NestedSameName2_DummyObj =
  NestedSameName2_DummyObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedSameName2_DummyObj_FooObj], io: KaitaiStream, root: KaitaiStruct, parent: NestedSameName2_DummyObj): NestedSameName2_DummyObj_FooObj =
  template this: untyped = result
  this = new(NestedSameName2_DummyObj_FooObj)
  let root = if root == nil: cast[NestedSameName2](this) else: cast[NestedSameName2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let data2Expr = this.io.readBytes(int((this.parent.dummySize * 2)))
  this.data2 = data2Expr

proc fromFile*(_: typedesc[NestedSameName2_DummyObj_FooObj], filename: string): NestedSameName2_DummyObj_FooObj =
  NestedSameName2_DummyObj_FooObj.read(newKaitaiFileStream(filename), nil, nil)


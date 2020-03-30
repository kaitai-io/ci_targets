import kaitai_struct_nim_runtime
import options

type
  NestedSameName2_Main_FooObj* = ref NestedSameName2_Main_FooObjObj
  NestedSameName2_Main_FooObjObj* = object
    data1*: string
    io*: KaitaiStream
    root*: NestedSameName2
    parent*: NestedSameName2_Main
  NestedSameName2_Main* = ref NestedSameName2_MainObj
  NestedSameName2_MainObj* = object
    mainSize*: int32
    foo*: NestedSameName2_Main_FooObj
    io*: KaitaiStream
    root*: NestedSameName2
    parent*: NestedSameName2
  NestedSameName2_DummyObj_FooObj* = ref NestedSameName2_DummyObj_FooObjObj
  NestedSameName2_DummyObj_FooObjObj* = object
    data2*: string
    io*: KaitaiStream
    root*: NestedSameName2
    parent*: NestedSameName2_DummyObj
  NestedSameName2_DummyObj* = ref NestedSameName2_DummyObjObj
  NestedSameName2_DummyObjObj* = object
    dummySize*: int32
    foo*: NestedSameName2_DummyObj_FooObj
    io*: KaitaiStream
    root*: NestedSameName2
    parent*: NestedSameName2
  NestedSameName2* = ref NestedSameName2Obj
  NestedSameName2Obj* = object
    version*: uint32
    mainData*: NestedSameName2_Main
    dummy*: NestedSameName2_DummyObj
    io*: KaitaiStream
    root*: NestedSameName2
    parent*: ref RootObj

## NestedSameName2_Main_FooObj
proc read*(_: typedesc[NestedSameName2_Main_FooObj], io: KaitaiStream, root: NestedSameName2, parent: NestedSameName2_Main): NestedSameName2_Main_FooObj =
  let this = new(NestedSameName2_Main_FooObj)
  let root = if root == nil: cast[NestedSameName2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.data1 = this.io.readBytes(int((this.parent.mainSize * 2)))
  result = this

proc fromFile*(_: typedesc[NestedSameName2_Main_FooObj], filename: string): NestedSameName2_Main_FooObj =
  NestedSameName2_Main_FooObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedSameName2_Main_FooObjObj) =
  close(x.io)

## NestedSameName2_Main
proc read*(_: typedesc[NestedSameName2_Main], io: KaitaiStream, root: NestedSameName2, parent: NestedSameName2): NestedSameName2_Main =
  let this = new(NestedSameName2_Main)
  let root = if root == nil: cast[NestedSameName2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.mainSize = this.io.readS4le()
  this.foo = NestedSameName2_Main_FooObj.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[NestedSameName2_Main], filename: string): NestedSameName2_Main =
  NestedSameName2_Main.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedSameName2_MainObj) =
  close(x.io)

## NestedSameName2_DummyObj_FooObj
proc read*(_: typedesc[NestedSameName2_DummyObj_FooObj], io: KaitaiStream, root: NestedSameName2, parent: NestedSameName2_DummyObj): NestedSameName2_DummyObj_FooObj =
  let this = new(NestedSameName2_DummyObj_FooObj)
  let root = if root == nil: cast[NestedSameName2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.data2 = this.io.readBytes(int((this.parent.dummySize * 2)))
  result = this

proc fromFile*(_: typedesc[NestedSameName2_DummyObj_FooObj], filename: string): NestedSameName2_DummyObj_FooObj =
  NestedSameName2_DummyObj_FooObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedSameName2_DummyObj_FooObjObj) =
  close(x.io)

## NestedSameName2_DummyObj
proc read*(_: typedesc[NestedSameName2_DummyObj], io: KaitaiStream, root: NestedSameName2, parent: NestedSameName2): NestedSameName2_DummyObj =
  let this = new(NestedSameName2_DummyObj)
  let root = if root == nil: cast[NestedSameName2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.dummySize = this.io.readS4le()
  this.foo = NestedSameName2_DummyObj_FooObj.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[NestedSameName2_DummyObj], filename: string): NestedSameName2_DummyObj =
  NestedSameName2_DummyObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedSameName2_DummyObjObj) =
  close(x.io)

## NestedSameName2
proc read*(_: typedesc[NestedSameName2], io: KaitaiStream, root: NestedSameName2, parent: ref RootObj): NestedSameName2 =
  let this = new(NestedSameName2)
  let root = if root == nil: cast[NestedSameName2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.version = this.io.readU4le()
  this.mainData = NestedSameName2_Main.read(this.io, this.root, this)
  this.dummy = NestedSameName2_DummyObj.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[NestedSameName2], filename: string): NestedSameName2 =
  NestedSameName2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedSameName2Obj) =
  close(x.io)


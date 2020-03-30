import kaitai_struct_nim_runtime
import options

type
  NestedSameName_Main_FooObj* = ref NestedSameName_Main_FooObjObj
  NestedSameName_Main_FooObjObj* = object
    data*: string
    io*: KaitaiStream
    root*: NestedSameName
    parent*: NestedSameName_Main
  NestedSameName_Main* = ref NestedSameName_MainObj
  NestedSameName_MainObj* = object
    mainSize*: int32
    foo*: NestedSameName_Main_FooObj
    io*: KaitaiStream
    root*: NestedSameName
    parent*: NestedSameName
  NestedSameName_DummyObj_Foo* = ref NestedSameName_DummyObj_FooObj
  NestedSameName_DummyObj_FooObj* = object
    io*: KaitaiStream
    root*: NestedSameName
    parent*: ref RootObj
  NestedSameName_DummyObj* = ref NestedSameName_DummyObjObj
  NestedSameName_DummyObjObj* = object
    io*: KaitaiStream
    root*: NestedSameName
    parent*: NestedSameName
  NestedSameName* = ref NestedSameNameObj
  NestedSameNameObj* = object
    mainData*: NestedSameName_Main
    dummy*: NestedSameName_DummyObj
    io*: KaitaiStream
    root*: NestedSameName
    parent*: ref RootObj

### NestedSameName_Main_FooObj ###
proc read*(_: typedesc[NestedSameName_Main_FooObj], io: KaitaiStream, root: NestedSameName, parent: NestedSameName_Main): NestedSameName_Main_FooObj =
  let this = new(NestedSameName_Main_FooObj)
  let root = if root == nil: cast[NestedSameName](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let data = this.io.readBytes(int((parent.this.mainSize * 2)))
  this.data = data
  result = this

proc fromFile*(_: typedesc[NestedSameName_Main_FooObj], filename: string): NestedSameName_Main_FooObj =
  NestedSameName_Main_FooObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedSameName_Main_FooObjObj) =
  close(x.io)

### NestedSameName_Main ###
proc read*(_: typedesc[NestedSameName_Main], io: KaitaiStream, root: NestedSameName, parent: NestedSameName): NestedSameName_Main =
  let this = new(NestedSameName_Main)
  let root = if root == nil: cast[NestedSameName](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let mainSize = this.io.readS4le()
  this.mainSize = mainSize
  let foo = NestedSameName_Main_FooObj.read(this.io, this.root, this)
  this.foo = foo
  result = this

proc fromFile*(_: typedesc[NestedSameName_Main], filename: string): NestedSameName_Main =
  NestedSameName_Main.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedSameName_MainObj) =
  close(x.io)

### NestedSameName_DummyObj_Foo ###
proc read*(_: typedesc[NestedSameName_DummyObj_Foo], io: KaitaiStream, root: NestedSameName, parent: ref RootObj): NestedSameName_DummyObj_Foo =
  let this = new(NestedSameName_DummyObj_Foo)
  let root = if root == nil: cast[NestedSameName](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[NestedSameName_DummyObj_Foo], filename: string): NestedSameName_DummyObj_Foo =
  NestedSameName_DummyObj_Foo.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedSameName_DummyObj_FooObj) =
  close(x.io)

### NestedSameName_DummyObj ###
proc read*(_: typedesc[NestedSameName_DummyObj], io: KaitaiStream, root: NestedSameName, parent: NestedSameName): NestedSameName_DummyObj =
  let this = new(NestedSameName_DummyObj)
  let root = if root == nil: cast[NestedSameName](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[NestedSameName_DummyObj], filename: string): NestedSameName_DummyObj =
  NestedSameName_DummyObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedSameName_DummyObjObj) =
  close(x.io)

### NestedSameName ###
proc read*(_: typedesc[NestedSameName], io: KaitaiStream, root: NestedSameName, parent: ref RootObj): NestedSameName =
  let this = new(NestedSameName)
  let root = if root == nil: cast[NestedSameName](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let mainData = NestedSameName_Main.read(this.io, this.root, this)
  this.mainData = mainData
  let dummy = NestedSameName_DummyObj.read(this.io, this.root, this)
  this.dummy = dummy
  result = this

proc fromFile*(_: typedesc[NestedSameName], filename: string): NestedSameName =
  NestedSameName.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedSameNameObj) =
  close(x.io)


import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  NavParentOverride* = ref object of KaitaiStruct
    childSize*: uint8
    child1*: NavParentOverride_Child
    mediator2*: NavParentOverride_Mediator
    parent*: KaitaiStruct
  NavParentOverride_Mediator* = ref object of KaitaiStruct
    child2*: NavParentOverride_Child
    parent*: NavParentOverride
  NavParentOverride_Child* = ref object of KaitaiStruct
    data*: string
    parent*: NavParentOverride

proc read*(_: typedesc[NavParentOverride], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentOverride
proc read*(_: typedesc[NavParentOverride_Mediator], io: KaitaiStream, root: KaitaiStruct, parent: NavParentOverride): NavParentOverride_Mediator
proc read*(_: typedesc[NavParentOverride_Child], io: KaitaiStream, root: KaitaiStruct, parent: NavParentOverride): NavParentOverride_Child

proc read*(_: typedesc[NavParentOverride], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentOverride =
  template this: untyped = result
  this = new(NavParentOverride)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.childSize = this.io.readU1()
  this.child1 = NavParentOverride_Child.read(this.io, this.root, this)
  this.mediator2 = NavParentOverride_Mediator.read(this.io, this.root, this)

proc fromFile*(_: typedesc[NavParentOverride], filename: string): NavParentOverride =
  NavParentOverride.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParentOverride_Mediator], io: KaitaiStream, root: KaitaiStruct, parent: NavParentOverride): NavParentOverride_Mediator =
  template this: untyped = result
  this = new(NavParentOverride_Mediator)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.child2 = NavParentOverride_Child.read(this.io, this.root, this.parent)

proc fromFile*(_: typedesc[NavParentOverride_Mediator], filename: string): NavParentOverride_Mediator =
  NavParentOverride_Mediator.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParentOverride_Child], io: KaitaiStream, root: KaitaiStruct, parent: NavParentOverride): NavParentOverride_Child =
  template this: untyped = result
  this = new(NavParentOverride_Child)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.data = this.io.readBytes(int(this.parent.childSize))

proc fromFile*(_: typedesc[NavParentOverride_Child], filename: string): NavParentOverride_Child =
  NavParentOverride_Child.read(newKaitaiFileStream(filename), nil, nil)


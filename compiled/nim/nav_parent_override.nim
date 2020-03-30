import kaitai_struct_nim_runtime
import options

type
  NavParentOverride_Mediator* = ref NavParentOverride_MediatorObj
  NavParentOverride_MediatorObj* = object
    child2*: NavParentOverride_Child
    io*: KaitaiStream
    root*: NavParentOverride
    parent*: NavParentOverride
  NavParentOverride_Child* = ref NavParentOverride_ChildObj
  NavParentOverride_ChildObj* = object
    data*: string
    io*: KaitaiStream
    root*: NavParentOverride
    parent*: NavParentOverride
  NavParentOverride* = ref NavParentOverrideObj
  NavParentOverrideObj* = object
    childSize*: uint8
    child1*: NavParentOverride_Child
    mediator2*: NavParentOverride_Mediator
    io*: KaitaiStream
    root*: NavParentOverride
    parent*: ref RootObj

## NavParentOverride_Mediator
proc read*(_: typedesc[NavParentOverride_Mediator], io: KaitaiStream, root: NavParentOverride, parent: NavParentOverride): NavParentOverride_Mediator =
  let this = new(NavParentOverride_Mediator)
  let root = if root == nil: cast[NavParentOverride](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.child2 = NavParentOverride_Child.read(this.io, this.root, this.parent)
  result = this

proc fromFile*(_: typedesc[NavParentOverride_Mediator], filename: string): NavParentOverride_Mediator =
  NavParentOverride_Mediator.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentOverride_MediatorObj) =
  close(x.io)

## NavParentOverride_Child
proc read*(_: typedesc[NavParentOverride_Child], io: KaitaiStream, root: NavParentOverride, parent: NavParentOverride): NavParentOverride_Child =
  let this = new(NavParentOverride_Child)
  let root = if root == nil: cast[NavParentOverride](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.data = this.io.readBytes(int(this.parent.childSize))
  result = this

proc fromFile*(_: typedesc[NavParentOverride_Child], filename: string): NavParentOverride_Child =
  NavParentOverride_Child.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentOverride_ChildObj) =
  close(x.io)

## NavParentOverride
proc read*(_: typedesc[NavParentOverride], io: KaitaiStream, root: NavParentOverride, parent: ref RootObj): NavParentOverride =
  let this = new(NavParentOverride)
  let root = if root == nil: cast[NavParentOverride](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.childSize = this.io.readU1()
  this.child1 = NavParentOverride_Child.read(this.io, this.root, this)
  this.mediator2 = NavParentOverride_Mediator.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[NavParentOverride], filename: string): NavParentOverride =
  NavParentOverride.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentOverrideObj) =
  close(x.io)


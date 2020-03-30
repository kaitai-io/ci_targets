import kaitai_struct_nim_runtime
import options

type
  NavParentFalse_ParentA* = ref NavParentFalse_ParentAObj
  NavParentFalse_ParentAObj* = object
    foo*: NavParentFalse_Child
    bar*: NavParentFalse_ParentB
    io*: KaitaiStream
    root*: NavParentFalse
    parent*: NavParentFalse
  NavParentFalse_ParentB* = ref NavParentFalse_ParentBObj
  NavParentFalse_ParentBObj* = object
    foo*: NavParentFalse_Child
    io*: KaitaiStream
    root*: NavParentFalse
    parent*: ref RootObj
  NavParentFalse_Child* = ref NavParentFalse_ChildObj
  NavParentFalse_ChildObj* = object
    code*: uint8
    more*: string
    io*: KaitaiStream
    root*: NavParentFalse
    parent*: NavParentFalse_ParentA
  NavParentFalse* = ref NavParentFalseObj
  NavParentFalseObj* = object
    childSize*: uint8
    elementA*: NavParentFalse_ParentA
    elementB*: NavParentFalse_ParentB
    io*: KaitaiStream
    root*: NavParentFalse
    parent*: ref RootObj

## NavParentFalse_ParentA
proc read*(_: typedesc[NavParentFalse_ParentA], io: KaitaiStream, root: NavParentFalse, parent: NavParentFalse): NavParentFalse_ParentA =
  let this = new(NavParentFalse_ParentA)
  let root = if root == nil: cast[NavParentFalse](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.foo = NavParentFalse_Child.read(this.io, this.root, this)
  this.bar = NavParentFalse_ParentB.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[NavParentFalse_ParentA], filename: string): NavParentFalse_ParentA =
  NavParentFalse_ParentA.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentFalse_ParentAObj) =
  close(x.io)

## NavParentFalse_ParentB
proc read*(_: typedesc[NavParentFalse_ParentB], io: KaitaiStream, root: NavParentFalse, parent: ref RootObj): NavParentFalse_ParentB =
  let this = new(NavParentFalse_ParentB)
  let root = if root == nil: cast[NavParentFalse](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.foo = NavParentFalse_Child.read(this.io, this.root, nil)
  result = this

proc fromFile*(_: typedesc[NavParentFalse_ParentB], filename: string): NavParentFalse_ParentB =
  NavParentFalse_ParentB.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentFalse_ParentBObj) =
  close(x.io)

## NavParentFalse_Child
proc read*(_: typedesc[NavParentFalse_Child], io: KaitaiStream, root: NavParentFalse, parent: NavParentFalse_ParentA): NavParentFalse_Child =
  let this = new(NavParentFalse_Child)
  let root = if root == nil: cast[NavParentFalse](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.code = this.io.readU1()
  if this.code == 73:
    this.more = this.io.readBytes(int(this.parent.parent.childSize))
  result = this

proc fromFile*(_: typedesc[NavParentFalse_Child], filename: string): NavParentFalse_Child =
  NavParentFalse_Child.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentFalse_ChildObj) =
  close(x.io)

## NavParentFalse
proc read*(_: typedesc[NavParentFalse], io: KaitaiStream, root: NavParentFalse, parent: ref RootObj): NavParentFalse =
  let this = new(NavParentFalse)
  let root = if root == nil: cast[NavParentFalse](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.childSize = this.io.readU1()
  this.elementA = NavParentFalse_ParentA.read(this.io, this.root, this)
  this.elementB = NavParentFalse_ParentB.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[NavParentFalse], filename: string): NavParentFalse =
  NavParentFalse.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentFalseObj) =
  close(x.io)


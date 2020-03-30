import kaitai_struct_nim_runtime
import options

type
  NavParentFalse2_Child* = ref NavParentFalse2_ChildObj
  NavParentFalse2_ChildObj* = object
    foo*: uint8
    io*: KaitaiStream
    root*: NavParentFalse2
    parent*: ref RootObj
  NavParentFalse2* = ref NavParentFalse2Obj
  NavParentFalse2Obj* = object
    parentless*: NavParentFalse2_Child
    io*: KaitaiStream
    root*: NavParentFalse2
    parent*: ref RootObj

### NavParentFalse2_Child ###
proc read*(_: typedesc[NavParentFalse2_Child], io: KaitaiStream, root: NavParentFalse2, parent: ref RootObj): NavParentFalse2_Child =
  let this = new(NavParentFalse2_Child)
  let root = if root == nil: cast[NavParentFalse2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let foo = this.io.readU1()
  this.foo = foo
  result = this

proc fromFile*(_: typedesc[NavParentFalse2_Child], filename: string): NavParentFalse2_Child =
  NavParentFalse2_Child.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentFalse2_ChildObj) =
  close(x.io)

### NavParentFalse2 ###
proc read*(_: typedesc[NavParentFalse2], io: KaitaiStream, root: NavParentFalse2, parent: ref RootObj): NavParentFalse2 =
  let this = new(NavParentFalse2)
  let root = if root == nil: cast[NavParentFalse2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let parentless = NavParentFalse2_Child.read(this.io, this.root, nil)
  this.parentless = parentless
  result = this

proc fromFile*(_: typedesc[NavParentFalse2], filename: string): NavParentFalse2 =
  NavParentFalse2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentFalse2Obj) =
  close(x.io)


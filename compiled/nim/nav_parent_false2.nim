import kaitai_struct_nim_runtime

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
  result = new(NavParentFalse2_Child)
  let root = if root == nil: cast[NavParentFalse2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let foo = io.readU1()
  result.foo = foo

proc fromFile*(_: typedesc[NavParentFalse2_Child], filename: string): NavParentFalse2_Child =
  NavParentFalse2_Child.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentFalse2_ChildObj) =
  close(x.io)

### NavParentFalse2 ###
proc read*(_: typedesc[NavParentFalse2], io: KaitaiStream, root: NavParentFalse2, parent: ref RootObj): NavParentFalse2 =
  result = new(NavParentFalse2)
  let root = if root == nil: cast[NavParentFalse2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let parentless = NavParentFalse2_Child.read(io, nil, root)
  result.parentless = parentless

proc fromFile*(_: typedesc[NavParentFalse2], filename: string): NavParentFalse2 =
  NavParentFalse2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentFalse2Obj) =
  close(x.io)


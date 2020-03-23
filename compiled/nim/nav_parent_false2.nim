import kaitai_struct_nim_runtime

type
  NavParentFalse2child* = ref NavParentFalse2childObj
  NavParentFalse2childObj* = object
    parentless*: Child
    io*: KaitaiStream
    root*: NavParentFalse2
    parent*: ref RootObj
  NavParentFalse2* = ref NavParentFalse2Obj
  NavParentFalse2Obj* = object
    parentless*: Child
    io*: KaitaiStream
    root*: NavParentFalse2
    parent*: ref RootObj

### NavParentFalse2child ###
proc read*(_: typedesc[NavParentFalse2child], io: KaitaiStream, root: NavParentFalse2, parent: ref RootObj): NavParentFalse2child =
  result = new(NavParentFalse2child)
  let root = if root == nil: cast[NavParentFalse2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.foo = result.io.readU1()

proc fromFile*(_: typedesc[NavParentFalse2child], filename: string): NavParentFalse2child =
  NavParentFalse2child.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentFalse2childObj) =
  close(x.io)

### NavParentFalse2 ###
proc read*(_: typedesc[NavParentFalse2], io: KaitaiStream, root: NavParentFalse2, parent: ref RootObj): NavParentFalse2 =
  result = new(NavParentFalse2)
  let root = if root == nil: cast[NavParentFalse2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.parentless = Child.read(result.io, nil, root)

proc fromFile*(_: typedesc[NavParentFalse2], filename: string): NavParentFalse2 =
  NavParentFalse2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentFalse2Obj) =
  close(x.io)


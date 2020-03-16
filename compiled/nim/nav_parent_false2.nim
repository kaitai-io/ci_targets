import ../../../runtime/nim/kaitai_struct_nim_runtime



type
  Child* = ref ChildObj
  ChildObj* = object
    io: KaitaiStream
    root*: NavParentFalse2
    parent*: ref RootObj
    foo*: uint8
  NavParentFalse2* = ref NavParentFalse2Obj
  NavParentFalse2Obj* = object
    io: KaitaiStream
    root*: NavParentFalse2
    parent*: ref RootObj
    parentless*: Child

# Child
proc read*(_: typedesc[Child], io: KaitaiStream, root: NavParentFalse2, parent: ref RootObj): owned Child =
  result = new(Child)
  let root = if root == nil: cast[NavParentFalse2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let foo = readU1(io)
  result.foo = foo


proc fromFile*(_: typedesc[Child], filename: string): owned Child =
  Child.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ChildObj) =
  close(x.io)

# NavParentFalse2
proc read*(_: typedesc[NavParentFalse2], io: KaitaiStream, root: NavParentFalse2, parent: ref RootObj): owned NavParentFalse2 =
  result = new(NavParentFalse2)
  let root = if root == nil: cast[NavParentFalse2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let parentless = Child.read(io, root, nil)
  result.parentless = parentless


proc fromFile*(_: typedesc[NavParentFalse2], filename: string): owned NavParentFalse2 =
  NavParentFalse2.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var NavParentFalse2Obj) =
  close(x.io)


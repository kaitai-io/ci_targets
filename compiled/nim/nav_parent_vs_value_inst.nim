import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  NavParentVsValueInst* = ref object of KaitaiStruct
    s1*: string
    child*: NavParentVsValueInst_ChildObj
    parent*: KaitaiStruct
  NavParentVsValueInst_ChildObj* = ref object of KaitaiStruct
    parent*: NavParentVsValueInst
    doSomethingInst*: Option[bool]

proc read*(_: typedesc[NavParentVsValueInst], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentVsValueInst
proc read*(_: typedesc[NavParentVsValueInst_ChildObj], io: KaitaiStream, root: KaitaiStruct, parent: NavParentVsValueInst): NavParentVsValueInst_ChildObj

proc doSomething*(this: NavParentVsValueInst_ChildObj): bool

proc read*(_: typedesc[NavParentVsValueInst], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentVsValueInst =
  template this: untyped = result
  this = new(NavParentVsValueInst)
  let root = if root == nil: cast[NavParentVsValueInst](this) else: cast[NavParentVsValueInst](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.s1 = encode(this.io.readBytesTerm(124, false, true, true), "UTF-8")
  this.child = NavParentVsValueInst_ChildObj.read(this.io, this.root, this)

proc fromFile*(_: typedesc[NavParentVsValueInst], filename: string): NavParentVsValueInst =
  NavParentVsValueInst.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParentVsValueInst_ChildObj], io: KaitaiStream, root: KaitaiStruct, parent: NavParentVsValueInst): NavParentVsValueInst_ChildObj =
  template this: untyped = result
  this = new(NavParentVsValueInst_ChildObj)
  let root = if root == nil: cast[NavParentVsValueInst](this) else: cast[NavParentVsValueInst](root)
  this.io = io
  this.root = root
  this.parent = parent


proc doSomething(this: NavParentVsValueInst_ChildObj): bool = 
  if isSome(this.doSomethingInst):
    return get(this.doSomethingInst)
  this.doSomethingInst = bool((if this.parent.s1 == "foo": true else: false))
  if isSome(this.doSomethingInst):
    return get(this.doSomethingInst)

proc fromFile*(_: typedesc[NavParentVsValueInst_ChildObj], filename: string): NavParentVsValueInst_ChildObj =
  NavParentVsValueInst_ChildObj.read(newKaitaiFileStream(filename), nil, nil)


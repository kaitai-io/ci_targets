import kaitai_struct_nim_runtime
import options
import encodings

type
  NavParentVsValueInst_ChildObj* = ref NavParentVsValueInst_ChildObjObj
  NavParentVsValueInst_ChildObjObj* = object
    io*: KaitaiStream
    root*: NavParentVsValueInst
    parent*: NavParentVsValueInst
    doSomethingInst*: Option[bool]
  NavParentVsValueInst* = ref NavParentVsValueInstObj
  NavParentVsValueInstObj* = object
    s1*: string
    child*: NavParentVsValueInst_ChildObj
    io*: KaitaiStream
    root*: NavParentVsValueInst
    parent*: ref RootObj

## NavParentVsValueInst_ChildObj
proc doSomething*(this: NavParentVsValueInst_ChildObj): bool
proc doSomething(this: NavParentVsValueInst_ChildObj): bool = 
  if isSome(this.doSomethingInst):
    return get(this.doSomethingInst)
  this.doSomethingInst = some((if this.parent.s1 == "foo": true else: false))
  return get(this.doSomethingInst)

proc read*(_: typedesc[NavParentVsValueInst_ChildObj], io: KaitaiStream, root: NavParentVsValueInst, parent: NavParentVsValueInst): NavParentVsValueInst_ChildObj =
  let this = new(NavParentVsValueInst_ChildObj)
  let root = if root == nil: cast[NavParentVsValueInst](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[NavParentVsValueInst_ChildObj], filename: string): NavParentVsValueInst_ChildObj =
  NavParentVsValueInst_ChildObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentVsValueInst_ChildObjObj) =
  close(x.io)

## NavParentVsValueInst
proc read*(_: typedesc[NavParentVsValueInst], io: KaitaiStream, root: NavParentVsValueInst, parent: ref RootObj): NavParentVsValueInst =
  let this = new(NavParentVsValueInst)
  let root = if root == nil: cast[NavParentVsValueInst](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.s1 = convert(this.io.readBytesTerm(124, false, true, true), srcEncoding = "UTF-8")
  this.child = NavParentVsValueInst_ChildObj.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[NavParentVsValueInst], filename: string): NavParentVsValueInst =
  NavParentVsValueInst.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentVsValueInstObj) =
  close(x.io)


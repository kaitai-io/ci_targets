import kaitai_struct_nim_runtime
import encodings

type
  NavParentVsValueInst_ChildObj* = ref NavParentVsValueInst_ChildObjObj
  NavParentVsValueInst_ChildObjObj* = object
    io*: KaitaiStream
    root*: NavParentVsValueInst
    parent*: NavParentVsValueInst
  NavParentVsValueInst* = ref NavParentVsValueInstObj
  NavParentVsValueInstObj* = object
    s1*: string
    child*: NavParentVsValueInst_ChildObj
    io*: KaitaiStream
    root*: NavParentVsValueInst
    parent*: ref RootObj

### NavParentVsValueInst_ChildObj ###
proc read*(_: typedesc[NavParentVsValueInst_ChildObj], io: KaitaiStream, root: NavParentVsValueInst, parent: NavParentVsValueInst): NavParentVsValueInst_ChildObj =
  result = new(NavParentVsValueInst_ChildObj)
  let root = if root == nil: cast[NavParentVsValueInst](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[NavParentVsValueInst_ChildObj], filename: string): NavParentVsValueInst_ChildObj =
  NavParentVsValueInst_ChildObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentVsValueInst_ChildObjObj) =
  close(x.io)

### NavParentVsValueInst ###
proc read*(_: typedesc[NavParentVsValueInst], io: KaitaiStream, root: NavParentVsValueInst, parent: ref RootObj): NavParentVsValueInst =
  result = new(NavParentVsValueInst)
  let root = if root == nil: cast[NavParentVsValueInst](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let s1 = convert(io.readBytesTerm(124, false, true, true), srcEncoding = "UTF-8")
  result.s1 = s1
  let child = NavParentVsValueInst_ChildObj.read(io, result, root)
  result.child = child

proc fromFile*(_: typedesc[NavParentVsValueInst], filename: string): NavParentVsValueInst =
  NavParentVsValueInst.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentVsValueInstObj) =
  close(x.io)


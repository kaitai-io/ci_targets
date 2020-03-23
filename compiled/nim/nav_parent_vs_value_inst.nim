import kaitai_struct_nim_runtime
import encodings

type
  NavParentVsValueInstchildObj* = ref NavParentVsValueInstchildObjObj
  NavParentVsValueInstchildObjObj* = object
    s1*: string
    child*: ChildObj
    io*: KaitaiStream
    root*: NavParentVsValueInst
    parent*: ref RootObj
  NavParentVsValueInst* = ref NavParentVsValueInstObj
  NavParentVsValueInstObj* = object
    s1*: string
    child*: ChildObj
    io*: KaitaiStream
    root*: NavParentVsValueInst
    parent*: ref RootObj

### NavParentVsValueInstchildObj ###
proc read*(_: typedesc[NavParentVsValueInstchildObj], io: KaitaiStream, root: NavParentVsValueInst, parent: NavParentVsValueInst): NavParentVsValueInstchildObj =
  result = new(NavParentVsValueInstchildObj)
  let root = if root == nil: cast[NavParentVsValueInst](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[NavParentVsValueInstchildObj], filename: string): NavParentVsValueInstchildObj =
  NavParentVsValueInstchildObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentVsValueInstchildObjObj) =
  close(x.io)

### NavParentVsValueInst ###
proc read*(_: typedesc[NavParentVsValueInst], io: KaitaiStream, root: NavParentVsValueInst, parent: ref RootObj): NavParentVsValueInst =
  result = new(NavParentVsValueInst)
  let root = if root == nil: cast[NavParentVsValueInst](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.s1 = convert(result.io.readBytesTerm(124, false, true, true), srcEncoding = "UTF-8")
  result.child = ChildObj.read(result.io, result, root)

proc fromFile*(_: typedesc[NavParentVsValueInst], filename: string): NavParentVsValueInst =
  NavParentVsValueInst.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentVsValueInstObj) =
  close(x.io)


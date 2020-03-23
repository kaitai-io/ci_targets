import kaitai_struct_nim_runtime

type
  JsSignedRightShift* = ref JsSignedRightShiftObj
  JsSignedRightShiftObj* = object
    io*: KaitaiStream
    root*: JsSignedRightShift
    parent*: ref RootObj

### JsSignedRightShift ###
proc read*(_: typedesc[JsSignedRightShift], io: KaitaiStream, root: JsSignedRightShift, parent: ref RootObj): JsSignedRightShift =
  result = new(JsSignedRightShift)
  let root = if root == nil: cast[JsSignedRightShift](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[JsSignedRightShift], filename: string): JsSignedRightShift =
  JsSignedRightShift.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var JsSignedRightShiftObj) =
  close(x.io)


import ../../runtime/nim/kaitai
import options

{.experimental: "dotOperators".}

type
  JsSignedRightShift* = ref JsSignedRightShiftObj
  JsSignedRightShiftObj* = object
    io: KaitaiStream
    root*: JsSignedRightShift
    parent*: ref RootObj
    shouldBe40000000Inst: proc(): int
    shouldBeA00000Inst: proc(): int

# JsSignedRightShift
template `.`*(a: JsSignedRightShift, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[JsSignedRightShift], io: KaitaiStream, root: JsSignedRightShift, parent: ref RootObj): owned JsSignedRightShift =
  result = new(JsSignedRightShift)
  let root = if root == nil: cast[JsSignedRightShift](result) else: root
  result.io = io
  result.root = root
  result.parent = parent


proc fromFile*(_: typedesc[JsSignedRightShift], filename: string): owned JsSignedRightShift =
  JsSignedRightShift.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var JsSignedRightShiftObj) =
  close(x.io)


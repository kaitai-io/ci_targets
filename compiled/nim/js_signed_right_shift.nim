import kaitai_struct_nim_runtime
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


  var shouldBe40000000Val: Option[int]
  let shouldBe40000000 = proc(): int =
    if isNone(shouldBe40000000Val):
      shouldBe40000000Val = some(int((2147483648'u32 shr 1)))
    get(shouldBe40000000Val)
  result.shouldBe40000000Inst = shouldBe40000000
  var shouldBeA00000Val: Option[int]
  let shouldBeA00000 = proc(): int =
    if isNone(shouldBeA00000Val):
      shouldBeA00000Val = some(int((2684354560'u32 shr 8)))
    get(shouldBeA00000Val)
  result.shouldBeA00000Inst = shouldBeA00000

proc fromFile*(_: typedesc[JsSignedRightShift], filename: string): owned JsSignedRightShift =
  JsSignedRightShift.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var JsSignedRightShiftObj) =
  close(x.io)


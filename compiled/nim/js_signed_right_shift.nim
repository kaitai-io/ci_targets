import kaitai_struct_nim_runtime
import options

type
  JsSignedRightShift* = ref JsSignedRightShiftObj
  JsSignedRightShiftObj* = object
    io*: KaitaiStream
    root*: JsSignedRightShift
    parent*: ref RootObj
    shouldBe40000000Inst*: Option[int]
    shouldBeA00000Inst*: Option[int]

## JsSignedRightShift
proc shouldBe40000000*(this: JsSignedRightShift): int
proc shouldBeA00000*(this: JsSignedRightShift): int
proc shouldBe40000000(this: JsSignedRightShift): int = 
  if isSome(this.shouldBe40000000Inst):
    return get(this.shouldBe40000000Inst)
  this.shouldBe40000000Inst = some((2147483648'u32 shr 1))
  return get(this.shouldBe40000000Inst)

proc shouldBeA00000(this: JsSignedRightShift): int = 
  if isSome(this.shouldBeA00000Inst):
    return get(this.shouldBeA00000Inst)
  this.shouldBeA00000Inst = some((2684354560'u32 shr 8))
  return get(this.shouldBeA00000Inst)

proc read*(_: typedesc[JsSignedRightShift], io: KaitaiStream, root: JsSignedRightShift, parent: ref RootObj): JsSignedRightShift =
  let this = new(JsSignedRightShift)
  let root = if root == nil: cast[JsSignedRightShift](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[JsSignedRightShift], filename: string): JsSignedRightShift =
  JsSignedRightShift.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var JsSignedRightShiftObj) =
  close(x.io)


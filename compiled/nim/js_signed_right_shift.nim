import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  JsSignedRightShift* = ref object of KaitaiStruct
    parent*: KaitaiStruct
    shouldBe40000000Inst*: Option[int]
    shouldBeA00000Inst*: Option[int]

proc read*(_: typedesc[JsSignedRightShift], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): JsSignedRightShift

proc shouldBe40000000*(this: JsSignedRightShift): int
proc shouldBeA00000*(this: JsSignedRightShift): int

proc read*(_: typedesc[JsSignedRightShift], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): JsSignedRightShift =
  template this: untyped = result
  this = new(JsSignedRightShift)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


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

proc fromFile*(_: typedesc[JsSignedRightShift], filename: string): JsSignedRightShift =
  JsSignedRightShift.read(newKaitaiFileStream(filename), nil, nil)


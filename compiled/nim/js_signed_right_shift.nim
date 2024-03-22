import kaitai_struct_nim_runtime
import options

type
  JsSignedRightShift* = ref object of KaitaiStruct
    `parent`*: KaitaiStruct
    `shouldBe40000000Inst`: int
    `shouldBe40000000InstFlag`: bool
    `shouldBeA00000Inst`: int
    `shouldBeA00000InstFlag`: bool

proc read*(_: typedesc[JsSignedRightShift], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): JsSignedRightShift

proc shouldBe40000000*(this: JsSignedRightShift): int
proc shouldBeA00000*(this: JsSignedRightShift): int

proc read*(_: typedesc[JsSignedRightShift], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): JsSignedRightShift =
  template this: untyped = result
  this = new(JsSignedRightShift)
  let root = if root == nil: cast[JsSignedRightShift](this) else: cast[JsSignedRightShift](root)
  this.io = io
  this.root = root
  this.parent = parent


proc shouldBe40000000(this: JsSignedRightShift): int = 
  if this.shouldBe40000000InstFlag:
    return this.shouldBe40000000Inst
  let shouldBe40000000InstExpr = int(2147483648'i64 shr 1)
  this.shouldBe40000000Inst = shouldBe40000000InstExpr
  this.shouldBe40000000InstFlag = true
  return this.shouldBe40000000Inst

proc shouldBeA00000(this: JsSignedRightShift): int = 
  if this.shouldBeA00000InstFlag:
    return this.shouldBeA00000Inst
  let shouldBeA00000InstExpr = int(2684354560'i64 shr 8)
  this.shouldBeA00000Inst = shouldBeA00000InstExpr
  this.shouldBeA00000InstFlag = true
  return this.shouldBeA00000Inst

proc fromFile*(_: typedesc[JsSignedRightShift], filename: string): JsSignedRightShift =
  JsSignedRightShift.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  BitsByteAligned* = ref object of KaitaiStruct
    `one`*: uint64
    `byte1`*: uint8
    `two`*: uint64
    `three`*: bool
    `byte2`*: seq[byte]
    `four`*: uint64
    `byte3`*: BitsByteAligned_Foo
    `fullByte`*: uint64
    `byte4`*: uint8
    `five`*: uint64
    `bytesTerm`*: seq[byte]
    `six`*: uint64
    `parent`*: KaitaiStruct
    `rawByte3`*: seq[byte]
  BitsByteAligned_Foo* = ref object of KaitaiStruct
    `inner`*: uint64
    `parent`*: BitsByteAligned

proc read*(_: typedesc[BitsByteAligned], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsByteAligned
proc read*(_: typedesc[BitsByteAligned_Foo], io: KaitaiStream, root: KaitaiStruct, parent: BitsByteAligned): BitsByteAligned_Foo


proc read*(_: typedesc[BitsByteAligned], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsByteAligned =
  template this: untyped = result
  this = new(BitsByteAligned)
  let root = if root == nil: cast[BitsByteAligned](this) else: cast[BitsByteAligned](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = this.io.readBitsIntBe(6)
  this.one = oneExpr
  let byte1Expr = this.io.readU1()
  this.byte1 = byte1Expr
  let twoExpr = this.io.readBitsIntBe(3)
  this.two = twoExpr
  let threeExpr = this.io.readBitsIntBe(1) != 0
  this.three = threeExpr
  let byte2Expr = this.io.readBytes(int(1))
  this.byte2 = byte2Expr
  let fourExpr = this.io.readBitsIntBe(14)
  this.four = fourExpr
  let rawByte3Expr = this.io.readBytes(int(3))
  this.rawByte3 = rawByte3Expr
  let rawByte3Io = newKaitaiStream(rawByte3Expr)
  let byte3Expr = BitsByteAligned_Foo.read(rawByte3Io, this.root, this)
  this.byte3 = byte3Expr
  let fullByteExpr = this.io.readBitsIntBe(8)
  this.fullByte = fullByteExpr
  let byte4Expr = this.io.readU1()
  this.byte4 = byte4Expr
  let fiveExpr = this.io.readBitsIntBe(22)
  this.five = fiveExpr
  let bytesTermExpr = this.io.readBytesTerm(69, true, true, true)
  this.bytesTerm = bytesTermExpr
  let sixExpr = this.io.readBitsIntBe(8)
  this.six = sixExpr

proc fromFile*(_: typedesc[BitsByteAligned], filename: string): BitsByteAligned =
  BitsByteAligned.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[BitsByteAligned_Foo], io: KaitaiStream, root: KaitaiStruct, parent: BitsByteAligned): BitsByteAligned_Foo =
  template this: untyped = result
  this = new(BitsByteAligned_Foo)
  let root = if root == nil: cast[BitsByteAligned](this) else: cast[BitsByteAligned](root)
  this.io = io
  this.root = root
  this.parent = parent

  let innerExpr = this.io.readBitsIntBe(19)
  this.inner = innerExpr

proc fromFile*(_: typedesc[BitsByteAligned_Foo], filename: string): BitsByteAligned_Foo =
  BitsByteAligned_Foo.read(newKaitaiFileStream(filename), nil, nil)


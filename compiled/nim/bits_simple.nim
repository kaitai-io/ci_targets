import kaitai_struct_nim_runtime
import options

type
  BitsSimple* = ref object of KaitaiStruct
    `byte1`*: uint64
    `byte2`*: uint64
    `bitsA`*: bool
    `bitsB`*: uint64
    `bitsC`*: uint64
    `largeBits1`*: uint64
    `spacer`*: uint64
    `largeBits2`*: uint64
    `normalS2`*: int16
    `byte8910`*: uint64
    `byte11To14`*: uint64
    `byte15To19`*: uint64
    `byte20To27`*: uint64
    `parent`*: KaitaiStruct
    `testIfB1Inst`: int8
    `testIfB1InstFlag`: bool

proc read*(_: typedesc[BitsSimple], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsSimple

proc testIfB1*(this: BitsSimple): int8

proc read*(_: typedesc[BitsSimple], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsSimple =
  template this: untyped = result
  this = new(BitsSimple)
  let root = if root == nil: cast[BitsSimple](this) else: cast[BitsSimple](root)
  this.io = io
  this.root = root
  this.parent = parent

  let byte1Expr = this.io.readBitsIntBe(8)
  this.byte1 = byte1Expr
  let byte2Expr = this.io.readBitsIntBe(8)
  this.byte2 = byte2Expr
  let bitsAExpr = this.io.readBitsIntBe(1) != 0
  this.bitsA = bitsAExpr
  let bitsBExpr = this.io.readBitsIntBe(3)
  this.bitsB = bitsBExpr
  let bitsCExpr = this.io.readBitsIntBe(4)
  this.bitsC = bitsCExpr
  let largeBits1Expr = this.io.readBitsIntBe(10)
  this.largeBits1 = largeBits1Expr
  let spacerExpr = this.io.readBitsIntBe(3)
  this.spacer = spacerExpr
  let largeBits2Expr = this.io.readBitsIntBe(11)
  this.largeBits2 = largeBits2Expr
  alignToByte(this.io)
  let normalS2Expr = this.io.readS2be()
  this.normalS2 = normalS2Expr
  let byte8910Expr = this.io.readBitsIntBe(24)
  this.byte8910 = byte8910Expr
  let byte11To14Expr = this.io.readBitsIntBe(32)
  this.byte11To14 = byte11To14Expr
  let byte15To19Expr = this.io.readBitsIntBe(40)
  this.byte15To19 = byte15To19Expr
  let byte20To27Expr = this.io.readBitsIntBe(64)
  this.byte20To27 = byte20To27Expr

proc testIfB1(this: BitsSimple): int8 = 
  if this.testIfB1InstFlag:
    return this.testIfB1Inst
  if this.bitsA == false:
    let testIfB1InstExpr = int8(123)
    this.testIfB1Inst = testIfB1InstExpr
  this.testIfB1InstFlag = true
  return this.testIfB1Inst

proc fromFile*(_: typedesc[BitsSimple], filename: string): BitsSimple =
  BitsSimple.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  BitsSeqEndianCombo* = ref object of KaitaiStruct
    `be1`*: uint64
    `be2`*: uint64
    `le3`*: uint64
    `be4`*: uint64
    `le5`*: uint64
    `le6`*: uint64
    `le7`*: uint64
    `be8`*: bool
    `parent`*: KaitaiStruct

proc read*(_: typedesc[BitsSeqEndianCombo], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsSeqEndianCombo


proc read*(_: typedesc[BitsSeqEndianCombo], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsSeqEndianCombo =
  template this: untyped = result
  this = new(BitsSeqEndianCombo)
  let root = if root == nil: cast[BitsSeqEndianCombo](this) else: cast[BitsSeqEndianCombo](root)
  this.io = io
  this.root = root
  this.parent = parent

  let be1Expr = this.io.readBitsIntBe(6)
  this.be1 = be1Expr
  let be2Expr = this.io.readBitsIntBe(10)
  this.be2 = be2Expr
  let le3Expr = this.io.readBitsIntLe(8)
  this.le3 = le3Expr
  let be4Expr = this.io.readBitsIntBe(8)
  this.be4 = be4Expr
  let le5Expr = this.io.readBitsIntLe(5)
  this.le5 = le5Expr
  let le6Expr = this.io.readBitsIntLe(6)
  this.le6 = le6Expr
  let le7Expr = this.io.readBitsIntLe(5)
  this.le7 = le7Expr
  let be8Expr = this.io.readBitsIntBe(1) != 0
  this.be8 = be8Expr

proc fromFile*(_: typedesc[BitsSeqEndianCombo], filename: string): BitsSeqEndianCombo =
  BitsSeqEndianCombo.read(newKaitaiFileStream(filename), nil, nil)


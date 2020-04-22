import kaitai_struct_nim_runtime
import options

type
  BitsByteAligned* = ref object of KaitaiStruct
    one*: uint64
    byte1*: uint8
    two*: uint64
    three*: bool
    byte2*: uint8
    four*: uint64
    byte3*: seq[byte]
    fullByte*: uint64
    byte4*: uint8
    parent*: KaitaiStruct

proc read*(_: typedesc[BitsByteAligned], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsByteAligned


proc read*(_: typedesc[BitsByteAligned], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsByteAligned =
  template this: untyped = result
  this = new(BitsByteAligned)
  let root = if root == nil: cast[BitsByteAligned](this) else: cast[BitsByteAligned](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = this.io.readBitsInt(6)
  this.one = oneExpr
  alignToByte(this.io)
  let byte1Expr = this.io.readU1()
  this.byte1 = byte1Expr
  let twoExpr = this.io.readBitsInt(3)
  this.two = twoExpr
  let threeExpr = this.io.readBitsInt(1) != 0
  this.three = threeExpr
  alignToByte(this.io)
  let byte2Expr = this.io.readU1()
  this.byte2 = byte2Expr
  let fourExpr = this.io.readBitsInt(14)
  this.four = fourExpr
  alignToByte(this.io)
  let byte3Expr = this.io.readBytes(int(1))
  this.byte3 = byte3Expr
  let fullByteExpr = this.io.readBitsInt(8)
  this.fullByte = fullByteExpr
  alignToByte(this.io)
  let byte4Expr = this.io.readU1()
  this.byte4 = byte4Expr

proc fromFile*(_: typedesc[BitsByteAligned], filename: string): BitsByteAligned =
  BitsByteAligned.read(newKaitaiFileStream(filename), nil, nil)


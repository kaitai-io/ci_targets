import kaitai_struct_nim_runtime
import options

type
  BitsSignedB64Le* = ref object of KaitaiStruct
    `aNum`*: uint64
    `aBit`*: bool
    `bNum`*: uint64
    `bBit`*: bool
    `parent`*: KaitaiStruct

proc read*(_: typedesc[BitsSignedB64Le], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsSignedB64Le


proc read*(_: typedesc[BitsSignedB64Le], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsSignedB64Le =
  template this: untyped = result
  this = new(BitsSignedB64Le)
  let root = if root == nil: cast[BitsSignedB64Le](this) else: cast[BitsSignedB64Le](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aNumExpr = this.io.readBitsIntLe(63)
  this.aNum = aNumExpr
  let aBitExpr = this.io.readBitsIntLe(1) != 0
  this.aBit = aBitExpr
  let bNumExpr = this.io.readBitsIntLe(63)
  this.bNum = bNumExpr
  let bBitExpr = this.io.readBitsIntLe(1) != 0
  this.bBit = bBitExpr

proc fromFile*(_: typedesc[BitsSignedB64Le], filename: string): BitsSignedB64Le =
  BitsSignedB64Le.read(newKaitaiFileStream(filename), nil, nil)


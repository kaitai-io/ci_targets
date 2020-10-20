import kaitai_struct_nim_runtime
import options

type
  BitsSignedB32Le* = ref object of KaitaiStruct
    `aNum`*: uint64
    `aBit`*: bool
    `bNum`*: uint64
    `bBit`*: bool
    `parent`*: KaitaiStruct

proc read*(_: typedesc[BitsSignedB32Le], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsSignedB32Le


proc read*(_: typedesc[BitsSignedB32Le], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsSignedB32Le =
  template this: untyped = result
  this = new(BitsSignedB32Le)
  let root = if root == nil: cast[BitsSignedB32Le](this) else: cast[BitsSignedB32Le](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aNumExpr = this.io.readBitsIntLe(31)
  this.aNum = aNumExpr
  let aBitExpr = this.io.readBitsIntLe(1) != 0
  this.aBit = aBitExpr
  let bNumExpr = this.io.readBitsIntLe(31)
  this.bNum = bNumExpr
  let bBitExpr = this.io.readBitsIntLe(1) != 0
  this.bBit = bBitExpr

proc fromFile*(_: typedesc[BitsSignedB32Le], filename: string): BitsSignedB32Le =
  BitsSignedB32Le.read(newKaitaiFileStream(filename), nil, nil)


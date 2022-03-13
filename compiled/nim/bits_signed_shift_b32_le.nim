import kaitai_struct_nim_runtime
import options

type
  BitsSignedShiftB32Le* = ref object of KaitaiStruct
    `a`*: uint64
    `b`*: uint64
    `parent`*: KaitaiStruct

proc read*(_: typedesc[BitsSignedShiftB32Le], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsSignedShiftB32Le


proc read*(_: typedesc[BitsSignedShiftB32Le], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsSignedShiftB32Le =
  template this: untyped = result
  this = new(BitsSignedShiftB32Le)
  let root = if root == nil: cast[BitsSignedShiftB32Le](this) else: cast[BitsSignedShiftB32Le](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aExpr = this.io.readBitsIntLe(31)
  this.a = aExpr
  let bExpr = this.io.readBitsIntLe(9)
  this.b = bExpr

proc fromFile*(_: typedesc[BitsSignedShiftB32Le], filename: string): BitsSignedShiftB32Le =
  BitsSignedShiftB32Le.read(newKaitaiFileStream(filename), nil, nil)


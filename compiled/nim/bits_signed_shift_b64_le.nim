import kaitai_struct_nim_runtime
import options

type
  BitsSignedShiftB64Le* = ref object of KaitaiStruct
    `a`*: uint64
    `b`*: uint64
    `parent`*: KaitaiStruct

proc read*(_: typedesc[BitsSignedShiftB64Le], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsSignedShiftB64Le


proc read*(_: typedesc[BitsSignedShiftB64Le], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsSignedShiftB64Le =
  template this: untyped = result
  this = new(BitsSignedShiftB64Le)
  let root = if root == nil: cast[BitsSignedShiftB64Le](this) else: cast[BitsSignedShiftB64Le](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aExpr = this.io.readBitsIntLe(63)
  this.a = aExpr
  let bExpr = this.io.readBitsIntLe(9)
  this.b = bExpr

proc fromFile*(_: typedesc[BitsSignedShiftB64Le], filename: string): BitsSignedShiftB64Le =
  BitsSignedShiftB64Le.read(newKaitaiFileStream(filename), nil, nil)


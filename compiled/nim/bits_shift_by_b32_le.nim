import kaitai_struct_nim_runtime
import options

type
  BitsShiftByB32Le* = ref object of KaitaiStruct
    `a`*: uint64
    `b`*: uint64
    `parent`*: KaitaiStruct

proc read*(_: typedesc[BitsShiftByB32Le], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsShiftByB32Le


proc read*(_: typedesc[BitsShiftByB32Le], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsShiftByB32Le =
  template this: untyped = result
  this = new(BitsShiftByB32Le)
  let root = if root == nil: cast[BitsShiftByB32Le](this) else: cast[BitsShiftByB32Le](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aExpr = this.io.readBitsIntLe(32)
  this.a = aExpr
  let bExpr = this.io.readBitsIntLe(8)
  this.b = bExpr

proc fromFile*(_: typedesc[BitsShiftByB32Le], filename: string): BitsShiftByB32Le =
  BitsShiftByB32Le.read(newKaitaiFileStream(filename), nil, nil)


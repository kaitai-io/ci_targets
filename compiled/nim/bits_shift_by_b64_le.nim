import kaitai_struct_nim_runtime
import options

type
  BitsShiftByB64Le* = ref object of KaitaiStruct
    `a`*: uint64
    `b`*: uint64
    `parent`*: KaitaiStruct

proc read*(_: typedesc[BitsShiftByB64Le], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsShiftByB64Le


proc read*(_: typedesc[BitsShiftByB64Le], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsShiftByB64Le =
  template this: untyped = result
  this = new(BitsShiftByB64Le)
  let root = if root == nil: cast[BitsShiftByB64Le](this) else: cast[BitsShiftByB64Le](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aExpr = this.io.readBitsIntLe(64)
  this.a = aExpr
  let bExpr = this.io.readBitsIntLe(8)
  this.b = bExpr

proc fromFile*(_: typedesc[BitsShiftByB64Le], filename: string): BitsShiftByB64Le =
  BitsShiftByB64Le.read(newKaitaiFileStream(filename), nil, nil)


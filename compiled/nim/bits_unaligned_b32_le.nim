import kaitai_struct_nim_runtime
import options

type
  BitsUnalignedB32Le* = ref object of KaitaiStruct
    `a`*: bool
    `b`*: uint64
    `c`*: uint64
    `parent`*: KaitaiStruct

proc read*(_: typedesc[BitsUnalignedB32Le], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsUnalignedB32Le


proc read*(_: typedesc[BitsUnalignedB32Le], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsUnalignedB32Le =
  template this: untyped = result
  this = new(BitsUnalignedB32Le)
  let root = if root == nil: cast[BitsUnalignedB32Le](this) else: cast[BitsUnalignedB32Le](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aExpr = this.io.readBitsIntLe(1) != 0
  this.a = aExpr
  let bExpr = this.io.readBitsIntLe(32)
  this.b = bExpr
  let cExpr = this.io.readBitsIntLe(7)
  this.c = cExpr

proc fromFile*(_: typedesc[BitsUnalignedB32Le], filename: string): BitsUnalignedB32Le =
  BitsUnalignedB32Le.read(newKaitaiFileStream(filename), nil, nil)


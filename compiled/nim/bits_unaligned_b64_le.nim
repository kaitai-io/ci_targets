import kaitai_struct_nim_runtime
import options

type
  BitsUnalignedB64Le* = ref object of KaitaiStruct
    `a`*: bool
    `b`*: uint64
    `c`*: uint64
    `parent`*: KaitaiStruct

proc read*(_: typedesc[BitsUnalignedB64Le], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsUnalignedB64Le


proc read*(_: typedesc[BitsUnalignedB64Le], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsUnalignedB64Le =
  template this: untyped = result
  this = new(BitsUnalignedB64Le)
  let root = if root == nil: cast[BitsUnalignedB64Le](this) else: cast[BitsUnalignedB64Le](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aExpr = this.io.readBitsIntLe(1) != 0
  this.a = aExpr
  let bExpr = this.io.readBitsIntLe(64)
  this.b = bExpr
  let cExpr = this.io.readBitsIntLe(7)
  this.c = cExpr

proc fromFile*(_: typedesc[BitsUnalignedB64Le], filename: string): BitsUnalignedB64Le =
  BitsUnalignedB64Le.read(newKaitaiFileStream(filename), nil, nil)


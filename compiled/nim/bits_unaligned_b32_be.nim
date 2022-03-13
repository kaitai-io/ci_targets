import kaitai_struct_nim_runtime
import options

type
  BitsUnalignedB32Be* = ref object of KaitaiStruct
    `a`*: bool
    `b`*: uint64
    `c`*: uint64
    `parent`*: KaitaiStruct

proc read*(_: typedesc[BitsUnalignedB32Be], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsUnalignedB32Be


proc read*(_: typedesc[BitsUnalignedB32Be], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsUnalignedB32Be =
  template this: untyped = result
  this = new(BitsUnalignedB32Be)
  let root = if root == nil: cast[BitsUnalignedB32Be](this) else: cast[BitsUnalignedB32Be](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aExpr = this.io.readBitsIntBe(1) != 0
  this.a = aExpr
  let bExpr = this.io.readBitsIntBe(32)
  this.b = bExpr
  let cExpr = this.io.readBitsIntBe(7)
  this.c = cExpr

proc fromFile*(_: typedesc[BitsUnalignedB32Be], filename: string): BitsUnalignedB32Be =
  BitsUnalignedB32Be.read(newKaitaiFileStream(filename), nil, nil)


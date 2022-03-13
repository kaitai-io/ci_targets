import kaitai_struct_nim_runtime
import options

type
  BitsUnalignedB64Be* = ref object of KaitaiStruct
    `a`*: bool
    `b`*: uint64
    `c`*: uint64
    `parent`*: KaitaiStruct

proc read*(_: typedesc[BitsUnalignedB64Be], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsUnalignedB64Be


proc read*(_: typedesc[BitsUnalignedB64Be], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsUnalignedB64Be =
  template this: untyped = result
  this = new(BitsUnalignedB64Be)
  let root = if root == nil: cast[BitsUnalignedB64Be](this) else: cast[BitsUnalignedB64Be](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aExpr = this.io.readBitsIntBe(1) != 0
  this.a = aExpr
  let bExpr = this.io.readBitsIntBe(64)
  this.b = bExpr
  let cExpr = this.io.readBitsIntBe(7)
  this.c = cExpr

proc fromFile*(_: typedesc[BitsUnalignedB64Be], filename: string): BitsUnalignedB64Be =
  BitsUnalignedB64Be.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  BitsSignedResB32Be* = ref object of KaitaiStruct
    `a`*: uint64
    `parent`*: KaitaiStruct

proc read*(_: typedesc[BitsSignedResB32Be], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsSignedResB32Be


proc read*(_: typedesc[BitsSignedResB32Be], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsSignedResB32Be =
  template this: untyped = result
  this = new(BitsSignedResB32Be)
  let root = if root == nil: cast[BitsSignedResB32Be](this) else: cast[BitsSignedResB32Be](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aExpr = this.io.readBitsIntBe(32)
  this.a = aExpr

proc fromFile*(_: typedesc[BitsSignedResB32Be], filename: string): BitsSignedResB32Be =
  BitsSignedResB32Be.read(newKaitaiFileStream(filename), nil, nil)


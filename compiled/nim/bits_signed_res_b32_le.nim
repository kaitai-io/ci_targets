import kaitai_struct_nim_runtime
import options

type
  BitsSignedResB32Le* = ref object of KaitaiStruct
    `a`*: uint64
    `parent`*: KaitaiStruct

proc read*(_: typedesc[BitsSignedResB32Le], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsSignedResB32Le


proc read*(_: typedesc[BitsSignedResB32Le], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsSignedResB32Le =
  template this: untyped = result
  this = new(BitsSignedResB32Le)
  let root = if root == nil: cast[BitsSignedResB32Le](this) else: cast[BitsSignedResB32Le](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aExpr = this.io.readBitsIntLe(32)
  this.a = aExpr

proc fromFile*(_: typedesc[BitsSignedResB32Le], filename: string): BitsSignedResB32Le =
  BitsSignedResB32Le.read(newKaitaiFileStream(filename), nil, nil)


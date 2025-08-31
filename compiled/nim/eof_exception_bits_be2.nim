import kaitai_struct_nim_runtime
import options

type
  EofExceptionBitsBe2* = ref object of KaitaiStruct
    `preBits`*: uint64
    `failBits`*: uint64
    `parent`*: KaitaiStruct

proc read*(_: typedesc[EofExceptionBitsBe2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EofExceptionBitsBe2


proc read*(_: typedesc[EofExceptionBitsBe2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EofExceptionBitsBe2 =
  template this: untyped = result
  this = new(EofExceptionBitsBe2)
  let root = if root == nil: cast[EofExceptionBitsBe2](this) else: cast[EofExceptionBitsBe2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let preBitsExpr = this.io.readBitsIntBe(8)
  this.preBits = preBitsExpr
  let failBitsExpr = this.io.readBitsIntBe(17)
  this.failBits = failBitsExpr

proc fromFile*(_: typedesc[EofExceptionBitsBe2], filename: string): EofExceptionBitsBe2 =
  EofExceptionBitsBe2.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  EofExceptionBitsBe* = ref object of KaitaiStruct
    `preBits`*: uint64
    `failBits`*: uint64
    `parent`*: KaitaiStruct

proc read*(_: typedesc[EofExceptionBitsBe], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EofExceptionBitsBe


proc read*(_: typedesc[EofExceptionBitsBe], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EofExceptionBitsBe =
  template this: untyped = result
  this = new(EofExceptionBitsBe)
  let root = if root == nil: cast[EofExceptionBitsBe](this) else: cast[EofExceptionBitsBe](root)
  this.io = io
  this.root = root
  this.parent = parent

  let preBitsExpr = this.io.readBitsIntBe(7)
  this.preBits = preBitsExpr
  let failBitsExpr = this.io.readBitsIntBe(18)
  this.failBits = failBitsExpr

proc fromFile*(_: typedesc[EofExceptionBitsBe], filename: string): EofExceptionBitsBe =
  EofExceptionBitsBe.read(newKaitaiFileStream(filename), nil, nil)


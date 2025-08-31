import kaitai_struct_nim_runtime
import options

type
  EofExceptionBitsLe2* = ref object of KaitaiStruct
    `preBits`*: uint64
    `failBits`*: uint64
    `parent`*: KaitaiStruct

proc read*(_: typedesc[EofExceptionBitsLe2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EofExceptionBitsLe2


proc read*(_: typedesc[EofExceptionBitsLe2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EofExceptionBitsLe2 =
  template this: untyped = result
  this = new(EofExceptionBitsLe2)
  let root = if root == nil: cast[EofExceptionBitsLe2](this) else: cast[EofExceptionBitsLe2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let preBitsExpr = this.io.readBitsIntLe(8)
  this.preBits = preBitsExpr
  let failBitsExpr = this.io.readBitsIntLe(17)
  this.failBits = failBitsExpr

proc fromFile*(_: typedesc[EofExceptionBitsLe2], filename: string): EofExceptionBitsLe2 =
  EofExceptionBitsLe2.read(newKaitaiFileStream(filename), nil, nil)


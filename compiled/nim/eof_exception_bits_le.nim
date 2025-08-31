import kaitai_struct_nim_runtime
import options

type
  EofExceptionBitsLe* = ref object of KaitaiStruct
    `preBits`*: uint64
    `failBits`*: uint64
    `parent`*: KaitaiStruct

proc read*(_: typedesc[EofExceptionBitsLe], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EofExceptionBitsLe


proc read*(_: typedesc[EofExceptionBitsLe], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EofExceptionBitsLe =
  template this: untyped = result
  this = new(EofExceptionBitsLe)
  let root = if root == nil: cast[EofExceptionBitsLe](this) else: cast[EofExceptionBitsLe](root)
  this.io = io
  this.root = root
  this.parent = parent

  let preBitsExpr = this.io.readBitsIntLe(7)
  this.preBits = preBitsExpr
  let failBitsExpr = this.io.readBitsIntLe(18)
  this.failBits = failBitsExpr

proc fromFile*(_: typedesc[EofExceptionBitsLe], filename: string): EofExceptionBitsLe =
  EofExceptionBitsLe.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  DefaultBigBitEndianImplicit* = ref object of KaitaiStruct
    one*: uint64
    parent*: KaitaiStruct

proc read*(_: typedesc[DefaultBigBitEndianImplicit], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DefaultBigBitEndianImplicit


proc read*(_: typedesc[DefaultBigBitEndianImplicit], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DefaultBigBitEndianImplicit =
  template this: untyped = result
  this = new(DefaultBigBitEndianImplicit)
  let root = if root == nil: cast[DefaultBigBitEndianImplicit](this) else: cast[DefaultBigBitEndianImplicit](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = this.io.readBitsInt(20)
  this.one = oneExpr

proc fromFile*(_: typedesc[DefaultBigBitEndianImplicit], filename: string): DefaultBigBitEndianImplicit =
  DefaultBigBitEndianImplicit.read(newKaitaiFileStream(filename), nil, nil)


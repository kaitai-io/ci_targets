import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  FixedContents* = ref object of KaitaiStruct
    normal*: seq[byte]
    highBit8*: seq[byte]
    parent*: KaitaiStruct

proc read*(_: typedesc[FixedContents], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): FixedContents


proc read*(_: typedesc[FixedContents], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): FixedContents =
  template this: untyped = result
  this = new(FixedContents)
  let root = if root == nil: cast[FixedContents](this) else: cast[FixedContents](root)
  this.io = io
  this.root = root
  this.parent = parent

  let normalExpr = this.io.readBytes(int(6))
  this.normal = normalExpr
  let highBit8Expr = this.io.readBytes(int(2))
  this.highBit8 = highBit8Expr

proc fromFile*(_: typedesc[FixedContents], filename: string): FixedContents =
  FixedContents.read(newKaitaiFileStream(filename), nil, nil)


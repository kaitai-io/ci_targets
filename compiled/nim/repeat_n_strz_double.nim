import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  RepeatNStrzDouble* = ref object of KaitaiStruct
    qty*: uint32
    lines1*: seq[string]
    lines2*: seq[string]
    parent*: KaitaiStruct

proc read*(_: typedesc[RepeatNStrzDouble], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNStrzDouble


proc read*(_: typedesc[RepeatNStrzDouble], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNStrzDouble =
  template this: untyped = result
  this = new(RepeatNStrzDouble)
  let root = if root == nil: cast[RepeatNStrzDouble](this) else: cast[RepeatNStrzDouble](root)
  this.io = io
  this.root = root
  this.parent = parent

  let qtyExpr = this.io.readU4le()
  this.qty = qtyExpr
  for i in 0 ..< (this.qty div 2):
    let lines1Expr = encode(this.io.readBytesTerm(0, false, true, true), "UTF-8")
    this.lines1.add(lines1Expr)
  for i in 0 ..< (this.qty div 2):
    let lines2Expr = encode(this.io.readBytesTerm(0, false, true, true), "UTF-8")
    this.lines2.add(lines2Expr)

proc fromFile*(_: typedesc[RepeatNStrzDouble], filename: string): RepeatNStrzDouble =
  RepeatNStrzDouble.read(newKaitaiFileStream(filename), nil, nil)


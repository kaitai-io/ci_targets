import kaitai_struct_nim_runtime
import options

type
  ExprIoEofBits* = ref object of KaitaiStruct
    `foo`*: uint64
    `bar`*: uint64
    `baz`*: uint64
    `align`*: seq[byte]
    `qux`*: uint64
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ExprIoEofBits], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIoEofBits


proc read*(_: typedesc[ExprIoEofBits], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIoEofBits =
  template this: untyped = result
  this = new(ExprIoEofBits)
  let root = if root == nil: cast[ExprIoEofBits](this) else: cast[ExprIoEofBits](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = this.io.readBitsIntBe(20)
  this.foo = fooExpr
  if not(this.io.isEof):
    let barExpr = this.io.readBitsIntBe(4)
    this.bar = barExpr
  if not(this.io.isEof):
    let bazExpr = this.io.readBitsIntBe(16)
    this.baz = bazExpr
  let alignExpr = this.io.readBytes(int(0))
  this.align = alignExpr
  if not(this.io.isEof):
    let quxExpr = this.io.readBitsIntBe(16)
    this.qux = quxExpr

proc fromFile*(_: typedesc[ExprIoEofBits], filename: string): ExprIoEofBits =
  ExprIoEofBits.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  ExprIoPosBits* = ref object of KaitaiStruct
    `foo`*: uint64
    `bar`*: uint64
    `baz`*: bool
    `qux`*: uint64
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ExprIoPosBits], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIoPosBits


proc read*(_: typedesc[ExprIoPosBits], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIoPosBits =
  template this: untyped = result
  this = new(ExprIoPosBits)
  let root = if root == nil: cast[ExprIoPosBits](this) else: cast[ExprIoPosBits](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = this.io.readBitsIntBe(3)
  this.foo = fooExpr
  if this.io.pos == 1:
    let barExpr = this.io.readBitsIntBe(5)
    this.bar = barExpr
  if this.io.pos == 1:
    let bazExpr = this.io.readBitsIntBe(1) != 0
    this.baz = bazExpr
  if this.io.pos == 2:
    let quxExpr = this.io.readBitsIntBe(7)
    this.qux = quxExpr

proc fromFile*(_: typedesc[ExprIoPosBits], filename: string): ExprIoPosBits =
  ExprIoPosBits.read(newKaitaiFileStream(filename), nil, nil)


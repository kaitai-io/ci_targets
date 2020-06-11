import kaitai_struct_nim_runtime
import options

type
  ExprIoEof* = ref object of KaitaiStruct
    `substream1`*: ExprIoEof_OneOrTwo
    `substream2`*: ExprIoEof_OneOrTwo
    `parent`*: KaitaiStruct
    `rawSubstream1`*: seq[byte]
    `rawSubstream2`*: seq[byte]
  ExprIoEof_OneOrTwo* = ref object of KaitaiStruct
    `one`*: uint32
    `two`*: uint32
    `parent`*: ExprIoEof
    `reflectEofInst`*: bool

proc read*(_: typedesc[ExprIoEof], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIoEof
proc read*(_: typedesc[ExprIoEof_OneOrTwo], io: KaitaiStream, root: KaitaiStruct, parent: ExprIoEof): ExprIoEof_OneOrTwo

proc reflectEof*(this: ExprIoEof_OneOrTwo): bool

proc read*(_: typedesc[ExprIoEof], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIoEof =
  template this: untyped = result
  this = new(ExprIoEof)
  let root = if root == nil: cast[ExprIoEof](this) else: cast[ExprIoEof](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawSubstream1Expr = this.io.readBytes(int(4))
  this.rawSubstream1 = rawSubstream1Expr
  let rawSubstream1Io = newKaitaiStream(rawSubstream1Expr)
  let substream1Expr = ExprIoEof_OneOrTwo.read(rawSubstream1Io, this.root, this)
  this.substream1 = substream1Expr
  let rawSubstream2Expr = this.io.readBytes(int(8))
  this.rawSubstream2 = rawSubstream2Expr
  let rawSubstream2Io = newKaitaiStream(rawSubstream2Expr)
  let substream2Expr = ExprIoEof_OneOrTwo.read(rawSubstream2Io, this.root, this)
  this.substream2 = substream2Expr

proc fromFile*(_: typedesc[ExprIoEof], filename: string): ExprIoEof =
  ExprIoEof.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ExprIoEof_OneOrTwo], io: KaitaiStream, root: KaitaiStruct, parent: ExprIoEof): ExprIoEof_OneOrTwo =
  template this: untyped = result
  this = new(ExprIoEof_OneOrTwo)
  let root = if root == nil: cast[ExprIoEof](this) else: cast[ExprIoEof](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = this.io.readU4le()
  this.one = oneExpr
  if not(this.io.isEof):
    let twoExpr = this.io.readU4le()
    this.two = twoExpr

proc reflectEof(this: ExprIoEof_OneOrTwo): bool = 
  if this.reflectEofInst != nil:
    return this.reflectEofInst
  let reflectEofInstExpr = bool(this.io.isEof)
  this.reflectEofInst = reflectEofInstExpr
  if this.reflectEofInst != nil:
    return this.reflectEofInst

proc fromFile*(_: typedesc[ExprIoEof_OneOrTwo], filename: string): ExprIoEof_OneOrTwo =
  ExprIoEof_OneOrTwo.read(newKaitaiFileStream(filename), nil, nil)


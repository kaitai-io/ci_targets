import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ExprSizeofValueSized* = ref object of KaitaiStruct
    block1*: ExprSizeofValueSized_Block
    more*: uint16
    parent*: KaitaiStruct
    rawBlock1*: seq[byte]
    selfSizeofInst*: Option[int]
    sizeofBlockInst*: Option[int]
    sizeofBlockBInst*: Option[int]
    sizeofBlockAInst*: Option[int]
    sizeofBlockCInst*: Option[int]
  ExprSizeofValueSized_Block* = ref object of KaitaiStruct
    a*: uint8
    b*: uint32
    c*: seq[byte]
    parent*: ExprSizeofValueSized

proc read*(_: typedesc[ExprSizeofValueSized], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprSizeofValueSized
proc read*(_: typedesc[ExprSizeofValueSized_Block], io: KaitaiStream, root: KaitaiStruct, parent: ExprSizeofValueSized): ExprSizeofValueSized_Block

proc selfSizeof*(this: ExprSizeofValueSized): int
proc sizeofBlock*(this: ExprSizeofValueSized): int
proc sizeofBlockB*(this: ExprSizeofValueSized): int
proc sizeofBlockA*(this: ExprSizeofValueSized): int
proc sizeofBlockC*(this: ExprSizeofValueSized): int

proc read*(_: typedesc[ExprSizeofValueSized], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprSizeofValueSized =
  template this: untyped = result
  this = new(ExprSizeofValueSized)
  let root = if root == nil: cast[ExprSizeofValueSized](this) else: cast[ExprSizeofValueSized](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawBlock1Expr = this.io.readBytes(int(12))
  this.rawBlock1 = rawBlock1Expr
  let rawBlock1Io = newKaitaiStream(rawBlock1Expr)
  let block1Expr = ExprSizeofValueSized_Block.read(rawBlock1Io, this.root, this)
  this.block1 = block1Expr
  let moreExpr = this.io.readU2le()
  this.more = moreExpr

proc selfSizeof(this: ExprSizeofValueSized): int = 
  if isSome(this.selfSizeofInst):
    return get(this.selfSizeofInst)
  let selfSizeofInstExpr = int(14)
  this.selfSizeofInst = selfSizeofInstExpr
  if isSome(this.selfSizeofInst):
    return get(this.selfSizeofInst)

proc sizeofBlock(this: ExprSizeofValueSized): int = 
  if isSome(this.sizeofBlockInst):
    return get(this.sizeofBlockInst)
  let sizeofBlockInstExpr = int(12)
  this.sizeofBlockInst = sizeofBlockInstExpr
  if isSome(this.sizeofBlockInst):
    return get(this.sizeofBlockInst)

proc sizeofBlockB(this: ExprSizeofValueSized): int = 
  if isSome(this.sizeofBlockBInst):
    return get(this.sizeofBlockBInst)
  let sizeofBlockBInstExpr = int(4)
  this.sizeofBlockBInst = sizeofBlockBInstExpr
  if isSome(this.sizeofBlockBInst):
    return get(this.sizeofBlockBInst)

proc sizeofBlockA(this: ExprSizeofValueSized): int = 
  if isSome(this.sizeofBlockAInst):
    return get(this.sizeofBlockAInst)
  let sizeofBlockAInstExpr = int(1)
  this.sizeofBlockAInst = sizeofBlockAInstExpr
  if isSome(this.sizeofBlockAInst):
    return get(this.sizeofBlockAInst)

proc sizeofBlockC(this: ExprSizeofValueSized): int = 
  if isSome(this.sizeofBlockCInst):
    return get(this.sizeofBlockCInst)
  let sizeofBlockCInstExpr = int(2)
  this.sizeofBlockCInst = sizeofBlockCInstExpr
  if isSome(this.sizeofBlockCInst):
    return get(this.sizeofBlockCInst)

proc fromFile*(_: typedesc[ExprSizeofValueSized], filename: string): ExprSizeofValueSized =
  ExprSizeofValueSized.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ExprSizeofValueSized_Block], io: KaitaiStream, root: KaitaiStruct, parent: ExprSizeofValueSized): ExprSizeofValueSized_Block =
  template this: untyped = result
  this = new(ExprSizeofValueSized_Block)
  let root = if root == nil: cast[ExprSizeofValueSized](this) else: cast[ExprSizeofValueSized](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aExpr = this.io.readU1()
  this.a = aExpr
  let bExpr = this.io.readU4le()
  this.b = bExpr
  let cExpr = this.io.readBytes(int(2))
  this.c = cExpr

proc fromFile*(_: typedesc[ExprSizeofValueSized_Block], filename: string): ExprSizeofValueSized_Block =
  ExprSizeofValueSized_Block.read(newKaitaiFileStream(filename), nil, nil)


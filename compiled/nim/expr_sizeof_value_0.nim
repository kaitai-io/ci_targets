import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ExprSizeofValue0* = ref object of KaitaiStruct
    block1*: ExprSizeofValue0_Block
    more*: uint16
    parent*: KaitaiStruct
    selfSizeofInst*: Option[int]
    sizeofBlockInst*: Option[int]
    sizeofBlockBInst*: Option[int]
    sizeofBlockAInst*: Option[int]
    sizeofBlockCInst*: Option[int]
  ExprSizeofValue0_Block* = ref object of KaitaiStruct
    a*: uint8
    b*: uint32
    c*: seq[byte]
    parent*: ExprSizeofValue0

proc read*(_: typedesc[ExprSizeofValue0], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprSizeofValue0
proc read*(_: typedesc[ExprSizeofValue0_Block], io: KaitaiStream, root: KaitaiStruct, parent: ExprSizeofValue0): ExprSizeofValue0_Block

proc selfSizeof*(this: ExprSizeofValue0): int
proc sizeofBlock*(this: ExprSizeofValue0): int
proc sizeofBlockB*(this: ExprSizeofValue0): int
proc sizeofBlockA*(this: ExprSizeofValue0): int
proc sizeofBlockC*(this: ExprSizeofValue0): int

proc read*(_: typedesc[ExprSizeofValue0], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprSizeofValue0 =
  template this: untyped = result
  this = new(ExprSizeofValue0)
  let root = if root == nil: cast[ExprSizeofValue0](this) else: cast[ExprSizeofValue0](root)
  this.io = io
  this.root = root
  this.parent = parent

  let block1Expr = ExprSizeofValue0_Block.read(this.io, this.root, this)
  this.block1 = block1Expr
  let moreExpr = this.io.readU2le()
  this.more = moreExpr

proc selfSizeof(this: ExprSizeofValue0): int = 
  if isSome(this.selfSizeofInst):
    return get(this.selfSizeofInst)
  let selfSizeofInstExpr = int(9)
  this.selfSizeofInst = selfSizeofInstExpr
  if isSome(this.selfSizeofInst):
    return get(this.selfSizeofInst)

proc sizeofBlock(this: ExprSizeofValue0): int = 
  if isSome(this.sizeofBlockInst):
    return get(this.sizeofBlockInst)
  let sizeofBlockInstExpr = int(7)
  this.sizeofBlockInst = sizeofBlockInstExpr
  if isSome(this.sizeofBlockInst):
    return get(this.sizeofBlockInst)

proc sizeofBlockB(this: ExprSizeofValue0): int = 
  if isSome(this.sizeofBlockBInst):
    return get(this.sizeofBlockBInst)
  let sizeofBlockBInstExpr = int(4)
  this.sizeofBlockBInst = sizeofBlockBInstExpr
  if isSome(this.sizeofBlockBInst):
    return get(this.sizeofBlockBInst)

proc sizeofBlockA(this: ExprSizeofValue0): int = 
  if isSome(this.sizeofBlockAInst):
    return get(this.sizeofBlockAInst)
  let sizeofBlockAInstExpr = int(1)
  this.sizeofBlockAInst = sizeofBlockAInstExpr
  if isSome(this.sizeofBlockAInst):
    return get(this.sizeofBlockAInst)

proc sizeofBlockC(this: ExprSizeofValue0): int = 
  if isSome(this.sizeofBlockCInst):
    return get(this.sizeofBlockCInst)
  let sizeofBlockCInstExpr = int(2)
  this.sizeofBlockCInst = sizeofBlockCInstExpr
  if isSome(this.sizeofBlockCInst):
    return get(this.sizeofBlockCInst)

proc fromFile*(_: typedesc[ExprSizeofValue0], filename: string): ExprSizeofValue0 =
  ExprSizeofValue0.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ExprSizeofValue0_Block], io: KaitaiStream, root: KaitaiStruct, parent: ExprSizeofValue0): ExprSizeofValue0_Block =
  template this: untyped = result
  this = new(ExprSizeofValue0_Block)
  let root = if root == nil: cast[ExprSizeofValue0](this) else: cast[ExprSizeofValue0](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aExpr = this.io.readU1()
  this.a = aExpr
  let bExpr = this.io.readU4le()
  this.b = bExpr
  let cExpr = this.io.readBytes(int(2))
  this.c = cExpr

proc fromFile*(_: typedesc[ExprSizeofValue0_Block], filename: string): ExprSizeofValue0_Block =
  ExprSizeofValue0_Block.read(newKaitaiFileStream(filename), nil, nil)


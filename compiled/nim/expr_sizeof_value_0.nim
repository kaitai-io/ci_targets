import kaitai_struct_nim_runtime
import options

type
  ExprSizeofValue0* = ref object of KaitaiStruct
    `block1`*: ExprSizeofValue0_Block
    `more`*: uint16
    `parent`*: KaitaiStruct
    `sizeofBlockCInst`: int
    `sizeofBlockCInstFlag`: bool
    `selfSizeofInst`: int
    `selfSizeofInstFlag`: bool
    `sizeofBlockAInst`: int
    `sizeofBlockAInstFlag`: bool
    `sizeofBlockBInst`: int
    `sizeofBlockBInstFlag`: bool
    `sizeofBlockInst`: int
    `sizeofBlockInstFlag`: bool
  ExprSizeofValue0_Block* = ref object of KaitaiStruct
    `a`*: uint8
    `b`*: uint32
    `c`*: seq[byte]
    `parent`*: ExprSizeofValue0

proc read*(_: typedesc[ExprSizeofValue0], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprSizeofValue0
proc read*(_: typedesc[ExprSizeofValue0_Block], io: KaitaiStream, root: KaitaiStruct, parent: ExprSizeofValue0): ExprSizeofValue0_Block

proc sizeofBlockC*(this: ExprSizeofValue0): int
proc selfSizeof*(this: ExprSizeofValue0): int
proc sizeofBlockA*(this: ExprSizeofValue0): int
proc sizeofBlockB*(this: ExprSizeofValue0): int
proc sizeofBlock*(this: ExprSizeofValue0): int

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

proc sizeofBlockC(this: ExprSizeofValue0): int = 
  if this.sizeofBlockCInstFlag:
    return this.sizeofBlockCInst
  let sizeofBlockCInstExpr = int(2)
  this.sizeofBlockCInst = sizeofBlockCInstExpr
  this.sizeofBlockCInstFlag = true
  return this.sizeofBlockCInst

proc selfSizeof(this: ExprSizeofValue0): int = 
  if this.selfSizeofInstFlag:
    return this.selfSizeofInst
  let selfSizeofInstExpr = int(9)
  this.selfSizeofInst = selfSizeofInstExpr
  this.selfSizeofInstFlag = true
  return this.selfSizeofInst

proc sizeofBlockA(this: ExprSizeofValue0): int = 
  if this.sizeofBlockAInstFlag:
    return this.sizeofBlockAInst
  let sizeofBlockAInstExpr = int(1)
  this.sizeofBlockAInst = sizeofBlockAInstExpr
  this.sizeofBlockAInstFlag = true
  return this.sizeofBlockAInst

proc sizeofBlockB(this: ExprSizeofValue0): int = 
  if this.sizeofBlockBInstFlag:
    return this.sizeofBlockBInst
  let sizeofBlockBInstExpr = int(4)
  this.sizeofBlockBInst = sizeofBlockBInstExpr
  this.sizeofBlockBInstFlag = true
  return this.sizeofBlockBInst

proc sizeofBlock(this: ExprSizeofValue0): int = 
  if this.sizeofBlockInstFlag:
    return this.sizeofBlockInst
  let sizeofBlockInstExpr = int(7)
  this.sizeofBlockInst = sizeofBlockInstExpr
  this.sizeofBlockInstFlag = true
  return this.sizeofBlockInst

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


import kaitai_struct_nim_runtime
import options

type
  ExprSizeofValueSized* = ref object of KaitaiStruct
    `block1`*: ExprSizeofValueSized_Block
    `more`*: uint16
    `parent`*: KaitaiStruct
    `rawBlock1`*: seq[byte]
    `selfSizeofInst`*: int
    `sizeofBlockInst`*: int
    `sizeofBlockBInst`*: int
    `sizeofBlockAInst`*: int
    `sizeofBlockCInst`*: int
  ExprSizeofValueSized_Block* = ref object of KaitaiStruct
    `a`*: uint8
    `b`*: uint32
    `c`*: seq[byte]
    `parent`*: ExprSizeofValueSized

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
  if this.selfSizeofInst != nil:
    return this.selfSizeofInst
  let selfSizeofInstExpr = int(14)
  this.selfSizeofInst = selfSizeofInstExpr
  if this.selfSizeofInst != nil:
    return this.selfSizeofInst

proc sizeofBlock(this: ExprSizeofValueSized): int = 
  if this.sizeofBlockInst != nil:
    return this.sizeofBlockInst
  let sizeofBlockInstExpr = int(12)
  this.sizeofBlockInst = sizeofBlockInstExpr
  if this.sizeofBlockInst != nil:
    return this.sizeofBlockInst

proc sizeofBlockB(this: ExprSizeofValueSized): int = 
  if this.sizeofBlockBInst != nil:
    return this.sizeofBlockBInst
  let sizeofBlockBInstExpr = int(4)
  this.sizeofBlockBInst = sizeofBlockBInstExpr
  if this.sizeofBlockBInst != nil:
    return this.sizeofBlockBInst

proc sizeofBlockA(this: ExprSizeofValueSized): int = 
  if this.sizeofBlockAInst != nil:
    return this.sizeofBlockAInst
  let sizeofBlockAInstExpr = int(1)
  this.sizeofBlockAInst = sizeofBlockAInstExpr
  if this.sizeofBlockAInst != nil:
    return this.sizeofBlockAInst

proc sizeofBlockC(this: ExprSizeofValueSized): int = 
  if this.sizeofBlockCInst != nil:
    return this.sizeofBlockCInst
  let sizeofBlockCInstExpr = int(2)
  this.sizeofBlockCInst = sizeofBlockCInstExpr
  if this.sizeofBlockCInst != nil:
    return this.sizeofBlockCInst

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


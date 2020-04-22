import kaitai_struct_nim_runtime
import options

type
  ExprSizeofType1* = ref object of KaitaiStruct
    parent*: KaitaiStruct
    sizeofBlockInst*: Option[int]
    sizeofSubblockInst*: Option[int]
  ExprSizeofType1_Block* = ref object of KaitaiStruct
    a*: uint8
    b*: uint32
    c*: seq[byte]
    d*: ExprSizeofType1_Block_Subblock
    parent*: KaitaiStruct
  ExprSizeofType1_Block_Subblock* = ref object of KaitaiStruct
    a*: seq[byte]
    parent*: KaitaiStruct

proc read*(_: typedesc[ExprSizeofType1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprSizeofType1
proc read*(_: typedesc[ExprSizeofType1_Block], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprSizeofType1_Block
proc read*(_: typedesc[ExprSizeofType1_Block_Subblock], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprSizeofType1_Block_Subblock

proc sizeofBlock*(this: ExprSizeofType1): int
proc sizeofSubblock*(this: ExprSizeofType1): int

proc read*(_: typedesc[ExprSizeofType1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprSizeofType1 =
  template this: untyped = result
  this = new(ExprSizeofType1)
  let root = if root == nil: cast[ExprSizeofType1](this) else: cast[ExprSizeofType1](root)
  this.io = io
  this.root = root
  this.parent = parent


proc sizeofBlock(this: ExprSizeofType1): int = 
  if isSome(this.sizeofBlockInst):
    return get(this.sizeofBlockInst)
  let sizeofBlockInstExpr = int(11)
  this.sizeofBlockInst = sizeofBlockInstExpr
  if isSome(this.sizeofBlockInst):
    return get(this.sizeofBlockInst)

proc sizeofSubblock(this: ExprSizeofType1): int = 
  if isSome(this.sizeofSubblockInst):
    return get(this.sizeofSubblockInst)
  let sizeofSubblockInstExpr = int(4)
  this.sizeofSubblockInst = sizeofSubblockInstExpr
  if isSome(this.sizeofSubblockInst):
    return get(this.sizeofSubblockInst)

proc fromFile*(_: typedesc[ExprSizeofType1], filename: string): ExprSizeofType1 =
  ExprSizeofType1.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ExprSizeofType1_Block], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprSizeofType1_Block =
  template this: untyped = result
  this = new(ExprSizeofType1_Block)
  let root = if root == nil: cast[ExprSizeofType1](this) else: cast[ExprSizeofType1](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aExpr = this.io.readU1()
  this.a = aExpr
  let bExpr = this.io.readU4le()
  this.b = bExpr
  let cExpr = this.io.readBytes(int(2))
  this.c = cExpr
  let dExpr = ExprSizeofType1_Block_Subblock.read(this.io, this.root, this)
  this.d = dExpr

proc fromFile*(_: typedesc[ExprSizeofType1_Block], filename: string): ExprSizeofType1_Block =
  ExprSizeofType1_Block.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ExprSizeofType1_Block_Subblock], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprSizeofType1_Block_Subblock =
  template this: untyped = result
  this = new(ExprSizeofType1_Block_Subblock)
  let root = if root == nil: cast[ExprSizeofType1](this) else: cast[ExprSizeofType1](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aExpr = this.io.readBytes(int(4))
  this.a = aExpr

proc fromFile*(_: typedesc[ExprSizeofType1_Block_Subblock], filename: string): ExprSizeofType1_Block_Subblock =
  ExprSizeofType1_Block_Subblock.read(newKaitaiFileStream(filename), nil, nil)


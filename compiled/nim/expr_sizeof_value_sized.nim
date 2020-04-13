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

  this.rawBlock1 = this.io.readBytes(int(12))
  let rawBlock1Io = newKaitaiStream(this.rawBlock1)
  this.block1 = ExprSizeofValueSized_Block.read(rawBlock1Io, this.root, this)
  this.more = this.io.readU2le()

proc selfSizeof(this: ExprSizeofValueSized): int = 
  if isSome(this.selfSizeofInst):
    return get(this.selfSizeofInst)
  this.selfSizeofInst = int(14)
  if isSome(this.selfSizeofInst):
    return get(this.selfSizeofInst)

proc sizeofBlock(this: ExprSizeofValueSized): int = 
  if isSome(this.sizeofBlockInst):
    return get(this.sizeofBlockInst)
  this.sizeofBlockInst = int(12)
  if isSome(this.sizeofBlockInst):
    return get(this.sizeofBlockInst)

proc sizeofBlockB(this: ExprSizeofValueSized): int = 
  if isSome(this.sizeofBlockBInst):
    return get(this.sizeofBlockBInst)
  this.sizeofBlockBInst = int(4)
  if isSome(this.sizeofBlockBInst):
    return get(this.sizeofBlockBInst)

proc sizeofBlockA(this: ExprSizeofValueSized): int = 
  if isSome(this.sizeofBlockAInst):
    return get(this.sizeofBlockAInst)
  this.sizeofBlockAInst = int(1)
  if isSome(this.sizeofBlockAInst):
    return get(this.sizeofBlockAInst)

proc sizeofBlockC(this: ExprSizeofValueSized): int = 
  if isSome(this.sizeofBlockCInst):
    return get(this.sizeofBlockCInst)
  this.sizeofBlockCInst = int(2)
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

  this.a = this.io.readU1()
  this.b = this.io.readU4le()
  this.c = this.io.readBytes(int(2))

proc fromFile*(_: typedesc[ExprSizeofValueSized_Block], filename: string): ExprSizeofValueSized_Block =
  ExprSizeofValueSized_Block.read(newKaitaiFileStream(filename), nil, nil)


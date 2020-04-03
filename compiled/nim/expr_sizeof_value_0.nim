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
    c*: string
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
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.block1 = ExprSizeofValue0_Block.read(this.io, this.root, this)
  this.more = this.io.readU2le()

proc selfSizeof(this: ExprSizeofValue0): int = 
  if isSome(this.selfSizeofInst):
    return get(this.selfSizeofInst)
  this.selfSizeofInst = some(9)
  return get(this.selfSizeofInst)

proc sizeofBlock(this: ExprSizeofValue0): int = 
  if isSome(this.sizeofBlockInst):
    return get(this.sizeofBlockInst)
  this.sizeofBlockInst = some(7)
  return get(this.sizeofBlockInst)

proc sizeofBlockB(this: ExprSizeofValue0): int = 
  if isSome(this.sizeofBlockBInst):
    return get(this.sizeofBlockBInst)
  this.sizeofBlockBInst = some(4)
  return get(this.sizeofBlockBInst)

proc sizeofBlockA(this: ExprSizeofValue0): int = 
  if isSome(this.sizeofBlockAInst):
    return get(this.sizeofBlockAInst)
  this.sizeofBlockAInst = some(1)
  return get(this.sizeofBlockAInst)

proc sizeofBlockC(this: ExprSizeofValue0): int = 
  if isSome(this.sizeofBlockCInst):
    return get(this.sizeofBlockCInst)
  this.sizeofBlockCInst = some(2)
  return get(this.sizeofBlockCInst)

proc fromFile*(_: typedesc[ExprSizeofValue0], filename: string): ExprSizeofValue0 =
  ExprSizeofValue0.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ExprSizeofValue0_Block], io: KaitaiStream, root: KaitaiStruct, parent: ExprSizeofValue0): ExprSizeofValue0_Block =
  template this: untyped = result
  this = new(ExprSizeofValue0_Block)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.a = this.io.readU1()
  this.b = this.io.readU4le()
  this.c = this.io.readBytes(int(2))

proc fromFile*(_: typedesc[ExprSizeofValue0_Block], filename: string): ExprSizeofValue0_Block =
  ExprSizeofValue0_Block.read(newKaitaiFileStream(filename), nil, nil)


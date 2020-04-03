import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ExprSizeofType1* = ref object of KaitaiStruct
    parent*: KaitaiStruct
    sizeofBlockInst*: Option[int]
    sizeofSubblockInst*: Option[int]
  ExprSizeofType1_Block* = ref object of KaitaiStruct
    a*: uint8
    b*: uint32
    c*: string
    d*: ExprSizeofType1_Block_Subblock
    parent*: KaitaiStruct
  ExprSizeofType1_Block_Subblock* = ref object of KaitaiStruct
    a*: string
    parent*: KaitaiStruct

proc read*(_: typedesc[ExprSizeofType1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprSizeofType1
proc read*(_: typedesc[ExprSizeofType1_Block], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprSizeofType1_Block
proc read*(_: typedesc[ExprSizeofType1_Block_Subblock], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprSizeofType1_Block_Subblock

proc sizeofBlock*(this: ExprSizeofType1): int
proc sizeofSubblock*(this: ExprSizeofType1): int

proc read*(_: typedesc[ExprSizeofType1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprSizeofType1 =
  template this: untyped = result
  this = new(ExprSizeofType1)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


proc sizeofBlock(this: ExprSizeofType1): int = 
  if isSome(this.sizeofBlockInst):
    return get(this.sizeofBlockInst)
  this.sizeofBlockInst = some(11)
  return get(this.sizeofBlockInst)

proc sizeofSubblock(this: ExprSizeofType1): int = 
  if isSome(this.sizeofSubblockInst):
    return get(this.sizeofSubblockInst)
  this.sizeofSubblockInst = some(4)
  return get(this.sizeofSubblockInst)

proc fromFile*(_: typedesc[ExprSizeofType1], filename: string): ExprSizeofType1 =
  ExprSizeofType1.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ExprSizeofType1_Block], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprSizeofType1_Block =
  template this: untyped = result
  this = new(ExprSizeofType1_Block)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.a = this.io.readU1()
  this.b = this.io.readU4le()
  this.c = this.io.readBytes(int(2))
  this.d = ExprSizeofType1_Block_Subblock.read(this.io, this.root, this)

proc fromFile*(_: typedesc[ExprSizeofType1_Block], filename: string): ExprSizeofType1_Block =
  ExprSizeofType1_Block.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ExprSizeofType1_Block_Subblock], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprSizeofType1_Block_Subblock =
  template this: untyped = result
  this = new(ExprSizeofType1_Block_Subblock)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.a = this.io.readBytes(int(4))

proc fromFile*(_: typedesc[ExprSizeofType1_Block_Subblock], filename: string): ExprSizeofType1_Block_Subblock =
  ExprSizeofType1_Block_Subblock.read(newKaitaiFileStream(filename), nil, nil)


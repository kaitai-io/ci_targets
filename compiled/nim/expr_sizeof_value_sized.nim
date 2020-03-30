import kaitai_struct_nim_runtime
import options

type
  ExprSizeofValueSized_Block* = ref ExprSizeofValueSized_BlockObj
  ExprSizeofValueSized_BlockObj* = object
    a*: uint8
    b*: uint32
    c*: string
    io*: KaitaiStream
    root*: ExprSizeofValueSized
    parent*: ExprSizeofValueSized
  ExprSizeofValueSized* = ref ExprSizeofValueSizedObj
  ExprSizeofValueSizedObj* = object
    block1*: ExprSizeofValueSized_Block
    more*: uint16
    io*: KaitaiStream
    root*: ExprSizeofValueSized
    parent*: ref RootObj
    rawBlock1*: string
    selfSizeofInst*: Option[int]
    sizeofBlockInst*: Option[int]
    sizeofBlockBInst*: Option[int]
    sizeofBlockAInst*: Option[int]
    sizeofBlockCInst*: Option[int]

## ExprSizeofValueSized_Block
proc read*(_: typedesc[ExprSizeofValueSized_Block], io: KaitaiStream, root: ExprSizeofValueSized, parent: ExprSizeofValueSized): ExprSizeofValueSized_Block =
  let this = new(ExprSizeofValueSized_Block)
  let root = if root == nil: cast[ExprSizeofValueSized](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.a = this.io.readU1()
  this.b = this.io.readU4le()
  this.c = this.io.readBytes(int(2))
  result = this

proc fromFile*(_: typedesc[ExprSizeofValueSized_Block], filename: string): ExprSizeofValueSized_Block =
  ExprSizeofValueSized_Block.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofValueSized_BlockObj) =
  close(x.io)

## ExprSizeofValueSized
proc selfSizeof*(this: ExprSizeofValueSized): int
proc sizeofBlock*(this: ExprSizeofValueSized): int
proc sizeofBlockB*(this: ExprSizeofValueSized): int
proc sizeofBlockA*(this: ExprSizeofValueSized): int
proc sizeofBlockC*(this: ExprSizeofValueSized): int
proc selfSizeof(this: ExprSizeofValueSized): int = 
  if isSome(this.selfSizeofInst):
    return get(this.selfSizeofInst)
  this.selfSizeofInst = some(14)
  return get(this.selfSizeofInst)

proc sizeofBlock(this: ExprSizeofValueSized): int = 
  if isSome(this.sizeofBlockInst):
    return get(this.sizeofBlockInst)
  this.sizeofBlockInst = some(12)
  return get(this.sizeofBlockInst)

proc sizeofBlockB(this: ExprSizeofValueSized): int = 
  if isSome(this.sizeofBlockBInst):
    return get(this.sizeofBlockBInst)
  this.sizeofBlockBInst = some(4)
  return get(this.sizeofBlockBInst)

proc sizeofBlockA(this: ExprSizeofValueSized): int = 
  if isSome(this.sizeofBlockAInst):
    return get(this.sizeofBlockAInst)
  this.sizeofBlockAInst = some(1)
  return get(this.sizeofBlockAInst)

proc sizeofBlockC(this: ExprSizeofValueSized): int = 
  if isSome(this.sizeofBlockCInst):
    return get(this.sizeofBlockCInst)
  this.sizeofBlockCInst = some(2)
  return get(this.sizeofBlockCInst)

proc read*(_: typedesc[ExprSizeofValueSized], io: KaitaiStream, root: ExprSizeofValueSized, parent: ref RootObj): ExprSizeofValueSized =
  let this = new(ExprSizeofValueSized)
  let root = if root == nil: cast[ExprSizeofValueSized](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.rawBlock1 = this.io.readBytes(int(12))
  let rawBlock1Io = newKaitaiStringStream(this.rawBlock1)
  this.block1 = ExprSizeofValueSized_Block.read(rawBlock1Io, this.root, this)
  this.more = this.io.readU2le()
  result = this

proc fromFile*(_: typedesc[ExprSizeofValueSized], filename: string): ExprSizeofValueSized =
  ExprSizeofValueSized.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofValueSizedObj) =
  close(x.io)


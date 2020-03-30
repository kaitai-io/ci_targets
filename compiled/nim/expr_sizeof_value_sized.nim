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

### ExprSizeofValueSized_Block ###
proc read*(_: typedesc[ExprSizeofValueSized_Block], io: KaitaiStream, root: ExprSizeofValueSized, parent: ExprSizeofValueSized): ExprSizeofValueSized_Block =
  let this = new(ExprSizeofValueSized_Block)
  let root = if root == nil: cast[ExprSizeofValueSized](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let a = this.io.readU1()
  this.a = a
  let b = this.io.readU4le()
  this.b = b
  let c = this.io.readBytes(int(2))
  this.c = c
  result = this

proc fromFile*(_: typedesc[ExprSizeofValueSized_Block], filename: string): ExprSizeofValueSized_Block =
  ExprSizeofValueSized_Block.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofValueSized_BlockObj) =
  close(x.io)

### ExprSizeofValueSized ###
proc selfSizeof*(this: ExprSizeofValueSized): int
proc sizeofBlock*(this: ExprSizeofValueSized): int
proc sizeofBlockB*(this: ExprSizeofValueSized): int
proc sizeofBlockA*(this: ExprSizeofValueSized): int
proc sizeofBlockC*(this: ExprSizeofValueSized): int
proc selfSizeof(this: ExprSizeofValueSized): int = 
  if isSome(this.selfSizeofInst):
    return get(this.selfSizeofInst)
  let selfSizeofInst = 14
  this.selfSizeofInst = some(selfSizeofInst)
  return get(this.selfSizeofInst)

proc sizeofBlock(this: ExprSizeofValueSized): int = 
  if isSome(this.sizeofBlockInst):
    return get(this.sizeofBlockInst)
  let sizeofBlockInst = 12
  this.sizeofBlockInst = some(sizeofBlockInst)
  return get(this.sizeofBlockInst)

proc sizeofBlockB(this: ExprSizeofValueSized): int = 
  if isSome(this.sizeofBlockBInst):
    return get(this.sizeofBlockBInst)
  let sizeofBlockBInst = 4
  this.sizeofBlockBInst = some(sizeofBlockBInst)
  return get(this.sizeofBlockBInst)

proc sizeofBlockA(this: ExprSizeofValueSized): int = 
  if isSome(this.sizeofBlockAInst):
    return get(this.sizeofBlockAInst)
  let sizeofBlockAInst = 1
  this.sizeofBlockAInst = some(sizeofBlockAInst)
  return get(this.sizeofBlockAInst)

proc sizeofBlockC(this: ExprSizeofValueSized): int = 
  if isSome(this.sizeofBlockCInst):
    return get(this.sizeofBlockCInst)
  let sizeofBlockCInst = 2
  this.sizeofBlockCInst = some(sizeofBlockCInst)
  return get(this.sizeofBlockCInst)

proc read*(_: typedesc[ExprSizeofValueSized], io: KaitaiStream, root: ExprSizeofValueSized, parent: ref RootObj): ExprSizeofValueSized =
  let this = new(ExprSizeofValueSized)
  let root = if root == nil: cast[ExprSizeofValueSized](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let rawBlock1 = this.io.readBytes(int(12))
  this.rawBlock1 = rawBlock1
  let rawBlock1Io = newKaitaiStringStream(rawBlock1)
  let block1 = ExprSizeofValueSized_Block.read(rawBlock1Io, this.root, this)
  this.block1 = block1
  let more = this.io.readU2le()
  this.more = more
  result = this

proc fromFile*(_: typedesc[ExprSizeofValueSized], filename: string): ExprSizeofValueSized =
  ExprSizeofValueSized.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofValueSizedObj) =
  close(x.io)


import kaitai_struct_nim_runtime
import options

type
  ExprSizeofValue0_Block* = ref ExprSizeofValue0_BlockObj
  ExprSizeofValue0_BlockObj* = object
    a*: uint8
    b*: uint32
    c*: string
    io*: KaitaiStream
    root*: ExprSizeofValue0
    parent*: ExprSizeofValue0
  ExprSizeofValue0* = ref ExprSizeofValue0Obj
  ExprSizeofValue0Obj* = object
    block1*: ExprSizeofValue0_Block
    more*: uint16
    io*: KaitaiStream
    root*: ExprSizeofValue0
    parent*: ref RootObj
    selfSizeofInst*: Option[int]
    sizeofBlockInst*: Option[int]
    sizeofBlockBInst*: Option[int]
    sizeofBlockAInst*: Option[int]
    sizeofBlockCInst*: Option[int]

### ExprSizeofValue0_Block ###
proc read*(_: typedesc[ExprSizeofValue0_Block], io: KaitaiStream, root: ExprSizeofValue0, parent: ExprSizeofValue0): ExprSizeofValue0_Block =
  let this = new(ExprSizeofValue0_Block)
  let root = if root == nil: cast[ExprSizeofValue0](result) else: root
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

proc fromFile*(_: typedesc[ExprSizeofValue0_Block], filename: string): ExprSizeofValue0_Block =
  ExprSizeofValue0_Block.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofValue0_BlockObj) =
  close(x.io)

### ExprSizeofValue0 ###
proc selfSizeof*(this: ExprSizeofValue0): int
proc sizeofBlock*(this: ExprSizeofValue0): int
proc sizeofBlockB*(this: ExprSizeofValue0): int
proc sizeofBlockA*(this: ExprSizeofValue0): int
proc sizeofBlockC*(this: ExprSizeofValue0): int
proc selfSizeof(this: ExprSizeofValue0): int = 
  if isSome(this.selfSizeofInst):
    return get(this.selfSizeofInst)
  let selfSizeofInst = 9
  this.selfSizeofInst = some(selfSizeofInst)
  return get(this.selfSizeofInst)

proc sizeofBlock(this: ExprSizeofValue0): int = 
  if isSome(this.sizeofBlockInst):
    return get(this.sizeofBlockInst)
  let sizeofBlockInst = 7
  this.sizeofBlockInst = some(sizeofBlockInst)
  return get(this.sizeofBlockInst)

proc sizeofBlockB(this: ExprSizeofValue0): int = 
  if isSome(this.sizeofBlockBInst):
    return get(this.sizeofBlockBInst)
  let sizeofBlockBInst = 4
  this.sizeofBlockBInst = some(sizeofBlockBInst)
  return get(this.sizeofBlockBInst)

proc sizeofBlockA(this: ExprSizeofValue0): int = 
  if isSome(this.sizeofBlockAInst):
    return get(this.sizeofBlockAInst)
  let sizeofBlockAInst = 1
  this.sizeofBlockAInst = some(sizeofBlockAInst)
  return get(this.sizeofBlockAInst)

proc sizeofBlockC(this: ExprSizeofValue0): int = 
  if isSome(this.sizeofBlockCInst):
    return get(this.sizeofBlockCInst)
  let sizeofBlockCInst = 2
  this.sizeofBlockCInst = some(sizeofBlockCInst)
  return get(this.sizeofBlockCInst)

proc read*(_: typedesc[ExprSizeofValue0], io: KaitaiStream, root: ExprSizeofValue0, parent: ref RootObj): ExprSizeofValue0 =
  let this = new(ExprSizeofValue0)
  let root = if root == nil: cast[ExprSizeofValue0](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let block1 = ExprSizeofValue0_Block.read(this.io, this.root, this)
  this.block1 = block1
  let more = this.io.readU2le()
  this.more = more
  result = this

proc fromFile*(_: typedesc[ExprSizeofValue0], filename: string): ExprSizeofValue0 =
  ExprSizeofValue0.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofValue0Obj) =
  close(x.io)


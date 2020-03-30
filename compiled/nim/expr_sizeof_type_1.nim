import kaitai_struct_nim_runtime
import options

type
  ExprSizeofType1_Block_Subblock* = ref ExprSizeofType1_Block_SubblockObj
  ExprSizeofType1_Block_SubblockObj* = object
    a*: string
    io*: KaitaiStream
    root*: ExprSizeofType1
    parent*: ref RootObj
  ExprSizeofType1_Block* = ref ExprSizeofType1_BlockObj
  ExprSizeofType1_BlockObj* = object
    a*: uint8
    b*: uint32
    c*: string
    d*: ExprSizeofType1_Block_Subblock
    io*: KaitaiStream
    root*: ExprSizeofType1
    parent*: ref RootObj
  ExprSizeofType1* = ref ExprSizeofType1Obj
  ExprSizeofType1Obj* = object
    io*: KaitaiStream
    root*: ExprSizeofType1
    parent*: ref RootObj
    sizeofBlockInst*: Option[int]
    sizeofSubblockInst*: Option[int]

### ExprSizeofType1_Block_Subblock ###
proc read*(_: typedesc[ExprSizeofType1_Block_Subblock], io: KaitaiStream, root: ExprSizeofType1, parent: ref RootObj): ExprSizeofType1_Block_Subblock =
  let this = new(ExprSizeofType1_Block_Subblock)
  let root = if root == nil: cast[ExprSizeofType1](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let a = this.io.readBytes(int(4))
  this.a = a
  result = this

proc fromFile*(_: typedesc[ExprSizeofType1_Block_Subblock], filename: string): ExprSizeofType1_Block_Subblock =
  ExprSizeofType1_Block_Subblock.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofType1_Block_SubblockObj) =
  close(x.io)

### ExprSizeofType1_Block ###
proc read*(_: typedesc[ExprSizeofType1_Block], io: KaitaiStream, root: ExprSizeofType1, parent: ref RootObj): ExprSizeofType1_Block =
  let this = new(ExprSizeofType1_Block)
  let root = if root == nil: cast[ExprSizeofType1](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let a = this.io.readU1()
  this.a = a
  let b = this.io.readU4le()
  this.b = b
  let c = this.io.readBytes(int(2))
  this.c = c
  let d = ExprSizeofType1_Block_Subblock.read(this.io, this.root, this)
  this.d = d
  result = this

proc fromFile*(_: typedesc[ExprSizeofType1_Block], filename: string): ExprSizeofType1_Block =
  ExprSizeofType1_Block.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofType1_BlockObj) =
  close(x.io)

### ExprSizeofType1 ###
proc sizeofBlock*(this: ExprSizeofType1): int
proc sizeofSubblock*(this: ExprSizeofType1): int
proc sizeofBlock(this: ExprSizeofType1): int = 
  if isSome(this.sizeofBlockInst):
    return get(this.sizeofBlockInst)
  let sizeofBlockInst = 11
  this.sizeofBlockInst = some(sizeofBlockInst)
  return get(this.sizeofBlockInst)

proc sizeofSubblock(this: ExprSizeofType1): int = 
  if isSome(this.sizeofSubblockInst):
    return get(this.sizeofSubblockInst)
  let sizeofSubblockInst = 4
  this.sizeofSubblockInst = some(sizeofSubblockInst)
  return get(this.sizeofSubblockInst)

proc read*(_: typedesc[ExprSizeofType1], io: KaitaiStream, root: ExprSizeofType1, parent: ref RootObj): ExprSizeofType1 =
  let this = new(ExprSizeofType1)
  let root = if root == nil: cast[ExprSizeofType1](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[ExprSizeofType1], filename: string): ExprSizeofType1 =
  ExprSizeofType1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofType1Obj) =
  close(x.io)


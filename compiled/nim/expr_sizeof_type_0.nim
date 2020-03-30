import kaitai_struct_nim_runtime
import options

type
  ExprSizeofType0_Block* = ref ExprSizeofType0_BlockObj
  ExprSizeofType0_BlockObj* = object
    a*: uint8
    b*: uint32
    c*: string
    io*: KaitaiStream
    root*: ExprSizeofType0
    parent*: ref RootObj
  ExprSizeofType0* = ref ExprSizeofType0Obj
  ExprSizeofType0Obj* = object
    io*: KaitaiStream
    root*: ExprSizeofType0
    parent*: ref RootObj
    sizeofBlockInst*: Option[int]

### ExprSizeofType0_Block ###
proc read*(_: typedesc[ExprSizeofType0_Block], io: KaitaiStream, root: ExprSizeofType0, parent: ref RootObj): ExprSizeofType0_Block =
  let this = new(ExprSizeofType0_Block)
  let root = if root == nil: cast[ExprSizeofType0](result) else: root
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

proc fromFile*(_: typedesc[ExprSizeofType0_Block], filename: string): ExprSizeofType0_Block =
  ExprSizeofType0_Block.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofType0_BlockObj) =
  close(x.io)

### ExprSizeofType0 ###
proc sizeofBlock*(this: ExprSizeofType0): int
proc sizeofBlock(this: ExprSizeofType0): int = 
  if isSome(this.sizeofBlockInst):
    return get(this.sizeofBlockInst)
  let sizeofBlockInst = 7
  this.sizeofBlockInst = some(sizeofBlockInst)
  return get(this.sizeofBlockInst)

proc read*(_: typedesc[ExprSizeofType0], io: KaitaiStream, root: ExprSizeofType0, parent: ref RootObj): ExprSizeofType0 =
  let this = new(ExprSizeofType0)
  let root = if root == nil: cast[ExprSizeofType0](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[ExprSizeofType0], filename: string): ExprSizeofType0 =
  ExprSizeofType0.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofType0Obj) =
  close(x.io)


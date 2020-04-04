import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ExprSizeofType0* = ref object of KaitaiStruct
    parent*: KaitaiStruct
    sizeofBlockInst*: Option[int]
  ExprSizeofType0_Block* = ref object of KaitaiStruct
    a*: uint8
    b*: uint32
    c*: string
    parent*: KaitaiStruct

proc read*(_: typedesc[ExprSizeofType0], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprSizeofType0
proc read*(_: typedesc[ExprSizeofType0_Block], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprSizeofType0_Block

proc sizeofBlock*(this: ExprSizeofType0): int

proc read*(_: typedesc[ExprSizeofType0], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprSizeofType0 =
  template this: untyped = result
  this = new(ExprSizeofType0)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


proc sizeofBlock(this: ExprSizeofType0): int = 
  if isSome(this.sizeofBlockInst):
    return get(this.sizeofBlockInst)
  this.sizeofBlockInst = some(7)
  if isSome(this.sizeofBlockInst):
    return get(this.sizeofBlockInst)

proc fromFile*(_: typedesc[ExprSizeofType0], filename: string): ExprSizeofType0 =
  ExprSizeofType0.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ExprSizeofType0_Block], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprSizeofType0_Block =
  template this: untyped = result
  this = new(ExprSizeofType0_Block)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.a = this.io.readU1()
  this.b = this.io.readU4le()
  this.c = this.io.readBytes(int(2))

proc fromFile*(_: typedesc[ExprSizeofType0_Block], filename: string): ExprSizeofType0_Block =
  ExprSizeofType0_Block.read(newKaitaiFileStream(filename), nil, nil)


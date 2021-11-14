import kaitai_struct_nim_runtime
import options

type
  TypeIntUnaryOp* = ref object of KaitaiStruct
    `valueS2`*: int16
    `valueS8`*: int64
    `parent`*: KaitaiStruct
    `unaryS2Inst`: int
    `unaryS2InstFlag`: bool
    `unaryS8Inst`: int64
    `unaryS8InstFlag`: bool

proc read*(_: typedesc[TypeIntUnaryOp], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TypeIntUnaryOp

proc unaryS2*(this: TypeIntUnaryOp): int
proc unaryS8*(this: TypeIntUnaryOp): int64

proc read*(_: typedesc[TypeIntUnaryOp], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TypeIntUnaryOp =
  template this: untyped = result
  this = new(TypeIntUnaryOp)
  let root = if root == nil: cast[TypeIntUnaryOp](this) else: cast[TypeIntUnaryOp](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueS2Expr = this.io.readS2le()
  this.valueS2 = valueS2Expr
  let valueS8Expr = this.io.readS8le()
  this.valueS8 = valueS8Expr

proc unaryS2(this: TypeIntUnaryOp): int = 
  if this.unaryS2InstFlag:
    return this.unaryS2Inst
  let unaryS2InstExpr = int(-(this.valueS2))
  this.unaryS2Inst = unaryS2InstExpr
  this.unaryS2InstFlag = true
  return this.unaryS2Inst

proc unaryS8(this: TypeIntUnaryOp): int64 = 
  if this.unaryS8InstFlag:
    return this.unaryS8Inst
  let unaryS8InstExpr = int64(-(this.valueS8))
  this.unaryS8Inst = unaryS8InstExpr
  this.unaryS8InstFlag = true
  return this.unaryS8Inst

proc fromFile*(_: typedesc[TypeIntUnaryOp], filename: string): TypeIntUnaryOp =
  TypeIntUnaryOp.read(newKaitaiFileStream(filename), nil, nil)


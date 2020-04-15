import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  TypeIntUnaryOp* = ref object of KaitaiStruct
    valueS2*: int16
    valueS8*: int64
    parent*: KaitaiStruct
    unaryS2Inst*: Option[int]
    unaryS8Inst*: Option[int64]

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
  if isSome(this.unaryS2Inst):
    return get(this.unaryS2Inst)
  let unaryS2InstExpr = int(-(this.valueS2))
  this.unaryS2Inst = unaryS2InstExpr
  if isSome(this.unaryS2Inst):
    return get(this.unaryS2Inst)

proc unaryS8(this: TypeIntUnaryOp): int64 = 
  if isSome(this.unaryS8Inst):
    return get(this.unaryS8Inst)
  let unaryS8InstExpr = int64(-(this.valueS8))
  this.unaryS8Inst = unaryS8InstExpr
  if isSome(this.unaryS8Inst):
    return get(this.unaryS8Inst)

proc fromFile*(_: typedesc[TypeIntUnaryOp], filename: string): TypeIntUnaryOp =
  TypeIntUnaryOp.read(newKaitaiFileStream(filename), nil, nil)


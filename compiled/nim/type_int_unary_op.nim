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
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.valueS2 = this.io.readS2le()
  this.valueS8 = this.io.readS8le()

proc unaryS2(this: TypeIntUnaryOp): int = 
  if isSome(this.unaryS2Inst):
    return get(this.unaryS2Inst)
  this.unaryS2Inst = some(-(this.valueS2))
  return get(this.unaryS2Inst)

proc unaryS8(this: TypeIntUnaryOp): int64 = 
  if isSome(this.unaryS8Inst):
    return get(this.unaryS8Inst)
  this.unaryS8Inst = some(-(this.valueS8))
  return get(this.unaryS8Inst)

proc fromFile*(_: typedesc[TypeIntUnaryOp], filename: string): TypeIntUnaryOp =
  TypeIntUnaryOp.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  ExprIntDiv* = ref object of KaitaiStruct
    intU*: uint32
    intS*: int32
    parent*: KaitaiStruct
    divPosConstInst*: Option[int]
    divNegConstInst*: Option[int]
    divPosSeqInst*: Option[int]
    divNegSeqInst*: Option[int]

proc read*(_: typedesc[ExprIntDiv], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIntDiv

proc divPosConst*(this: ExprIntDiv): int
proc divNegConst*(this: ExprIntDiv): int
proc divPosSeq*(this: ExprIntDiv): int
proc divNegSeq*(this: ExprIntDiv): int

proc read*(_: typedesc[ExprIntDiv], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIntDiv =
  template this: untyped = result
  this = new(ExprIntDiv)
  let root = if root == nil: cast[ExprIntDiv](this) else: cast[ExprIntDiv](root)
  this.io = io
  this.root = root
  this.parent = parent

  let intUExpr = this.io.readU4le()
  this.intU = intUExpr
  let intSExpr = this.io.readS4le()
  this.intS = intSExpr

proc divPosConst(this: ExprIntDiv): int = 
  if isSome(this.divPosConstInst):
    return get(this.divPosConstInst)
  let divPosConstInstExpr = int((9837 div 13))
  this.divPosConstInst = divPosConstInstExpr
  if isSome(this.divPosConstInst):
    return get(this.divPosConstInst)

proc divNegConst(this: ExprIntDiv): int = 
  if isSome(this.divNegConstInst):
    return get(this.divNegConstInst)
  let divNegConstInstExpr = int((-9837 div 13))
  this.divNegConstInst = divNegConstInstExpr
  if isSome(this.divNegConstInst):
    return get(this.divNegConstInst)

proc divPosSeq(this: ExprIntDiv): int = 
  if isSome(this.divPosSeqInst):
    return get(this.divPosSeqInst)
  let divPosSeqInstExpr = int((this.intU div 13))
  this.divPosSeqInst = divPosSeqInstExpr
  if isSome(this.divPosSeqInst):
    return get(this.divPosSeqInst)

proc divNegSeq(this: ExprIntDiv): int = 
  if isSome(this.divNegSeqInst):
    return get(this.divNegSeqInst)
  let divNegSeqInstExpr = int((this.intS div 13))
  this.divNegSeqInst = divNegSeqInstExpr
  if isSome(this.divNegSeqInst):
    return get(this.divNegSeqInst)

proc fromFile*(_: typedesc[ExprIntDiv], filename: string): ExprIntDiv =
  ExprIntDiv.read(newKaitaiFileStream(filename), nil, nil)


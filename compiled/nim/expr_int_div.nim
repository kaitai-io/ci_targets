import kaitai_struct_nim_runtime
import options

type
  ExprIntDiv* = ref object of KaitaiStruct
    `intU`*: uint32
    `intS`*: int32
    `parent`*: KaitaiStruct
    `divPosConstInst`*: int
    `divNegConstInst`*: int
    `divPosSeqInst`*: int
    `divNegSeqInst`*: int

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
  if this.divPosConstInst != nil:
    return this.divPosConstInst
  let divPosConstInstExpr = int((9837 div 13))
  this.divPosConstInst = divPosConstInstExpr
  if this.divPosConstInst != nil:
    return this.divPosConstInst

proc divNegConst(this: ExprIntDiv): int = 
  if this.divNegConstInst != nil:
    return this.divNegConstInst
  let divNegConstInstExpr = int((-9837 div 13))
  this.divNegConstInst = divNegConstInstExpr
  if this.divNegConstInst != nil:
    return this.divNegConstInst

proc divPosSeq(this: ExprIntDiv): int = 
  if this.divPosSeqInst != nil:
    return this.divPosSeqInst
  let divPosSeqInstExpr = int((this.intU div 13))
  this.divPosSeqInst = divPosSeqInstExpr
  if this.divPosSeqInst != nil:
    return this.divPosSeqInst

proc divNegSeq(this: ExprIntDiv): int = 
  if this.divNegSeqInst != nil:
    return this.divNegSeqInst
  let divNegSeqInstExpr = int((this.intS div 13))
  this.divNegSeqInst = divNegSeqInstExpr
  if this.divNegSeqInst != nil:
    return this.divNegSeqInst

proc fromFile*(_: typedesc[ExprIntDiv], filename: string): ExprIntDiv =
  ExprIntDiv.read(newKaitaiFileStream(filename), nil, nil)


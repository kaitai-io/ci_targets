import kaitai_struct_nim_runtime
import options

type
  ExprIntDiv* = ref object of KaitaiStruct
    `intU`*: uint32
    `intS`*: int32
    `parent`*: KaitaiStruct
    `divNegConstInst`: int
    `divNegConstInstFlag`: bool
    `divNegSeqInst`: int
    `divNegSeqInstFlag`: bool
    `divPosConstInst`: int
    `divPosConstInstFlag`: bool
    `divPosSeqInst`: int
    `divPosSeqInstFlag`: bool

proc read*(_: typedesc[ExprIntDiv], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIntDiv

proc divNegConst*(this: ExprIntDiv): int
proc divNegSeq*(this: ExprIntDiv): int
proc divPosConst*(this: ExprIntDiv): int
proc divPosSeq*(this: ExprIntDiv): int

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

proc divNegConst(this: ExprIntDiv): int = 
  if this.divNegConstInstFlag:
    return this.divNegConstInst
  let divNegConstInstExpr = int((-9837 div 13))
  this.divNegConstInst = divNegConstInstExpr
  this.divNegConstInstFlag = true
  return this.divNegConstInst

proc divNegSeq(this: ExprIntDiv): int = 
  if this.divNegSeqInstFlag:
    return this.divNegSeqInst
  let divNegSeqInstExpr = int((this.intS div 13))
  this.divNegSeqInst = divNegSeqInstExpr
  this.divNegSeqInstFlag = true
  return this.divNegSeqInst

proc divPosConst(this: ExprIntDiv): int = 
  if this.divPosConstInstFlag:
    return this.divPosConstInst
  let divPosConstInstExpr = int((9837 div 13))
  this.divPosConstInst = divPosConstInstExpr
  this.divPosConstInstFlag = true
  return this.divPosConstInst

proc divPosSeq(this: ExprIntDiv): int = 
  if this.divPosSeqInstFlag:
    return this.divPosSeqInst
  let divPosSeqInstExpr = int((this.intU div 13))
  this.divPosSeqInst = divPosSeqInstExpr
  this.divPosSeqInstFlag = true
  return this.divPosSeqInst

proc fromFile*(_: typedesc[ExprIntDiv], filename: string): ExprIntDiv =
  ExprIntDiv.read(newKaitaiFileStream(filename), nil, nil)


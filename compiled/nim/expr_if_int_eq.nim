import kaitai_struct_nim_runtime
import options

type
  ExprIfIntEq* = ref object of KaitaiStruct
    `skip`*: seq[byte]
    `seq`*: int16
    `seqIf`*: int16
    `parent`*: KaitaiStruct
    `calcInst`: int
    `calcInstFlag`: bool
    `calcEqCalcIfInst`: bool
    `calcEqCalcIfInstFlag`: bool
    `calcEqLitInst`: bool
    `calcEqLitInstFlag`: bool
    `calcEqSeqIfInst`: bool
    `calcEqSeqIfInstFlag`: bool
    `calcIfInst`: int
    `calcIfInstFlag`: bool
    `calcIfEqLitInst`: bool
    `calcIfEqLitInstFlag`: bool
    `calcIfEqSeqIfInst`: bool
    `calcIfEqSeqIfInstFlag`: bool
    `seqEqCalcInst`: bool
    `seqEqCalcInstFlag`: bool
    `seqEqCalcIfInst`: bool
    `seqEqCalcIfInstFlag`: bool
    `seqEqLitInst`: bool
    `seqEqLitInstFlag`: bool
    `seqEqSeqIfInst`: bool
    `seqEqSeqIfInstFlag`: bool
    `seqIfEqLitInst`: bool
    `seqIfEqLitInstFlag`: bool

proc read*(_: typedesc[ExprIfIntEq], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIfIntEq

proc calc*(this: ExprIfIntEq): int
proc calcEqCalcIf*(this: ExprIfIntEq): bool
proc calcEqLit*(this: ExprIfIntEq): bool
proc calcEqSeqIf*(this: ExprIfIntEq): bool
proc calcIf*(this: ExprIfIntEq): int
proc calcIfEqLit*(this: ExprIfIntEq): bool
proc calcIfEqSeqIf*(this: ExprIfIntEq): bool
proc seqEqCalc*(this: ExprIfIntEq): bool
proc seqEqCalcIf*(this: ExprIfIntEq): bool
proc seqEqLit*(this: ExprIfIntEq): bool
proc seqEqSeqIf*(this: ExprIfIntEq): bool
proc seqIfEqLit*(this: ExprIfIntEq): bool

proc read*(_: typedesc[ExprIfIntEq], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIfIntEq =
  template this: untyped = result
  this = new(ExprIfIntEq)
  let root = if root == nil: cast[ExprIfIntEq](this) else: cast[ExprIfIntEq](root)
  this.io = io
  this.root = root
  this.parent = parent

  let skipExpr = this.io.readBytes(int(2))
  this.skip = skipExpr
  let seqExpr = this.io.readS2le()
  this.seq = seqExpr
  if true:
    let seqIfExpr = this.io.readS2le()
    this.seqIf = seqIfExpr

proc calc(this: ExprIfIntEq): int = 
  if this.calcInstFlag:
    return this.calcInst
  let calcInstExpr = int(16705)
  this.calcInst = calcInstExpr
  this.calcInstFlag = true
  return this.calcInst

proc calcEqCalcIf(this: ExprIfIntEq): bool = 
  if this.calcEqCalcIfInstFlag:
    return this.calcEqCalcIfInst
  let calcEqCalcIfInstExpr = bool(this.calc == this.calcIf)
  this.calcEqCalcIfInst = calcEqCalcIfInstExpr
  this.calcEqCalcIfInstFlag = true
  return this.calcEqCalcIfInst

proc calcEqLit(this: ExprIfIntEq): bool = 
  if this.calcEqLitInstFlag:
    return this.calcEqLitInst
  let calcEqLitInstExpr = bool(this.calc == 16705)
  this.calcEqLitInst = calcEqLitInstExpr
  this.calcEqLitInstFlag = true
  return this.calcEqLitInst

proc calcEqSeqIf(this: ExprIfIntEq): bool = 
  if this.calcEqSeqIfInstFlag:
    return this.calcEqSeqIfInst
  let calcEqSeqIfInstExpr = bool(this.calc == this.seqIf)
  this.calcEqSeqIfInst = calcEqSeqIfInstExpr
  this.calcEqSeqIfInstFlag = true
  return this.calcEqSeqIfInst

proc calcIf(this: ExprIfIntEq): int = 
  if this.calcIfInstFlag:
    return this.calcIfInst
  if true:
    let calcIfInstExpr = int(16705)
    this.calcIfInst = calcIfInstExpr
  this.calcIfInstFlag = true
  return this.calcIfInst

proc calcIfEqLit(this: ExprIfIntEq): bool = 
  if this.calcIfEqLitInstFlag:
    return this.calcIfEqLitInst
  let calcIfEqLitInstExpr = bool(this.calcIf == 16705)
  this.calcIfEqLitInst = calcIfEqLitInstExpr
  this.calcIfEqLitInstFlag = true
  return this.calcIfEqLitInst

proc calcIfEqSeqIf(this: ExprIfIntEq): bool = 
  if this.calcIfEqSeqIfInstFlag:
    return this.calcIfEqSeqIfInst
  let calcIfEqSeqIfInstExpr = bool(this.calcIf == this.seqIf)
  this.calcIfEqSeqIfInst = calcIfEqSeqIfInstExpr
  this.calcIfEqSeqIfInstFlag = true
  return this.calcIfEqSeqIfInst

proc seqEqCalc(this: ExprIfIntEq): bool = 
  if this.seqEqCalcInstFlag:
    return this.seqEqCalcInst
  let seqEqCalcInstExpr = bool(this.seq == this.calc)
  this.seqEqCalcInst = seqEqCalcInstExpr
  this.seqEqCalcInstFlag = true
  return this.seqEqCalcInst

proc seqEqCalcIf(this: ExprIfIntEq): bool = 
  if this.seqEqCalcIfInstFlag:
    return this.seqEqCalcIfInst
  let seqEqCalcIfInstExpr = bool(this.seq == this.calcIf)
  this.seqEqCalcIfInst = seqEqCalcIfInstExpr
  this.seqEqCalcIfInstFlag = true
  return this.seqEqCalcIfInst

proc seqEqLit(this: ExprIfIntEq): bool = 
  if this.seqEqLitInstFlag:
    return this.seqEqLitInst
  let seqEqLitInstExpr = bool(this.seq == 16705)
  this.seqEqLitInst = seqEqLitInstExpr
  this.seqEqLitInstFlag = true
  return this.seqEqLitInst

proc seqEqSeqIf(this: ExprIfIntEq): bool = 
  if this.seqEqSeqIfInstFlag:
    return this.seqEqSeqIfInst
  let seqEqSeqIfInstExpr = bool(this.seq == this.seqIf)
  this.seqEqSeqIfInst = seqEqSeqIfInstExpr
  this.seqEqSeqIfInstFlag = true
  return this.seqEqSeqIfInst

proc seqIfEqLit(this: ExprIfIntEq): bool = 
  if this.seqIfEqLitInstFlag:
    return this.seqIfEqLitInst
  let seqIfEqLitInstExpr = bool(this.seqIf == 16705)
  this.seqIfEqLitInst = seqIfEqLitInstExpr
  this.seqIfEqLitInstFlag = true
  return this.seqIfEqLitInst

proc fromFile*(_: typedesc[ExprIfIntEq], filename: string): ExprIfIntEq =
  ExprIfIntEq.read(newKaitaiFileStream(filename), nil, nil)


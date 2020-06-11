import kaitai_struct_nim_runtime
import options

type
  ExprMod* = ref object of KaitaiStruct
    `intU`*: uint32
    `intS`*: int32
    `parent`*: KaitaiStruct
    `modPosConstInst`*: int
    `modNegConstInst`*: int
    `modPosSeqInst`*: int
    `modNegSeqInst`*: int

proc read*(_: typedesc[ExprMod], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprMod

proc modPosConst*(this: ExprMod): int
proc modNegConst*(this: ExprMod): int
proc modPosSeq*(this: ExprMod): int
proc modNegSeq*(this: ExprMod): int

proc read*(_: typedesc[ExprMod], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprMod =
  template this: untyped = result
  this = new(ExprMod)
  let root = if root == nil: cast[ExprMod](this) else: cast[ExprMod](root)
  this.io = io
  this.root = root
  this.parent = parent

  let intUExpr = this.io.readU4le()
  this.intU = intUExpr
  let intSExpr = this.io.readS4le()
  this.intS = intSExpr

proc modPosConst(this: ExprMod): int = 
  if this.modPosConstInst != nil:
    return this.modPosConstInst
  let modPosConstInstExpr = int((9837 %%% 13))
  this.modPosConstInst = modPosConstInstExpr
  if this.modPosConstInst != nil:
    return this.modPosConstInst

proc modNegConst(this: ExprMod): int = 
  if this.modNegConstInst != nil:
    return this.modNegConstInst
  let modNegConstInstExpr = int((-9837 %%% 13))
  this.modNegConstInst = modNegConstInstExpr
  if this.modNegConstInst != nil:
    return this.modNegConstInst

proc modPosSeq(this: ExprMod): int = 
  if this.modPosSeqInst != nil:
    return this.modPosSeqInst
  let modPosSeqInstExpr = int((this.intU %%% 13))
  this.modPosSeqInst = modPosSeqInstExpr
  if this.modPosSeqInst != nil:
    return this.modPosSeqInst

proc modNegSeq(this: ExprMod): int = 
  if this.modNegSeqInst != nil:
    return this.modNegSeqInst
  let modNegSeqInstExpr = int((this.intS %%% 13))
  this.modNegSeqInst = modNegSeqInstExpr
  if this.modNegSeqInst != nil:
    return this.modNegSeqInst

proc fromFile*(_: typedesc[ExprMod], filename: string): ExprMod =
  ExprMod.read(newKaitaiFileStream(filename), nil, nil)


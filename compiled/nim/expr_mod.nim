import kaitai_struct_nim_runtime
import options

type
  ExprMod* = ref object of KaitaiStruct
    intU*: uint32
    intS*: int32
    parent*: KaitaiStruct
    modPosConstInst*: Option[int]
    modNegConstInst*: Option[int]
    modPosSeqInst*: Option[int]
    modNegSeqInst*: Option[int]

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
  if isSome(this.modPosConstInst):
    return get(this.modPosConstInst)
  let modPosConstInstExpr = int((9837 %%% 13))
  this.modPosConstInst = modPosConstInstExpr
  if isSome(this.modPosConstInst):
    return get(this.modPosConstInst)

proc modNegConst(this: ExprMod): int = 
  if isSome(this.modNegConstInst):
    return get(this.modNegConstInst)
  let modNegConstInstExpr = int((-9837 %%% 13))
  this.modNegConstInst = modNegConstInstExpr
  if isSome(this.modNegConstInst):
    return get(this.modNegConstInst)

proc modPosSeq(this: ExprMod): int = 
  if isSome(this.modPosSeqInst):
    return get(this.modPosSeqInst)
  let modPosSeqInstExpr = int((this.intU %%% 13))
  this.modPosSeqInst = modPosSeqInstExpr
  if isSome(this.modPosSeqInst):
    return get(this.modPosSeqInst)

proc modNegSeq(this: ExprMod): int = 
  if isSome(this.modNegSeqInst):
    return get(this.modNegSeqInst)
  let modNegSeqInstExpr = int((this.intS %%% 13))
  this.modNegSeqInst = modNegSeqInstExpr
  if isSome(this.modNegSeqInst):
    return get(this.modNegSeqInst)

proc fromFile*(_: typedesc[ExprMod], filename: string): ExprMod =
  ExprMod.read(newKaitaiFileStream(filename), nil, nil)


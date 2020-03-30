import kaitai_struct_nim_runtime
import options

type
  ExprMod* = ref ExprModObj
  ExprModObj* = object
    intU*: uint32
    intS*: int32
    io*: KaitaiStream
    root*: ExprMod
    parent*: ref RootObj
    modPosConstInst*: Option[int]
    modNegConstInst*: Option[int]
    modPosSeqInst*: Option[int]
    modNegSeqInst*: Option[int]

## ExprMod
proc modPosConst*(this: ExprMod): int
proc modNegConst*(this: ExprMod): int
proc modPosSeq*(this: ExprMod): int
proc modNegSeq*(this: ExprMod): int
proc modPosConst(this: ExprMod): int = 
  if isSome(this.modPosConstInst):
    return get(this.modPosConstInst)
  this.modPosConstInst = some((9837 %%% 13))
  return get(this.modPosConstInst)

proc modNegConst(this: ExprMod): int = 
  if isSome(this.modNegConstInst):
    return get(this.modNegConstInst)
  this.modNegConstInst = some((-9837 %%% 13))
  return get(this.modNegConstInst)

proc modPosSeq(this: ExprMod): int = 
  if isSome(this.modPosSeqInst):
    return get(this.modPosSeqInst)
  this.modPosSeqInst = some((this.intU %%% 13))
  return get(this.modPosSeqInst)

proc modNegSeq(this: ExprMod): int = 
  if isSome(this.modNegSeqInst):
    return get(this.modNegSeqInst)
  this.modNegSeqInst = some((this.intS %%% 13))
  return get(this.modNegSeqInst)

proc read*(_: typedesc[ExprMod], io: KaitaiStream, root: ExprMod, parent: ref RootObj): ExprMod =
  let this = new(ExprMod)
  let root = if root == nil: cast[ExprMod](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.intU = this.io.readU4le()
  this.intS = this.io.readS4le()
  result = this

proc fromFile*(_: typedesc[ExprMod], filename: string): ExprMod =
  ExprMod.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprModObj) =
  close(x.io)


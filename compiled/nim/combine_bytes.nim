import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  CombineBytes* = ref object of KaitaiStruct
    bytesTerm*: string
    bytesLimit*: string
    bytesEos*: string
    parent*: KaitaiStruct
    limitOrCalcInst*: Option[string]
    termOrLimitInst*: Option[string]
    limitOrEosInst*: Option[string]
    eosOrCalcInst*: Option[string]
    termOrCalcInst*: Option[string]
    bytesCalcInst*: Option[string]
    termOrEosInst*: Option[string]

proc read*(_: typedesc[CombineBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): CombineBytes

proc limitOrCalc*(this: CombineBytes): string
proc termOrLimit*(this: CombineBytes): string
proc limitOrEos*(this: CombineBytes): string
proc eosOrCalc*(this: CombineBytes): string
proc termOrCalc*(this: CombineBytes): string
proc bytesCalc*(this: CombineBytes): string
proc termOrEos*(this: CombineBytes): string

proc read*(_: typedesc[CombineBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): CombineBytes =
  template this: untyped = result
  this = new(CombineBytes)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.bytesTerm = this.io.readBytesTerm(124, false, true, true)
  this.bytesLimit = this.io.readBytes(int(4))
  this.bytesEos = this.io.readBytesFull()

proc limitOrCalc(this: CombineBytes): string = 
  if isSome(this.limitOrCalcInst):
    return get(this.limitOrCalcInst)
  this.limitOrCalcInst = some((if false: this.bytesLimit else: this.bytesCalc))
  if isSome(this.limitOrCalcInst):
    return get(this.limitOrCalcInst)

proc termOrLimit(this: CombineBytes): string = 
  if isSome(this.termOrLimitInst):
    return get(this.termOrLimitInst)
  this.termOrLimitInst = some((if true: this.bytesTerm else: this.bytesLimit))
  if isSome(this.termOrLimitInst):
    return get(this.termOrLimitInst)

proc limitOrEos(this: CombineBytes): string = 
  if isSome(this.limitOrEosInst):
    return get(this.limitOrEosInst)
  this.limitOrEosInst = some((if true: this.bytesLimit else: this.bytesEos))
  if isSome(this.limitOrEosInst):
    return get(this.limitOrEosInst)

proc eosOrCalc(this: CombineBytes): string = 
  if isSome(this.eosOrCalcInst):
    return get(this.eosOrCalcInst)
  this.eosOrCalcInst = some((if true: this.bytesEos else: this.bytesCalc))
  if isSome(this.eosOrCalcInst):
    return get(this.eosOrCalcInst)

proc termOrCalc(this: CombineBytes): string = 
  if isSome(this.termOrCalcInst):
    return get(this.termOrCalcInst)
  this.termOrCalcInst = some((if true: this.bytesTerm else: this.bytesCalc))
  if isSome(this.termOrCalcInst):
    return get(this.termOrCalcInst)

proc bytesCalc(this: CombineBytes): string = 
  if isSome(this.bytesCalcInst):
    return get(this.bytesCalcInst)
  this.bytesCalcInst = some(@[82'i8, 110, 68].toString)
  if isSome(this.bytesCalcInst):
    return get(this.bytesCalcInst)

proc termOrEos(this: CombineBytes): string = 
  if isSome(this.termOrEosInst):
    return get(this.termOrEosInst)
  this.termOrEosInst = some((if false: this.bytesTerm else: this.bytesEos))
  if isSome(this.termOrEosInst):
    return get(this.termOrEosInst)

proc fromFile*(_: typedesc[CombineBytes], filename: string): CombineBytes =
  CombineBytes.read(newKaitaiFileStream(filename), nil, nil)


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
    limitOrCalcInst*: string
    termOrLimitInst*: string
    limitOrEosInst*: string
    eosOrCalcInst*: string
    termOrCalcInst*: string
    bytesCalcInst*: string
    termOrEosInst*: string

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
  let root = if root == nil: cast[CombineBytes](this) else: cast[CombineBytes](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.bytesTerm = this.io.readBytesTerm(124, false, true, true)
  this.bytesLimit = this.io.readBytes(int(4))
  this.bytesEos = this.io.readBytesFull()

proc limitOrCalc(this: CombineBytes): string = 
  if this.limitOrCalcInst.len != 0:
    return this.limitOrCalcInst
  this.limitOrCalcInst = string((if false: this.bytesLimit else: this.bytesCalc))
  if this.limitOrCalcInst.len != 0:
    return this.limitOrCalcInst

proc termOrLimit(this: CombineBytes): string = 
  if this.termOrLimitInst.len != 0:
    return this.termOrLimitInst
  this.termOrLimitInst = string((if true: this.bytesTerm else: this.bytesLimit))
  if this.termOrLimitInst.len != 0:
    return this.termOrLimitInst

proc limitOrEos(this: CombineBytes): string = 
  if this.limitOrEosInst.len != 0:
    return this.limitOrEosInst
  this.limitOrEosInst = string((if true: this.bytesLimit else: this.bytesEos))
  if this.limitOrEosInst.len != 0:
    return this.limitOrEosInst

proc eosOrCalc(this: CombineBytes): string = 
  if this.eosOrCalcInst.len != 0:
    return this.eosOrCalcInst
  this.eosOrCalcInst = string((if true: this.bytesEos else: this.bytesCalc))
  if this.eosOrCalcInst.len != 0:
    return this.eosOrCalcInst

proc termOrCalc(this: CombineBytes): string = 
  if this.termOrCalcInst.len != 0:
    return this.termOrCalcInst
  this.termOrCalcInst = string((if true: this.bytesTerm else: this.bytesCalc))
  if this.termOrCalcInst.len != 0:
    return this.termOrCalcInst

proc bytesCalc(this: CombineBytes): string = 
  if this.bytesCalcInst.len != 0:
    return this.bytesCalcInst
  this.bytesCalcInst = string(@[82'i8, 110, 68].toString)
  if this.bytesCalcInst.len != 0:
    return this.bytesCalcInst

proc termOrEos(this: CombineBytes): string = 
  if this.termOrEosInst.len != 0:
    return this.termOrEosInst
  this.termOrEosInst = string((if false: this.bytesTerm else: this.bytesEos))
  if this.termOrEosInst.len != 0:
    return this.termOrEosInst

proc fromFile*(_: typedesc[CombineBytes], filename: string): CombineBytes =
  CombineBytes.read(newKaitaiFileStream(filename), nil, nil)


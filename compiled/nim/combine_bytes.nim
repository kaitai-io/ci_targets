import kaitai_struct_nim_runtime
import options

type
  CombineBytes* = ref object of KaitaiStruct
    bytesTerm*: seq[byte]
    bytesLimit*: seq[byte]
    bytesEos*: seq[byte]
    parent*: KaitaiStruct
    limitOrCalcInst*: seq[byte]
    termOrLimitInst*: seq[byte]
    limitOrEosInst*: seq[byte]
    eosOrCalcInst*: seq[byte]
    termOrCalcInst*: seq[byte]
    bytesCalcInst*: seq[byte]
    termOrEosInst*: seq[byte]

proc read*(_: typedesc[CombineBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): CombineBytes

proc limitOrCalc*(this: CombineBytes): seq[byte]
proc termOrLimit*(this: CombineBytes): seq[byte]
proc limitOrEos*(this: CombineBytes): seq[byte]
proc eosOrCalc*(this: CombineBytes): seq[byte]
proc termOrCalc*(this: CombineBytes): seq[byte]
proc bytesCalc*(this: CombineBytes): seq[byte]
proc termOrEos*(this: CombineBytes): seq[byte]

proc read*(_: typedesc[CombineBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): CombineBytes =
  template this: untyped = result
  this = new(CombineBytes)
  let root = if root == nil: cast[CombineBytes](this) else: cast[CombineBytes](root)
  this.io = io
  this.root = root
  this.parent = parent

  let bytesTermExpr = this.io.readBytesTerm(124, false, true, true)
  this.bytesTerm = bytesTermExpr
  let bytesLimitExpr = this.io.readBytes(int(4))
  this.bytesLimit = bytesLimitExpr
  let bytesEosExpr = this.io.readBytesFull()
  this.bytesEos = bytesEosExpr

proc limitOrCalc(this: CombineBytes): seq[byte] = 
  if this.limitOrCalcInst.len != 0:
    return this.limitOrCalcInst
  let limitOrCalcInstExpr = seq[byte]((if false: this.bytesLimit else: this.bytesCalc))
  this.limitOrCalcInst = limitOrCalcInstExpr
  if this.limitOrCalcInst.len != 0:
    return this.limitOrCalcInst

proc termOrLimit(this: CombineBytes): seq[byte] = 
  if this.termOrLimitInst.len != 0:
    return this.termOrLimitInst
  let termOrLimitInstExpr = seq[byte]((if true: this.bytesTerm else: this.bytesLimit))
  this.termOrLimitInst = termOrLimitInstExpr
  if this.termOrLimitInst.len != 0:
    return this.termOrLimitInst

proc limitOrEos(this: CombineBytes): seq[byte] = 
  if this.limitOrEosInst.len != 0:
    return this.limitOrEosInst
  let limitOrEosInstExpr = seq[byte]((if true: this.bytesLimit else: this.bytesEos))
  this.limitOrEosInst = limitOrEosInstExpr
  if this.limitOrEosInst.len != 0:
    return this.limitOrEosInst

proc eosOrCalc(this: CombineBytes): seq[byte] = 
  if this.eosOrCalcInst.len != 0:
    return this.eosOrCalcInst
  let eosOrCalcInstExpr = seq[byte]((if true: this.bytesEos else: this.bytesCalc))
  this.eosOrCalcInst = eosOrCalcInstExpr
  if this.eosOrCalcInst.len != 0:
    return this.eosOrCalcInst

proc termOrCalc(this: CombineBytes): seq[byte] = 
  if this.termOrCalcInst.len != 0:
    return this.termOrCalcInst
  let termOrCalcInstExpr = seq[byte]((if true: this.bytesTerm else: this.bytesCalc))
  this.termOrCalcInst = termOrCalcInstExpr
  if this.termOrCalcInst.len != 0:
    return this.termOrCalcInst

proc bytesCalc(this: CombineBytes): seq[byte] = 
  if this.bytesCalcInst.len != 0:
    return this.bytesCalcInst
  let bytesCalcInstExpr = seq[byte](@[82'u8, 110'u8, 68'u8])
  this.bytesCalcInst = bytesCalcInstExpr
  if this.bytesCalcInst.len != 0:
    return this.bytesCalcInst

proc termOrEos(this: CombineBytes): seq[byte] = 
  if this.termOrEosInst.len != 0:
    return this.termOrEosInst
  let termOrEosInstExpr = seq[byte]((if false: this.bytesTerm else: this.bytesEos))
  this.termOrEosInst = termOrEosInstExpr
  if this.termOrEosInst.len != 0:
    return this.termOrEosInst

proc fromFile*(_: typedesc[CombineBytes], filename: string): CombineBytes =
  CombineBytes.read(newKaitaiFileStream(filename), nil, nil)


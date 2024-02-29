import kaitai_struct_nim_runtime
import options

type
  CombineBytes* = ref object of KaitaiStruct
    `bytesTerm`*: seq[byte]
    `bytesLimit`*: seq[byte]
    `bytesEos`*: seq[byte]
    `parent`*: KaitaiStruct
    `termOrEosInst`: seq[byte]
    `termOrEosInstFlag`: bool
    `termOrLimitInst`: seq[byte]
    `termOrLimitInstFlag`: bool
    `limitOrCalcInst`: seq[byte]
    `limitOrCalcInstFlag`: bool
    `termOrCalcInst`: seq[byte]
    `termOrCalcInstFlag`: bool
    `limitOrEosInst`: seq[byte]
    `limitOrEosInstFlag`: bool
    `bytesCalcInst`: seq[byte]
    `bytesCalcInstFlag`: bool
    `eosOrCalcInst`: seq[byte]
    `eosOrCalcInstFlag`: bool

proc read*(_: typedesc[CombineBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): CombineBytes

proc termOrEos*(this: CombineBytes): seq[byte]
proc termOrLimit*(this: CombineBytes): seq[byte]
proc limitOrCalc*(this: CombineBytes): seq[byte]
proc termOrCalc*(this: CombineBytes): seq[byte]
proc limitOrEos*(this: CombineBytes): seq[byte]
proc bytesCalc*(this: CombineBytes): seq[byte]
proc eosOrCalc*(this: CombineBytes): seq[byte]

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

proc termOrEos(this: CombineBytes): seq[byte] = 
  if this.termOrEosInstFlag:
    return this.termOrEosInst
  let termOrEosInstExpr = seq[byte]((if false: this.bytesTerm else: this.bytesEos))
  this.termOrEosInst = termOrEosInstExpr
  this.termOrEosInstFlag = true
  return this.termOrEosInst

proc termOrLimit(this: CombineBytes): seq[byte] = 
  if this.termOrLimitInstFlag:
    return this.termOrLimitInst
  let termOrLimitInstExpr = seq[byte]((if true: this.bytesTerm else: this.bytesLimit))
  this.termOrLimitInst = termOrLimitInstExpr
  this.termOrLimitInstFlag = true
  return this.termOrLimitInst

proc limitOrCalc(this: CombineBytes): seq[byte] = 
  if this.limitOrCalcInstFlag:
    return this.limitOrCalcInst
  let limitOrCalcInstExpr = seq[byte]((if false: this.bytesLimit else: this.bytesCalc))
  this.limitOrCalcInst = limitOrCalcInstExpr
  this.limitOrCalcInstFlag = true
  return this.limitOrCalcInst

proc termOrCalc(this: CombineBytes): seq[byte] = 
  if this.termOrCalcInstFlag:
    return this.termOrCalcInst
  let termOrCalcInstExpr = seq[byte]((if true: this.bytesTerm else: this.bytesCalc))
  this.termOrCalcInst = termOrCalcInstExpr
  this.termOrCalcInstFlag = true
  return this.termOrCalcInst

proc limitOrEos(this: CombineBytes): seq[byte] = 
  if this.limitOrEosInstFlag:
    return this.limitOrEosInst
  let limitOrEosInstExpr = seq[byte]((if true: this.bytesLimit else: this.bytesEos))
  this.limitOrEosInst = limitOrEosInstExpr
  this.limitOrEosInstFlag = true
  return this.limitOrEosInst

proc bytesCalc(this: CombineBytes): seq[byte] = 
  if this.bytesCalcInstFlag:
    return this.bytesCalcInst
  let bytesCalcInstExpr = seq[byte](@[82'u8, 110'u8, 68'u8])
  this.bytesCalcInst = bytesCalcInstExpr
  this.bytesCalcInstFlag = true
  return this.bytesCalcInst

proc eosOrCalc(this: CombineBytes): seq[byte] = 
  if this.eosOrCalcInstFlag:
    return this.eosOrCalcInst
  let eosOrCalcInstExpr = seq[byte]((if true: this.bytesEos else: this.bytesCalc))
  this.eosOrCalcInst = eosOrCalcInstExpr
  this.eosOrCalcInstFlag = true
  return this.eosOrCalcInst

proc fromFile*(_: typedesc[CombineBytes], filename: string): CombineBytes =
  CombineBytes.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  CombineStr* = ref object of KaitaiStruct
    `strTerm`*: string
    `strLimit`*: string
    `strEos`*: string
    `parent`*: KaitaiStruct
    `calcBytesInst`: seq[byte]
    `calcBytesInstFlag`: bool
    `calcOrCalcBytesInst`: string
    `calcOrCalcBytesInstFlag`: bool
    `eosOrCalcInst`: string
    `eosOrCalcInstFlag`: bool
    `eosOrCalcBytesInst`: string
    `eosOrCalcBytesInstFlag`: bool
    `limitOrCalcInst`: string
    `limitOrCalcInstFlag`: bool
    `limitOrCalcBytesInst`: string
    `limitOrCalcBytesInstFlag`: bool
    `limitOrEosInst`: string
    `limitOrEosInstFlag`: bool
    `strCalcInst`: string
    `strCalcInstFlag`: bool
    `strCalcBytesInst`: string
    `strCalcBytesInstFlag`: bool
    `termOrCalcInst`: string
    `termOrCalcInstFlag`: bool
    `termOrCalcBytesInst`: string
    `termOrCalcBytesInstFlag`: bool
    `termOrEosInst`: string
    `termOrEosInstFlag`: bool
    `termOrLimitInst`: string
    `termOrLimitInstFlag`: bool

proc read*(_: typedesc[CombineStr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): CombineStr

proc calcBytes*(this: CombineStr): seq[byte]
proc calcOrCalcBytes*(this: CombineStr): string
proc eosOrCalc*(this: CombineStr): string
proc eosOrCalcBytes*(this: CombineStr): string
proc limitOrCalc*(this: CombineStr): string
proc limitOrCalcBytes*(this: CombineStr): string
proc limitOrEos*(this: CombineStr): string
proc strCalc*(this: CombineStr): string
proc strCalcBytes*(this: CombineStr): string
proc termOrCalc*(this: CombineStr): string
proc termOrCalcBytes*(this: CombineStr): string
proc termOrEos*(this: CombineStr): string
proc termOrLimit*(this: CombineStr): string

proc read*(_: typedesc[CombineStr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): CombineStr =
  template this: untyped = result
  this = new(CombineStr)
  let root = if root == nil: cast[CombineStr](this) else: cast[CombineStr](root)
  this.io = io
  this.root = root
  this.parent = parent

  let strTermExpr = encode(this.io.readBytesTerm(124, false, true, true), "ASCII")
  this.strTerm = strTermExpr
  let strLimitExpr = encode(this.io.readBytes(int(4)), "ASCII")
  this.strLimit = strLimitExpr
  let strEosExpr = encode(this.io.readBytesFull(), "ASCII")
  this.strEos = strEosExpr

proc calcBytes(this: CombineStr): seq[byte] = 
  if this.calcBytesInstFlag:
    return this.calcBytesInst
  let calcBytesInstExpr = seq[byte](@[98'u8, 97'u8, 122'u8])
  this.calcBytesInst = calcBytesInstExpr
  this.calcBytesInstFlag = true
  return this.calcBytesInst

proc calcOrCalcBytes(this: CombineStr): string = 
  if this.calcOrCalcBytesInstFlag:
    return this.calcOrCalcBytesInst
  let calcOrCalcBytesInstExpr = string((if false: this.strCalc else: this.strCalcBytes))
  this.calcOrCalcBytesInst = calcOrCalcBytesInstExpr
  this.calcOrCalcBytesInstFlag = true
  return this.calcOrCalcBytesInst

proc eosOrCalc(this: CombineStr): string = 
  if this.eosOrCalcInstFlag:
    return this.eosOrCalcInst
  let eosOrCalcInstExpr = string((if false: this.strEos else: this.strCalc))
  this.eosOrCalcInst = eosOrCalcInstExpr
  this.eosOrCalcInstFlag = true
  return this.eosOrCalcInst

proc eosOrCalcBytes(this: CombineStr): string = 
  if this.eosOrCalcBytesInstFlag:
    return this.eosOrCalcBytesInst
  let eosOrCalcBytesInstExpr = string((if true: this.strEos else: this.strCalcBytes))
  this.eosOrCalcBytesInst = eosOrCalcBytesInstExpr
  this.eosOrCalcBytesInstFlag = true
  return this.eosOrCalcBytesInst

proc limitOrCalc(this: CombineStr): string = 
  if this.limitOrCalcInstFlag:
    return this.limitOrCalcInst
  let limitOrCalcInstExpr = string((if false: this.strLimit else: this.strCalc))
  this.limitOrCalcInst = limitOrCalcInstExpr
  this.limitOrCalcInstFlag = true
  return this.limitOrCalcInst

proc limitOrCalcBytes(this: CombineStr): string = 
  if this.limitOrCalcBytesInstFlag:
    return this.limitOrCalcBytesInst
  let limitOrCalcBytesInstExpr = string((if true: this.strLimit else: this.strCalcBytes))
  this.limitOrCalcBytesInst = limitOrCalcBytesInstExpr
  this.limitOrCalcBytesInstFlag = true
  return this.limitOrCalcBytesInst

proc limitOrEos(this: CombineStr): string = 
  if this.limitOrEosInstFlag:
    return this.limitOrEosInst
  let limitOrEosInstExpr = string((if true: this.strLimit else: this.strEos))
  this.limitOrEosInst = limitOrEosInstExpr
  this.limitOrEosInstFlag = true
  return this.limitOrEosInst

proc strCalc(this: CombineStr): string = 
  if this.strCalcInstFlag:
    return this.strCalcInst
  let strCalcInstExpr = string("bar")
  this.strCalcInst = strCalcInstExpr
  this.strCalcInstFlag = true
  return this.strCalcInst

proc strCalcBytes(this: CombineStr): string = 
  if this.strCalcBytesInstFlag:
    return this.strCalcBytesInst
  let strCalcBytesInstExpr = string(encode(this.calcBytes, "ASCII"))
  this.strCalcBytesInst = strCalcBytesInstExpr
  this.strCalcBytesInstFlag = true
  return this.strCalcBytesInst

proc termOrCalc(this: CombineStr): string = 
  if this.termOrCalcInstFlag:
    return this.termOrCalcInst
  let termOrCalcInstExpr = string((if true: this.strTerm else: this.strCalc))
  this.termOrCalcInst = termOrCalcInstExpr
  this.termOrCalcInstFlag = true
  return this.termOrCalcInst

proc termOrCalcBytes(this: CombineStr): string = 
  if this.termOrCalcBytesInstFlag:
    return this.termOrCalcBytesInst
  let termOrCalcBytesInstExpr = string((if false: this.strTerm else: this.strCalcBytes))
  this.termOrCalcBytesInst = termOrCalcBytesInstExpr
  this.termOrCalcBytesInstFlag = true
  return this.termOrCalcBytesInst

proc termOrEos(this: CombineStr): string = 
  if this.termOrEosInstFlag:
    return this.termOrEosInst
  let termOrEosInstExpr = string((if false: this.strTerm else: this.strEos))
  this.termOrEosInst = termOrEosInstExpr
  this.termOrEosInstFlag = true
  return this.termOrEosInst

proc termOrLimit(this: CombineStr): string = 
  if this.termOrLimitInstFlag:
    return this.termOrLimitInst
  let termOrLimitInstExpr = string((if true: this.strTerm else: this.strLimit))
  this.termOrLimitInst = termOrLimitInstExpr
  this.termOrLimitInstFlag = true
  return this.termOrLimitInst

proc fromFile*(_: typedesc[CombineStr], filename: string): CombineStr =
  CombineStr.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  CombineStr* = ref object of KaitaiStruct
    strTerm*: string
    strLimit*: string
    strEos*: string
    parent*: KaitaiStruct
    limitOrCalcBytesInst*: string
    limitOrCalcInst*: string
    termOrLimitInst*: string
    limitOrEosInst*: string
    calcOrCalcBytesInst*: string
    strCalcBytesInst*: string
    eosOrCalcInst*: string
    termOrCalcInst*: string
    termOrCalcBytesInst*: string
    termOrEosInst*: string
    strCalcInst*: string
    eosOrCalcBytesInst*: string
    calcBytesInst*: seq[byte]

proc read*(_: typedesc[CombineStr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): CombineStr

proc limitOrCalcBytes*(this: CombineStr): string
proc limitOrCalc*(this: CombineStr): string
proc termOrLimit*(this: CombineStr): string
proc limitOrEos*(this: CombineStr): string
proc calcOrCalcBytes*(this: CombineStr): string
proc strCalcBytes*(this: CombineStr): string
proc eosOrCalc*(this: CombineStr): string
proc termOrCalc*(this: CombineStr): string
proc termOrCalcBytes*(this: CombineStr): string
proc termOrEos*(this: CombineStr): string
proc strCalc*(this: CombineStr): string
proc eosOrCalcBytes*(this: CombineStr): string
proc calcBytes*(this: CombineStr): seq[byte]

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

proc limitOrCalcBytes(this: CombineStr): string = 
  if this.limitOrCalcBytesInst.len != 0:
    return this.limitOrCalcBytesInst
  let limitOrCalcBytesInstExpr = string((if true: this.strLimit else: this.strCalcBytes))
  this.limitOrCalcBytesInst = limitOrCalcBytesInstExpr
  if this.limitOrCalcBytesInst.len != 0:
    return this.limitOrCalcBytesInst

proc limitOrCalc(this: CombineStr): string = 
  if this.limitOrCalcInst.len != 0:
    return this.limitOrCalcInst
  let limitOrCalcInstExpr = string((if false: this.strLimit else: this.strCalc))
  this.limitOrCalcInst = limitOrCalcInstExpr
  if this.limitOrCalcInst.len != 0:
    return this.limitOrCalcInst

proc termOrLimit(this: CombineStr): string = 
  if this.termOrLimitInst.len != 0:
    return this.termOrLimitInst
  let termOrLimitInstExpr = string((if true: this.strTerm else: this.strLimit))
  this.termOrLimitInst = termOrLimitInstExpr
  if this.termOrLimitInst.len != 0:
    return this.termOrLimitInst

proc limitOrEos(this: CombineStr): string = 
  if this.limitOrEosInst.len != 0:
    return this.limitOrEosInst
  let limitOrEosInstExpr = string((if true: this.strLimit else: this.strEos))
  this.limitOrEosInst = limitOrEosInstExpr
  if this.limitOrEosInst.len != 0:
    return this.limitOrEosInst

proc calcOrCalcBytes(this: CombineStr): string = 
  if this.calcOrCalcBytesInst.len != 0:
    return this.calcOrCalcBytesInst
  let calcOrCalcBytesInstExpr = string((if false: this.strCalc else: this.strCalcBytes))
  this.calcOrCalcBytesInst = calcOrCalcBytesInstExpr
  if this.calcOrCalcBytesInst.len != 0:
    return this.calcOrCalcBytesInst

proc strCalcBytes(this: CombineStr): string = 
  if this.strCalcBytesInst.len != 0:
    return this.strCalcBytesInst
  let strCalcBytesInstExpr = string(encode(this.calcBytes, "ASCII"))
  this.strCalcBytesInst = strCalcBytesInstExpr
  if this.strCalcBytesInst.len != 0:
    return this.strCalcBytesInst

proc eosOrCalc(this: CombineStr): string = 
  if this.eosOrCalcInst.len != 0:
    return this.eosOrCalcInst
  let eosOrCalcInstExpr = string((if false: this.strEos else: this.strCalc))
  this.eosOrCalcInst = eosOrCalcInstExpr
  if this.eosOrCalcInst.len != 0:
    return this.eosOrCalcInst

proc termOrCalc(this: CombineStr): string = 
  if this.termOrCalcInst.len != 0:
    return this.termOrCalcInst
  let termOrCalcInstExpr = string((if true: this.strTerm else: this.strCalc))
  this.termOrCalcInst = termOrCalcInstExpr
  if this.termOrCalcInst.len != 0:
    return this.termOrCalcInst

proc termOrCalcBytes(this: CombineStr): string = 
  if this.termOrCalcBytesInst.len != 0:
    return this.termOrCalcBytesInst
  let termOrCalcBytesInstExpr = string((if false: this.strTerm else: this.strCalcBytes))
  this.termOrCalcBytesInst = termOrCalcBytesInstExpr
  if this.termOrCalcBytesInst.len != 0:
    return this.termOrCalcBytesInst

proc termOrEos(this: CombineStr): string = 
  if this.termOrEosInst.len != 0:
    return this.termOrEosInst
  let termOrEosInstExpr = string((if false: this.strTerm else: this.strEos))
  this.termOrEosInst = termOrEosInstExpr
  if this.termOrEosInst.len != 0:
    return this.termOrEosInst

proc strCalc(this: CombineStr): string = 
  if this.strCalcInst.len != 0:
    return this.strCalcInst
  let strCalcInstExpr = string("bar")
  this.strCalcInst = strCalcInstExpr
  if this.strCalcInst.len != 0:
    return this.strCalcInst

proc eosOrCalcBytes(this: CombineStr): string = 
  if this.eosOrCalcBytesInst.len != 0:
    return this.eosOrCalcBytesInst
  let eosOrCalcBytesInstExpr = string((if true: this.strEos else: this.strCalcBytes))
  this.eosOrCalcBytesInst = eosOrCalcBytesInstExpr
  if this.eosOrCalcBytesInst.len != 0:
    return this.eosOrCalcBytesInst

proc calcBytes(this: CombineStr): seq[byte] = 
  if this.calcBytesInst.len != 0:
    return this.calcBytesInst
  let calcBytesInstExpr = seq[byte](@[98'u8, 97'u8, 122'u8])
  this.calcBytesInst = calcBytesInstExpr
  if this.calcBytesInst.len != 0:
    return this.calcBytesInst

proc fromFile*(_: typedesc[CombineStr], filename: string): CombineStr =
  CombineStr.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options
import encodings

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

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
    calcBytesInst*: string

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
proc calcBytes*(this: CombineStr): string

proc read*(_: typedesc[CombineStr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): CombineStr =
  template this: untyped = result
  this = new(CombineStr)
  let root = if root == nil: cast[CombineStr](this) else: cast[CombineStr](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.strTerm = convert(this.io.readBytesTerm(124, false, true, true), srcEncoding = "ASCII")
  this.strLimit = convert(this.io.readBytes(int(4)), srcEncoding = "ASCII")
  this.strEos = convert(this.io.readBytesFull(), srcEncoding = "ASCII")

proc limitOrCalcBytes(this: CombineStr): string = 
  if this.limitOrCalcBytesInst.len != 0:
    return this.limitOrCalcBytesInst
  this.limitOrCalcBytesInst = string((if true: this.strLimit else: this.strCalcBytes))
  if this.limitOrCalcBytesInst.len != 0:
    return this.limitOrCalcBytesInst

proc limitOrCalc(this: CombineStr): string = 
  if this.limitOrCalcInst.len != 0:
    return this.limitOrCalcInst
  this.limitOrCalcInst = string((if false: this.strLimit else: this.strCalc))
  if this.limitOrCalcInst.len != 0:
    return this.limitOrCalcInst

proc termOrLimit(this: CombineStr): string = 
  if this.termOrLimitInst.len != 0:
    return this.termOrLimitInst
  this.termOrLimitInst = string((if true: this.strTerm else: this.strLimit))
  if this.termOrLimitInst.len != 0:
    return this.termOrLimitInst

proc limitOrEos(this: CombineStr): string = 
  if this.limitOrEosInst.len != 0:
    return this.limitOrEosInst
  this.limitOrEosInst = string((if true: this.strLimit else: this.strEos))
  if this.limitOrEosInst.len != 0:
    return this.limitOrEosInst

proc calcOrCalcBytes(this: CombineStr): string = 
  if this.calcOrCalcBytesInst.len != 0:
    return this.calcOrCalcBytesInst
  this.calcOrCalcBytesInst = string((if false: this.strCalc else: this.strCalcBytes))
  if this.calcOrCalcBytesInst.len != 0:
    return this.calcOrCalcBytesInst

proc strCalcBytes(this: CombineStr): string = 
  if this.strCalcBytesInst.len != 0:
    return this.strCalcBytesInst
  this.strCalcBytesInst = string(convert(this.calcBytes, srcEncoding = "ASCII"))
  if this.strCalcBytesInst.len != 0:
    return this.strCalcBytesInst

proc eosOrCalc(this: CombineStr): string = 
  if this.eosOrCalcInst.len != 0:
    return this.eosOrCalcInst
  this.eosOrCalcInst = string((if false: this.strEos else: this.strCalc))
  if this.eosOrCalcInst.len != 0:
    return this.eosOrCalcInst

proc termOrCalc(this: CombineStr): string = 
  if this.termOrCalcInst.len != 0:
    return this.termOrCalcInst
  this.termOrCalcInst = string((if true: this.strTerm else: this.strCalc))
  if this.termOrCalcInst.len != 0:
    return this.termOrCalcInst

proc termOrCalcBytes(this: CombineStr): string = 
  if this.termOrCalcBytesInst.len != 0:
    return this.termOrCalcBytesInst
  this.termOrCalcBytesInst = string((if false: this.strTerm else: this.strCalcBytes))
  if this.termOrCalcBytesInst.len != 0:
    return this.termOrCalcBytesInst

proc termOrEos(this: CombineStr): string = 
  if this.termOrEosInst.len != 0:
    return this.termOrEosInst
  this.termOrEosInst = string((if false: this.strTerm else: this.strEos))
  if this.termOrEosInst.len != 0:
    return this.termOrEosInst

proc strCalc(this: CombineStr): string = 
  if this.strCalcInst.len != 0:
    return this.strCalcInst
  this.strCalcInst = string("bar")
  if this.strCalcInst.len != 0:
    return this.strCalcInst

proc eosOrCalcBytes(this: CombineStr): string = 
  if this.eosOrCalcBytesInst.len != 0:
    return this.eosOrCalcBytesInst
  this.eosOrCalcBytesInst = string((if true: this.strEos else: this.strCalcBytes))
  if this.eosOrCalcBytesInst.len != 0:
    return this.eosOrCalcBytesInst

proc calcBytes(this: CombineStr): string = 
  if this.calcBytesInst.len != 0:
    return this.calcBytesInst
  this.calcBytesInst = string(@[98'i8, 97, 122].toString)
  if this.calcBytesInst.len != 0:
    return this.calcBytesInst

proc fromFile*(_: typedesc[CombineStr], filename: string): CombineStr =
  CombineStr.read(newKaitaiFileStream(filename), nil, nil)


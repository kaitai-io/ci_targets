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
    limitOrCalcBytesInst*: Option[string]
    limitOrCalcInst*: Option[string]
    termOrLimitInst*: Option[string]
    limitOrEosInst*: Option[string]
    calcOrCalcBytesInst*: Option[string]
    strCalcBytesInst*: Option[string]
    eosOrCalcInst*: Option[string]
    termOrCalcInst*: Option[string]
    termOrCalcBytesInst*: Option[string]
    termOrEosInst*: Option[string]
    strCalcInst*: Option[string]
    eosOrCalcBytesInst*: Option[string]
    calcBytesInst*: Option[string]

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
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.strTerm = convert(this.io.readBytesTerm(124, false, true, true), srcEncoding = "ASCII")
  this.strLimit = convert(this.io.readBytes(int(4)), srcEncoding = "ASCII")
  this.strEos = convert(this.io.readBytesFull(), srcEncoding = "ASCII")

proc limitOrCalcBytes(this: CombineStr): string = 
  if isSome(this.limitOrCalcBytesInst):
    return get(this.limitOrCalcBytesInst)
  this.limitOrCalcBytesInst = some((if true: this.strLimit else: this.strCalcBytes))
  if isSome(this.limitOrCalcBytesInst):
    return get(this.limitOrCalcBytesInst)

proc limitOrCalc(this: CombineStr): string = 
  if isSome(this.limitOrCalcInst):
    return get(this.limitOrCalcInst)
  this.limitOrCalcInst = some((if false: this.strLimit else: this.strCalc))
  if isSome(this.limitOrCalcInst):
    return get(this.limitOrCalcInst)

proc termOrLimit(this: CombineStr): string = 
  if isSome(this.termOrLimitInst):
    return get(this.termOrLimitInst)
  this.termOrLimitInst = some((if true: this.strTerm else: this.strLimit))
  if isSome(this.termOrLimitInst):
    return get(this.termOrLimitInst)

proc limitOrEos(this: CombineStr): string = 
  if isSome(this.limitOrEosInst):
    return get(this.limitOrEosInst)
  this.limitOrEosInst = some((if true: this.strLimit else: this.strEos))
  if isSome(this.limitOrEosInst):
    return get(this.limitOrEosInst)

proc calcOrCalcBytes(this: CombineStr): string = 
  if isSome(this.calcOrCalcBytesInst):
    return get(this.calcOrCalcBytesInst)
  this.calcOrCalcBytesInst = some((if false: this.strCalc else: this.strCalcBytes))
  if isSome(this.calcOrCalcBytesInst):
    return get(this.calcOrCalcBytesInst)

proc strCalcBytes(this: CombineStr): string = 
  if isSome(this.strCalcBytesInst):
    return get(this.strCalcBytesInst)
  this.strCalcBytesInst = some(convert(this.calcBytes, srcEncoding = "ASCII"))
  if isSome(this.strCalcBytesInst):
    return get(this.strCalcBytesInst)

proc eosOrCalc(this: CombineStr): string = 
  if isSome(this.eosOrCalcInst):
    return get(this.eosOrCalcInst)
  this.eosOrCalcInst = some((if false: this.strEos else: this.strCalc))
  if isSome(this.eosOrCalcInst):
    return get(this.eosOrCalcInst)

proc termOrCalc(this: CombineStr): string = 
  if isSome(this.termOrCalcInst):
    return get(this.termOrCalcInst)
  this.termOrCalcInst = some((if true: this.strTerm else: this.strCalc))
  if isSome(this.termOrCalcInst):
    return get(this.termOrCalcInst)

proc termOrCalcBytes(this: CombineStr): string = 
  if isSome(this.termOrCalcBytesInst):
    return get(this.termOrCalcBytesInst)
  this.termOrCalcBytesInst = some((if false: this.strTerm else: this.strCalcBytes))
  if isSome(this.termOrCalcBytesInst):
    return get(this.termOrCalcBytesInst)

proc termOrEos(this: CombineStr): string = 
  if isSome(this.termOrEosInst):
    return get(this.termOrEosInst)
  this.termOrEosInst = some((if false: this.strTerm else: this.strEos))
  if isSome(this.termOrEosInst):
    return get(this.termOrEosInst)

proc strCalc(this: CombineStr): string = 
  if isSome(this.strCalcInst):
    return get(this.strCalcInst)
  this.strCalcInst = some("bar")
  if isSome(this.strCalcInst):
    return get(this.strCalcInst)

proc eosOrCalcBytes(this: CombineStr): string = 
  if isSome(this.eosOrCalcBytesInst):
    return get(this.eosOrCalcBytesInst)
  this.eosOrCalcBytesInst = some((if true: this.strEos else: this.strCalcBytes))
  if isSome(this.eosOrCalcBytesInst):
    return get(this.eosOrCalcBytesInst)

proc calcBytes(this: CombineStr): string = 
  if isSome(this.calcBytesInst):
    return get(this.calcBytesInst)
  this.calcBytesInst = some(@[98'i8, 97, 122].toString)
  if isSome(this.calcBytesInst):
    return get(this.calcBytesInst)

proc fromFile*(_: typedesc[CombineStr], filename: string): CombineStr =
  CombineStr.read(newKaitaiFileStream(filename), nil, nil)


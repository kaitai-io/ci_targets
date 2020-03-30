import kaitai_struct_nim_runtime
import options
import encodings

type
  StrCombine* = ref StrCombineObj
  StrCombineObj* = object
    strTerm*: string
    strLimit*: string
    strEos*: string
    io*: KaitaiStream
    root*: StrCombine
    parent*: ref RootObj
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

### StrCombine ###
proc limitOrCalcBytes*(this: StrCombine): string
proc limitOrCalc*(this: StrCombine): string
proc termOrLimit*(this: StrCombine): string
proc limitOrEos*(this: StrCombine): string
proc calcOrCalcBytes*(this: StrCombine): string
proc strCalcBytes*(this: StrCombine): string
proc eosOrCalc*(this: StrCombine): string
proc termOrCalc*(this: StrCombine): string
proc termOrCalcBytes*(this: StrCombine): string
proc termOrEos*(this: StrCombine): string
proc strCalc*(this: StrCombine): string
proc eosOrCalcBytes*(this: StrCombine): string
proc calcBytes*(this: StrCombine): string
proc limitOrCalcBytes(this: StrCombine): string = 
  if isSome(this.limitOrCalcBytesInst):
    return get(this.limitOrCalcBytesInst)
  let limitOrCalcBytesInst = (if true: this.strLimit else: this.strCalcBytes)
  this.limitOrCalcBytesInst = some(limitOrCalcBytesInst)
  return get(this.limitOrCalcBytesInst)

proc limitOrCalc(this: StrCombine): string = 
  if isSome(this.limitOrCalcInst):
    return get(this.limitOrCalcInst)
  let limitOrCalcInst = (if false: this.strLimit else: this.strCalc)
  this.limitOrCalcInst = some(limitOrCalcInst)
  return get(this.limitOrCalcInst)

proc termOrLimit(this: StrCombine): string = 
  if isSome(this.termOrLimitInst):
    return get(this.termOrLimitInst)
  let termOrLimitInst = (if true: this.strTerm else: this.strLimit)
  this.termOrLimitInst = some(termOrLimitInst)
  return get(this.termOrLimitInst)

proc limitOrEos(this: StrCombine): string = 
  if isSome(this.limitOrEosInst):
    return get(this.limitOrEosInst)
  let limitOrEosInst = (if true: this.strLimit else: this.strEos)
  this.limitOrEosInst = some(limitOrEosInst)
  return get(this.limitOrEosInst)

proc calcOrCalcBytes(this: StrCombine): string = 
  if isSome(this.calcOrCalcBytesInst):
    return get(this.calcOrCalcBytesInst)
  let calcOrCalcBytesInst = (if false: this.strCalc else: this.strCalcBytes)
  this.calcOrCalcBytesInst = some(calcOrCalcBytesInst)
  return get(this.calcOrCalcBytesInst)

proc strCalcBytes(this: StrCombine): string = 
  if isSome(this.strCalcBytesInst):
    return get(this.strCalcBytesInst)
  let strCalcBytesInst = convert(this.calcBytes, srcEncoding = "ASCII")
  this.strCalcBytesInst = some(strCalcBytesInst)
  return get(this.strCalcBytesInst)

proc eosOrCalc(this: StrCombine): string = 
  if isSome(this.eosOrCalcInst):
    return get(this.eosOrCalcInst)
  let eosOrCalcInst = (if false: this.strEos else: this.strCalc)
  this.eosOrCalcInst = some(eosOrCalcInst)
  return get(this.eosOrCalcInst)

proc termOrCalc(this: StrCombine): string = 
  if isSome(this.termOrCalcInst):
    return get(this.termOrCalcInst)
  let termOrCalcInst = (if true: this.strTerm else: this.strCalc)
  this.termOrCalcInst = some(termOrCalcInst)
  return get(this.termOrCalcInst)

proc termOrCalcBytes(this: StrCombine): string = 
  if isSome(this.termOrCalcBytesInst):
    return get(this.termOrCalcBytesInst)
  let termOrCalcBytesInst = (if false: this.strTerm else: this.strCalcBytes)
  this.termOrCalcBytesInst = some(termOrCalcBytesInst)
  return get(this.termOrCalcBytesInst)

proc termOrEos(this: StrCombine): string = 
  if isSome(this.termOrEosInst):
    return get(this.termOrEosInst)
  let termOrEosInst = (if false: this.strTerm else: this.strEos)
  this.termOrEosInst = some(termOrEosInst)
  return get(this.termOrEosInst)

proc strCalc(this: StrCombine): string = 
  if isSome(this.strCalcInst):
    return get(this.strCalcInst)
  let strCalcInst = "bar"
  this.strCalcInst = some(strCalcInst)
  return get(this.strCalcInst)

proc eosOrCalcBytes(this: StrCombine): string = 
  if isSome(this.eosOrCalcBytesInst):
    return get(this.eosOrCalcBytesInst)
  let eosOrCalcBytesInst = (if true: this.strEos else: this.strCalcBytes)
  this.eosOrCalcBytesInst = some(eosOrCalcBytesInst)
  return get(this.eosOrCalcBytesInst)

proc calcBytes(this: StrCombine): string = 
  if isSome(this.calcBytesInst):
    return get(this.calcBytesInst)
  let calcBytesInst = @[98, 97, 122].mapIt(it.toByte).toString
  this.calcBytesInst = some(calcBytesInst)
  return get(this.calcBytesInst)

proc read*(_: typedesc[StrCombine], io: KaitaiStream, root: StrCombine, parent: ref RootObj): StrCombine =
  let this = new(StrCombine)
  let root = if root == nil: cast[StrCombine](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let strTerm = convert(this.io.readBytesTerm(124, false, true, true), srcEncoding = "ASCII")
  this.strTerm = strTerm
  let strLimit = convert(this.io.readBytes(int(4)), srcEncoding = "ASCII")
  this.strLimit = strLimit
  let strEos = convert(this.io.readBytesFull(), srcEncoding = "ASCII")
  this.strEos = strEos
  result = this

proc fromFile*(_: typedesc[StrCombine], filename: string): StrCombine =
  StrCombine.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var StrCombineObj) =
  close(x.io)


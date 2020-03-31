import kaitai_struct_nim_runtime
import options
import encodings

type
  StrCombine* = ref object of KaitaiStruct
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
proc read*(_: typedesc[StrCombine], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrCombine =
  template this: untyped = result
  this = new(StrCombine)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.strTerm = convert(this.io.readBytesTerm(124, false, true, true), srcEncoding = "ASCII")

  ##[
  ]##
  this.strLimit = convert(this.io.readBytes(int(4)), srcEncoding = "ASCII")

  ##[
  ]##
  this.strEos = convert(this.io.readBytesFull(), srcEncoding = "ASCII")

proc limitOrCalcBytes(this: StrCombine): string = 
  if isSome(this.limitOrCalcBytesInst):
    return get(this.limitOrCalcBytesInst)
  this.limitOrCalcBytesInst = some((if true: this.strLimit else: this.strCalcBytes))
  return get(this.limitOrCalcBytesInst)

proc limitOrCalc(this: StrCombine): string = 
  if isSome(this.limitOrCalcInst):
    return get(this.limitOrCalcInst)
  this.limitOrCalcInst = some((if false: this.strLimit else: this.strCalc))
  return get(this.limitOrCalcInst)

proc termOrLimit(this: StrCombine): string = 
  if isSome(this.termOrLimitInst):
    return get(this.termOrLimitInst)
  this.termOrLimitInst = some((if true: this.strTerm else: this.strLimit))
  return get(this.termOrLimitInst)

proc limitOrEos(this: StrCombine): string = 
  if isSome(this.limitOrEosInst):
    return get(this.limitOrEosInst)
  this.limitOrEosInst = some((if true: this.strLimit else: this.strEos))
  return get(this.limitOrEosInst)

proc calcOrCalcBytes(this: StrCombine): string = 
  if isSome(this.calcOrCalcBytesInst):
    return get(this.calcOrCalcBytesInst)
  this.calcOrCalcBytesInst = some((if false: this.strCalc else: this.strCalcBytes))
  return get(this.calcOrCalcBytesInst)

proc strCalcBytes(this: StrCombine): string = 
  if isSome(this.strCalcBytesInst):
    return get(this.strCalcBytesInst)
  this.strCalcBytesInst = some(convert(this.calcBytes, srcEncoding = "ASCII"))
  return get(this.strCalcBytesInst)

proc eosOrCalc(this: StrCombine): string = 
  if isSome(this.eosOrCalcInst):
    return get(this.eosOrCalcInst)
  this.eosOrCalcInst = some((if false: this.strEos else: this.strCalc))
  return get(this.eosOrCalcInst)

proc termOrCalc(this: StrCombine): string = 
  if isSome(this.termOrCalcInst):
    return get(this.termOrCalcInst)
  this.termOrCalcInst = some((if true: this.strTerm else: this.strCalc))
  return get(this.termOrCalcInst)

proc termOrCalcBytes(this: StrCombine): string = 
  if isSome(this.termOrCalcBytesInst):
    return get(this.termOrCalcBytesInst)
  this.termOrCalcBytesInst = some((if false: this.strTerm else: this.strCalcBytes))
  return get(this.termOrCalcBytesInst)

proc termOrEos(this: StrCombine): string = 
  if isSome(this.termOrEosInst):
    return get(this.termOrEosInst)
  this.termOrEosInst = some((if false: this.strTerm else: this.strEos))
  return get(this.termOrEosInst)

proc strCalc(this: StrCombine): string = 
  if isSome(this.strCalcInst):
    return get(this.strCalcInst)
  this.strCalcInst = some("bar")
  return get(this.strCalcInst)

proc eosOrCalcBytes(this: StrCombine): string = 
  if isSome(this.eosOrCalcBytesInst):
    return get(this.eosOrCalcBytesInst)
  this.eosOrCalcBytesInst = some((if true: this.strEos else: this.strCalcBytes))
  return get(this.eosOrCalcBytesInst)

proc calcBytes(this: StrCombine): string = 
  if isSome(this.calcBytesInst):
    return get(this.calcBytesInst)
  this.calcBytesInst = some(@[98'u8, 97, 122].toString)
  return get(this.calcBytesInst)

proc fromFile*(_: typedesc[StrCombine], filename: string): StrCombine =
  StrCombine.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

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

  this.bytesTerm = this.io.readBytesTerm(124, false, true, true)
  this.bytesLimit = this.io.readBytes(int(4))
  this.bytesEos = this.io.readBytesFull()

proc limitOrCalc(this: CombineBytes): seq[byte] = 
  if this.limitOrCalcInst.len != 0:
    return this.limitOrCalcInst
  this.limitOrCalcInst = seq[byte]((if false: this.bytesLimit else: this.bytesCalc))
  if this.limitOrCalcInst.len != 0:
    return this.limitOrCalcInst

proc termOrLimit(this: CombineBytes): seq[byte] = 
  if this.termOrLimitInst.len != 0:
    return this.termOrLimitInst
  this.termOrLimitInst = seq[byte]((if true: this.bytesTerm else: this.bytesLimit))
  if this.termOrLimitInst.len != 0:
    return this.termOrLimitInst

proc limitOrEos(this: CombineBytes): seq[byte] = 
  if this.limitOrEosInst.len != 0:
    return this.limitOrEosInst
  this.limitOrEosInst = seq[byte]((if true: this.bytesLimit else: this.bytesEos))
  if this.limitOrEosInst.len != 0:
    return this.limitOrEosInst

proc eosOrCalc(this: CombineBytes): seq[byte] = 
  if this.eosOrCalcInst.len != 0:
    return this.eosOrCalcInst
  this.eosOrCalcInst = seq[byte]((if true: this.bytesEos else: this.bytesCalc))
  if this.eosOrCalcInst.len != 0:
    return this.eosOrCalcInst

proc termOrCalc(this: CombineBytes): seq[byte] = 
  if this.termOrCalcInst.len != 0:
    return this.termOrCalcInst
  this.termOrCalcInst = seq[byte]((if true: this.bytesTerm else: this.bytesCalc))
  if this.termOrCalcInst.len != 0:
    return this.termOrCalcInst

proc bytesCalc(this: CombineBytes): seq[byte] = 
  if this.bytesCalcInst.len != 0:
    return this.bytesCalcInst
  this.bytesCalcInst = seq[byte](@[82'u8, 110'u8, 68'u8])
  if this.bytesCalcInst.len != 0:
    return this.bytesCalcInst

proc termOrEos(this: CombineBytes): seq[byte] = 
  if this.termOrEosInst.len != 0:
    return this.termOrEosInst
  this.termOrEosInst = seq[byte]((if false: this.bytesTerm else: this.bytesEos))
  if this.termOrEosInst.len != 0:
    return this.termOrEosInst

proc fromFile*(_: typedesc[CombineBytes], filename: string): CombineBytes =
  CombineBytes.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  CombineBool* = ref object of KaitaiStruct
    boolBit*: bool
    parent*: KaitaiStruct
    boolCalcInst*: Option[bool]
    boolCalcBitInst*: Option[bool]

proc read*(_: typedesc[CombineBool], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): CombineBool

proc boolCalc*(this: CombineBool): bool
proc boolCalcBit*(this: CombineBool): bool

proc read*(_: typedesc[CombineBool], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): CombineBool =
  template this: untyped = result
  this = new(CombineBool)
  let root = if root == nil: cast[CombineBool](this) else: cast[CombineBool](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.boolBit = this.io.readBitsInt(1) != 0

proc boolCalc(this: CombineBool): bool = 
  if isSome(this.boolCalcInst):
    return get(this.boolCalcInst)
  this.boolCalcInst = bool(false)
  if isSome(this.boolCalcInst):
    return get(this.boolCalcInst)

proc boolCalcBit(this: CombineBool): bool = 
  if isSome(this.boolCalcBitInst):
    return get(this.boolCalcBitInst)
  this.boolCalcBitInst = bool((if true: this.boolCalc else: this.boolBit))
  if isSome(this.boolCalcBitInst):
    return get(this.boolCalcBitInst)

proc fromFile*(_: typedesc[CombineBool], filename: string): CombineBool =
  CombineBool.read(newKaitaiFileStream(filename), nil, nil)


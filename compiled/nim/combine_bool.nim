import kaitai_struct_nim_runtime
import options

type
  CombineBool* = ref object of KaitaiStruct
    `boolBit`*: bool
    `parent`*: KaitaiStruct
    `boolCalcInst`: bool
    `boolCalcInstFlag`: bool
    `boolCalcBitInst`: bool
    `boolCalcBitInstFlag`: bool

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

  let boolBitExpr = this.io.readBitsIntBe(1) != 0
  this.boolBit = boolBitExpr

proc boolCalc(this: CombineBool): bool = 
  if this.boolCalcInstFlag:
    return this.boolCalcInst
  let boolCalcInstExpr = bool(false)
  this.boolCalcInst = boolCalcInstExpr
  this.boolCalcInstFlag = true
  return this.boolCalcInst

proc boolCalcBit(this: CombineBool): bool = 
  if this.boolCalcBitInstFlag:
    return this.boolCalcBitInst
  let boolCalcBitInstExpr = bool((if true: this.boolCalc else: this.boolBit))
  this.boolCalcBitInst = boolCalcBitInstExpr
  this.boolCalcBitInstFlag = true
  return this.boolCalcBitInst

proc fromFile*(_: typedesc[CombineBool], filename: string): CombineBool =
  CombineBool.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  ParamsPassArrayInt* = ref object of KaitaiStruct
    `ints`*: seq[uint16]
    `passInts`*: ParamsPassArrayInt_WantsInts
    `passIntsCalc`*: ParamsPassArrayInt_WantsInts
    `parent`*: KaitaiStruct
    `intsCalcInst`*: seq[int]
  ParamsPassArrayInt_WantsInts* = ref object of KaitaiStruct
    `nums`*: seq[uint16]
    `parent`*: ParamsPassArrayInt

proc read*(_: typedesc[ParamsPassArrayInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsPassArrayInt
proc read*(_: typedesc[ParamsPassArrayInt_WantsInts], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassArrayInt, nums: any): ParamsPassArrayInt_WantsInts

proc intsCalc*(this: ParamsPassArrayInt): seq[int]

proc read*(_: typedesc[ParamsPassArrayInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsPassArrayInt =
  template this: untyped = result
  this = new(ParamsPassArrayInt)
  let root = if root == nil: cast[ParamsPassArrayInt](this) else: cast[ParamsPassArrayInt](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< int(3):
    let it = this.io.readU2le()
    this.ints.add(it)
  let passIntsExpr = ParamsPassArrayInt_WantsInts.read(this.io, this.root, this, this.ints)
  this.passInts = passIntsExpr
  let passIntsCalcExpr = ParamsPassArrayInt_WantsInts.read(this.io, this.root, this, this.intsCalc)
  this.passIntsCalc = passIntsCalcExpr

proc intsCalc(this: ParamsPassArrayInt): seq[int] = 
  if this.intsCalcInst.len != 0:
    return this.intsCalcInst
  let intsCalcInstExpr = seq[int](@[int(27643), int(7)])
  this.intsCalcInst = intsCalcInstExpr
  if this.intsCalcInst.len != 0:
    return this.intsCalcInst

proc fromFile*(_: typedesc[ParamsPassArrayInt], filename: string): ParamsPassArrayInt =
  ParamsPassArrayInt.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsPassArrayInt_WantsInts], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassArrayInt, nums: any): ParamsPassArrayInt_WantsInts =
  template this: untyped = result
  this = new(ParamsPassArrayInt_WantsInts)
  let root = if root == nil: cast[ParamsPassArrayInt](this) else: cast[ParamsPassArrayInt](root)
  this.io = io
  this.root = root
  this.parent = parent
  let numsExpr = seq[uint16](nums)
  this.nums = numsExpr


proc fromFile*(_: typedesc[ParamsPassArrayInt_WantsInts], filename: string): ParamsPassArrayInt_WantsInts =
  ParamsPassArrayInt_WantsInts.read(newKaitaiFileStream(filename), nil, nil)


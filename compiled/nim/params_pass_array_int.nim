import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ParamsPassArrayInt* = ref object of KaitaiStruct
    ints*: seq[uint16]
    passInts*: ParamsPassArrayInt_WantsInts
    passIntsCalc*: ParamsPassArrayInt_WantsInts
    parent*: KaitaiStruct
    intsCalcInst*: seq[int]
  ParamsPassArrayInt_WantsInts* = ref object of KaitaiStruct
    nums*: seq[uint16]
    parent*: ParamsPassArrayInt

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

  for i in 0 ..< 3:
    this.ints.add(this.io.readU2le())
  this.passInts = ParamsPassArrayInt_WantsInts.read(this.io, this.root, this, this.ints)
  this.passIntsCalc = ParamsPassArrayInt_WantsInts.read(this.io, this.root, this, this.intsCalc)

proc intsCalc(this: ParamsPassArrayInt): seq[int] = 
  if this.intsCalcInst.len != 0:
    return this.intsCalcInst
  this.intsCalcInst = seq[int](@[27643, 7])
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


proc fromFile*(_: typedesc[ParamsPassArrayInt_WantsInts], filename: string): ParamsPassArrayInt_WantsInts =
  ParamsPassArrayInt_WantsInts.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  ExprCalcArrayOps* = ref object of KaitaiStruct
    `parent`*: KaitaiStruct
    `doubleArrayInst`*: seq[float64]
    `intArraySizeInst`*: int
    `intArrayMaxInst`*: int
    `doubleArrayMaxInst`*: float64
    `strArrayMaxInst`*: string
    `strArrayMinInst`*: string
    `doubleArrayMidInst`*: float64
    `strArrayInst`*: seq[string]
    `doubleArraySizeInst`*: int
    `strArrayFirstInst`*: string
    `strArrayLastInst`*: string
    `strArrayMidInst`*: string
    `doubleArrayLastInst`*: float64
    `intArrayMinInst`*: int
    `strArraySizeInst`*: int
    `intArrayFirstInst`*: int
    `doubleArrayFirstInst`*: float64
    `intArrayMidInst`*: int
    `doubleArrayMinInst`*: float64
    `intArrayInst`*: seq[int]
    `intArrayLastInst`*: int

proc read*(_: typedesc[ExprCalcArrayOps], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprCalcArrayOps

proc doubleArray*(this: ExprCalcArrayOps): seq[float64]
proc intArraySize*(this: ExprCalcArrayOps): int
proc intArrayMax*(this: ExprCalcArrayOps): int
proc doubleArrayMax*(this: ExprCalcArrayOps): float64
proc strArrayMax*(this: ExprCalcArrayOps): string
proc strArrayMin*(this: ExprCalcArrayOps): string
proc doubleArrayMid*(this: ExprCalcArrayOps): float64
proc strArray*(this: ExprCalcArrayOps): seq[string]
proc doubleArraySize*(this: ExprCalcArrayOps): int
proc strArrayFirst*(this: ExprCalcArrayOps): string
proc strArrayLast*(this: ExprCalcArrayOps): string
proc strArrayMid*(this: ExprCalcArrayOps): string
proc doubleArrayLast*(this: ExprCalcArrayOps): float64
proc intArrayMin*(this: ExprCalcArrayOps): int
proc strArraySize*(this: ExprCalcArrayOps): int
proc intArrayFirst*(this: ExprCalcArrayOps): int
proc doubleArrayFirst*(this: ExprCalcArrayOps): float64
proc intArrayMid*(this: ExprCalcArrayOps): int
proc doubleArrayMin*(this: ExprCalcArrayOps): float64
proc intArray*(this: ExprCalcArrayOps): seq[int]
proc intArrayLast*(this: ExprCalcArrayOps): int

proc read*(_: typedesc[ExprCalcArrayOps], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprCalcArrayOps =
  template this: untyped = result
  this = new(ExprCalcArrayOps)
  let root = if root == nil: cast[ExprCalcArrayOps](this) else: cast[ExprCalcArrayOps](root)
  this.io = io
  this.root = root
  this.parent = parent


proc doubleArray(this: ExprCalcArrayOps): seq[float64] = 
  if this.doubleArrayInst.len != 0:
    return this.doubleArrayInst
  let doubleArrayInstExpr = seq[float64](@[float64(10.0), float64(25.0), float64(50.0), float64(100.0), float64(3.14159)])
  this.doubleArrayInst = doubleArrayInstExpr
  if this.doubleArrayInst.len != 0:
    return this.doubleArrayInst

proc intArraySize(this: ExprCalcArrayOps): int = 
  if this.intArraySizeInst != nil:
    return this.intArraySizeInst
  let intArraySizeInstExpr = int(len(this.intArray))
  this.intArraySizeInst = intArraySizeInstExpr
  if this.intArraySizeInst != nil:
    return this.intArraySizeInst

proc intArrayMax(this: ExprCalcArrayOps): int = 
  if this.intArrayMaxInst != nil:
    return this.intArrayMaxInst
  let intArrayMaxInstExpr = int(max(this.intArray))
  this.intArrayMaxInst = intArrayMaxInstExpr
  if this.intArrayMaxInst != nil:
    return this.intArrayMaxInst

proc doubleArrayMax(this: ExprCalcArrayOps): float64 = 
  if this.doubleArrayMaxInst != nil:
    return this.doubleArrayMaxInst
  let doubleArrayMaxInstExpr = float64(max(this.doubleArray))
  this.doubleArrayMaxInst = doubleArrayMaxInstExpr
  if this.doubleArrayMaxInst != nil:
    return this.doubleArrayMaxInst

proc strArrayMax(this: ExprCalcArrayOps): string = 
  if this.strArrayMaxInst.len != 0:
    return this.strArrayMaxInst
  let strArrayMaxInstExpr = string(max(this.strArray))
  this.strArrayMaxInst = strArrayMaxInstExpr
  if this.strArrayMaxInst.len != 0:
    return this.strArrayMaxInst

proc strArrayMin(this: ExprCalcArrayOps): string = 
  if this.strArrayMinInst.len != 0:
    return this.strArrayMinInst
  let strArrayMinInstExpr = string(min(this.strArray))
  this.strArrayMinInst = strArrayMinInstExpr
  if this.strArrayMinInst.len != 0:
    return this.strArrayMinInst

proc doubleArrayMid(this: ExprCalcArrayOps): float64 = 
  if this.doubleArrayMidInst != nil:
    return this.doubleArrayMidInst
  let doubleArrayMidInstExpr = float64(this.doubleArray[1])
  this.doubleArrayMidInst = doubleArrayMidInstExpr
  if this.doubleArrayMidInst != nil:
    return this.doubleArrayMidInst

proc strArray(this: ExprCalcArrayOps): seq[string] = 
  if this.strArrayInst.len != 0:
    return this.strArrayInst
  let strArrayInstExpr = seq[string](@[string("un"), string("deux"), string("trois"), string("quatre")])
  this.strArrayInst = strArrayInstExpr
  if this.strArrayInst.len != 0:
    return this.strArrayInst

proc doubleArraySize(this: ExprCalcArrayOps): int = 
  if this.doubleArraySizeInst != nil:
    return this.doubleArraySizeInst
  let doubleArraySizeInstExpr = int(len(this.doubleArray))
  this.doubleArraySizeInst = doubleArraySizeInstExpr
  if this.doubleArraySizeInst != nil:
    return this.doubleArraySizeInst

proc strArrayFirst(this: ExprCalcArrayOps): string = 
  if this.strArrayFirstInst.len != 0:
    return this.strArrayFirstInst
  let strArrayFirstInstExpr = string(this.strArray[0])
  this.strArrayFirstInst = strArrayFirstInstExpr
  if this.strArrayFirstInst.len != 0:
    return this.strArrayFirstInst

proc strArrayLast(this: ExprCalcArrayOps): string = 
  if this.strArrayLastInst.len != 0:
    return this.strArrayLastInst
  let strArrayLastInstExpr = string(this.strArray[^1])
  this.strArrayLastInst = strArrayLastInstExpr
  if this.strArrayLastInst.len != 0:
    return this.strArrayLastInst

proc strArrayMid(this: ExprCalcArrayOps): string = 
  if this.strArrayMidInst.len != 0:
    return this.strArrayMidInst
  let strArrayMidInstExpr = string(this.strArray[1])
  this.strArrayMidInst = strArrayMidInstExpr
  if this.strArrayMidInst.len != 0:
    return this.strArrayMidInst

proc doubleArrayLast(this: ExprCalcArrayOps): float64 = 
  if this.doubleArrayLastInst != nil:
    return this.doubleArrayLastInst
  let doubleArrayLastInstExpr = float64(this.doubleArray[^1])
  this.doubleArrayLastInst = doubleArrayLastInstExpr
  if this.doubleArrayLastInst != nil:
    return this.doubleArrayLastInst

proc intArrayMin(this: ExprCalcArrayOps): int = 
  if this.intArrayMinInst != nil:
    return this.intArrayMinInst
  let intArrayMinInstExpr = int(min(this.intArray))
  this.intArrayMinInst = intArrayMinInstExpr
  if this.intArrayMinInst != nil:
    return this.intArrayMinInst

proc strArraySize(this: ExprCalcArrayOps): int = 
  if this.strArraySizeInst != nil:
    return this.strArraySizeInst
  let strArraySizeInstExpr = int(len(this.strArray))
  this.strArraySizeInst = strArraySizeInstExpr
  if this.strArraySizeInst != nil:
    return this.strArraySizeInst

proc intArrayFirst(this: ExprCalcArrayOps): int = 
  if this.intArrayFirstInst != nil:
    return this.intArrayFirstInst
  let intArrayFirstInstExpr = int(this.intArray[0])
  this.intArrayFirstInst = intArrayFirstInstExpr
  if this.intArrayFirstInst != nil:
    return this.intArrayFirstInst

proc doubleArrayFirst(this: ExprCalcArrayOps): float64 = 
  if this.doubleArrayFirstInst != nil:
    return this.doubleArrayFirstInst
  let doubleArrayFirstInstExpr = float64(this.doubleArray[0])
  this.doubleArrayFirstInst = doubleArrayFirstInstExpr
  if this.doubleArrayFirstInst != nil:
    return this.doubleArrayFirstInst

proc intArrayMid(this: ExprCalcArrayOps): int = 
  if this.intArrayMidInst != nil:
    return this.intArrayMidInst
  let intArrayMidInstExpr = int(this.intArray[1])
  this.intArrayMidInst = intArrayMidInstExpr
  if this.intArrayMidInst != nil:
    return this.intArrayMidInst

proc doubleArrayMin(this: ExprCalcArrayOps): float64 = 
  if this.doubleArrayMinInst != nil:
    return this.doubleArrayMinInst
  let doubleArrayMinInstExpr = float64(min(this.doubleArray))
  this.doubleArrayMinInst = doubleArrayMinInstExpr
  if this.doubleArrayMinInst != nil:
    return this.doubleArrayMinInst

proc intArray(this: ExprCalcArrayOps): seq[int] = 
  if this.intArrayInst.len != 0:
    return this.intArrayInst
  let intArrayInstExpr = seq[int](@[int(10), int(25), int(50), int(100), int(200), int(500), int(1000)])
  this.intArrayInst = intArrayInstExpr
  if this.intArrayInst.len != 0:
    return this.intArrayInst

proc intArrayLast(this: ExprCalcArrayOps): int = 
  if this.intArrayLastInst != nil:
    return this.intArrayLastInst
  let intArrayLastInstExpr = int(this.intArray[^1])
  this.intArrayLastInst = intArrayLastInstExpr
  if this.intArrayLastInst != nil:
    return this.intArrayLastInst

proc fromFile*(_: typedesc[ExprCalcArrayOps], filename: string): ExprCalcArrayOps =
  ExprCalcArrayOps.read(newKaitaiFileStream(filename), nil, nil)


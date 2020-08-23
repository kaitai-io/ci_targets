import kaitai_struct_nim_runtime
import options

type
  FloatToI* = ref object of KaitaiStruct
    `singleValue`*: float32
    `doubleValue`*: float64
    `parent`*: KaitaiStruct
    `float2IInst`*: int
    `calcFloat1Inst`*: float64
    `float4IInst`*: int
    `calcFloat3Inst`*: float64
    `calcFloat2Inst`*: float64
    `float1IInst`*: int
    `doubleIInst`*: int
    `float3IInst`*: int
    `singleIInst`*: int
    `calcFloat4Inst`*: float64

proc read*(_: typedesc[FloatToI], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): FloatToI

proc float2I*(this: FloatToI): int
proc calcFloat1*(this: FloatToI): float64
proc float4I*(this: FloatToI): int
proc calcFloat3*(this: FloatToI): float64
proc calcFloat2*(this: FloatToI): float64
proc float1I*(this: FloatToI): int
proc doubleI*(this: FloatToI): int
proc float3I*(this: FloatToI): int
proc singleI*(this: FloatToI): int
proc calcFloat4*(this: FloatToI): float64

proc read*(_: typedesc[FloatToI], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): FloatToI =
  template this: untyped = result
  this = new(FloatToI)
  let root = if root == nil: cast[FloatToI](this) else: cast[FloatToI](root)
  this.io = io
  this.root = root
  this.parent = parent

  let singleValueExpr = this.io.readF4le()
  this.singleValue = singleValueExpr
  let doubleValueExpr = this.io.readF8le()
  this.doubleValue = doubleValueExpr

proc float2I(this: FloatToI): int = 
  if this.float2IInst != nil:
    return this.float2IInst
  let float2IInstExpr = int(int(this.calcFloat2))
  this.float2IInst = float2IInstExpr
  if this.float2IInst != nil:
    return this.float2IInst

proc calcFloat1(this: FloatToI): float64 = 
  if this.calcFloat1Inst != nil:
    return this.calcFloat1Inst
  let calcFloat1InstExpr = float64(1.234)
  this.calcFloat1Inst = calcFloat1InstExpr
  if this.calcFloat1Inst != nil:
    return this.calcFloat1Inst

proc float4I(this: FloatToI): int = 
  if this.float4IInst != nil:
    return this.float4IInst
  let float4IInstExpr = int(int(this.calcFloat4))
  this.float4IInst = float4IInstExpr
  if this.float4IInst != nil:
    return this.float4IInst

proc calcFloat3(this: FloatToI): float64 = 
  if this.calcFloat3Inst != nil:
    return this.calcFloat3Inst
  let calcFloat3InstExpr = float64(1.9)
  this.calcFloat3Inst = calcFloat3InstExpr
  if this.calcFloat3Inst != nil:
    return this.calcFloat3Inst

proc calcFloat2(this: FloatToI): float64 = 
  if this.calcFloat2Inst != nil:
    return this.calcFloat2Inst
  let calcFloat2InstExpr = float64(1.5)
  this.calcFloat2Inst = calcFloat2InstExpr
  if this.calcFloat2Inst != nil:
    return this.calcFloat2Inst

proc float1I(this: FloatToI): int = 
  if this.float1IInst != nil:
    return this.float1IInst
  let float1IInstExpr = int(int(this.calcFloat1))
  this.float1IInst = float1IInstExpr
  if this.float1IInst != nil:
    return this.float1IInst

proc doubleI(this: FloatToI): int = 
  if this.doubleIInst != nil:
    return this.doubleIInst
  let doubleIInstExpr = int(int(this.doubleValue))
  this.doubleIInst = doubleIInstExpr
  if this.doubleIInst != nil:
    return this.doubleIInst

proc float3I(this: FloatToI): int = 
  if this.float3IInst != nil:
    return this.float3IInst
  let float3IInstExpr = int(int(this.calcFloat3))
  this.float3IInst = float3IInstExpr
  if this.float3IInst != nil:
    return this.float3IInst

proc singleI(this: FloatToI): int = 
  if this.singleIInst != nil:
    return this.singleIInst
  let singleIInstExpr = int(int(this.singleValue))
  this.singleIInst = singleIInstExpr
  if this.singleIInst != nil:
    return this.singleIInst

proc calcFloat4(this: FloatToI): float64 = 
  if this.calcFloat4Inst != nil:
    return this.calcFloat4Inst
  let calcFloat4InstExpr = float64(-2.7)
  this.calcFloat4Inst = calcFloat4InstExpr
  if this.calcFloat4Inst != nil:
    return this.calcFloat4Inst

proc fromFile*(_: typedesc[FloatToI], filename: string): FloatToI =
  FloatToI.read(newKaitaiFileStream(filename), nil, nil)


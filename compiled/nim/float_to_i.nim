import kaitai_struct_nim_runtime
import options

type
  FloatToI* = ref object of KaitaiStruct
    `singleValue`*: float32
    `doubleValue`*: float64
    `singleValueIf`*: float32
    `doubleValueIf`*: float64
    `parent`*: KaitaiStruct
    `calcFloat1Inst`: float64
    `calcFloat1InstFlag`: bool
    `calcFloat2Inst`: float64
    `calcFloat2InstFlag`: bool
    `calcFloat3Inst`: float64
    `calcFloat3InstFlag`: bool
    `calcFloat4Inst`: float64
    `calcFloat4InstFlag`: bool
    `calcIfInst`: float64
    `calcIfInstFlag`: bool
    `calcIfIInst`: int
    `calcIfIInstFlag`: bool
    `doubleIInst`: int
    `doubleIInstFlag`: bool
    `doubleIfIInst`: int
    `doubleIfIInstFlag`: bool
    `float1IInst`: int
    `float1IInstFlag`: bool
    `float2IInst`: int
    `float2IInstFlag`: bool
    `float3IInst`: int
    `float3IInstFlag`: bool
    `float4IInst`: int
    `float4IInstFlag`: bool
    `singleIInst`: int
    `singleIInstFlag`: bool
    `singleIfIInst`: int
    `singleIfIInstFlag`: bool

proc read*(_: typedesc[FloatToI], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): FloatToI

proc calcFloat1*(this: FloatToI): float64
proc calcFloat2*(this: FloatToI): float64
proc calcFloat3*(this: FloatToI): float64
proc calcFloat4*(this: FloatToI): float64
proc calcIf*(this: FloatToI): float64
proc calcIfI*(this: FloatToI): int
proc doubleI*(this: FloatToI): int
proc doubleIfI*(this: FloatToI): int
proc float1I*(this: FloatToI): int
proc float2I*(this: FloatToI): int
proc float3I*(this: FloatToI): int
proc float4I*(this: FloatToI): int
proc singleI*(this: FloatToI): int
proc singleIfI*(this: FloatToI): int

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
  if true:
    let singleValueIfExpr = this.io.readF4be()
    this.singleValueIf = singleValueIfExpr
  if true:
    let doubleValueIfExpr = this.io.readF8be()
    this.doubleValueIf = doubleValueIfExpr

proc calcFloat1(this: FloatToI): float64 = 
  if this.calcFloat1InstFlag:
    return this.calcFloat1Inst
  let calcFloat1InstExpr = float64(1.234)
  this.calcFloat1Inst = calcFloat1InstExpr
  this.calcFloat1InstFlag = true
  return this.calcFloat1Inst

proc calcFloat2(this: FloatToI): float64 = 
  if this.calcFloat2InstFlag:
    return this.calcFloat2Inst
  let calcFloat2InstExpr = float64(1.5)
  this.calcFloat2Inst = calcFloat2InstExpr
  this.calcFloat2InstFlag = true
  return this.calcFloat2Inst

proc calcFloat3(this: FloatToI): float64 = 
  if this.calcFloat3InstFlag:
    return this.calcFloat3Inst
  let calcFloat3InstExpr = float64(1.9)
  this.calcFloat3Inst = calcFloat3InstExpr
  this.calcFloat3InstFlag = true
  return this.calcFloat3Inst

proc calcFloat4(this: FloatToI): float64 = 
  if this.calcFloat4InstFlag:
    return this.calcFloat4Inst
  let calcFloat4InstExpr = float64(-2.7)
  this.calcFloat4Inst = calcFloat4InstExpr
  this.calcFloat4InstFlag = true
  return this.calcFloat4Inst

proc calcIf(this: FloatToI): float64 = 
  if this.calcIfInstFlag:
    return this.calcIfInst
  let calcIfInstExpr = float64(13.9)
  this.calcIfInst = calcIfInstExpr
  this.calcIfInstFlag = true
  return this.calcIfInst

proc calcIfI(this: FloatToI): int = 
  if this.calcIfIInstFlag:
    return this.calcIfIInst
  let calcIfIInstExpr = int(int(this.calcIf))
  this.calcIfIInst = calcIfIInstExpr
  this.calcIfIInstFlag = true
  return this.calcIfIInst

proc doubleI(this: FloatToI): int = 
  if this.doubleIInstFlag:
    return this.doubleIInst
  let doubleIInstExpr = int(int(this.doubleValue))
  this.doubleIInst = doubleIInstExpr
  this.doubleIInstFlag = true
  return this.doubleIInst

proc doubleIfI(this: FloatToI): int = 
  if this.doubleIfIInstFlag:
    return this.doubleIfIInst
  let doubleIfIInstExpr = int(int(this.doubleValueIf))
  this.doubleIfIInst = doubleIfIInstExpr
  this.doubleIfIInstFlag = true
  return this.doubleIfIInst

proc float1I(this: FloatToI): int = 
  if this.float1IInstFlag:
    return this.float1IInst
  let float1IInstExpr = int(int(this.calcFloat1))
  this.float1IInst = float1IInstExpr
  this.float1IInstFlag = true
  return this.float1IInst

proc float2I(this: FloatToI): int = 
  if this.float2IInstFlag:
    return this.float2IInst
  let float2IInstExpr = int(int(this.calcFloat2))
  this.float2IInst = float2IInstExpr
  this.float2IInstFlag = true
  return this.float2IInst

proc float3I(this: FloatToI): int = 
  if this.float3IInstFlag:
    return this.float3IInst
  let float3IInstExpr = int(int(this.calcFloat3))
  this.float3IInst = float3IInstExpr
  this.float3IInstFlag = true
  return this.float3IInst

proc float4I(this: FloatToI): int = 
  if this.float4IInstFlag:
    return this.float4IInst
  let float4IInstExpr = int(int(this.calcFloat4))
  this.float4IInst = float4IInstExpr
  this.float4IInstFlag = true
  return this.float4IInst

proc singleI(this: FloatToI): int = 
  if this.singleIInstFlag:
    return this.singleIInst
  let singleIInstExpr = int(int(this.singleValue))
  this.singleIInst = singleIInstExpr
  this.singleIInstFlag = true
  return this.singleIInst

proc singleIfI(this: FloatToI): int = 
  if this.singleIfIInstFlag:
    return this.singleIfIInst
  let singleIfIInstExpr = int(int(this.singleValueIf))
  this.singleIfIInst = singleIfIInstExpr
  this.singleIfIInstFlag = true
  return this.singleIfIInst

proc fromFile*(_: typedesc[FloatToI], filename: string): FloatToI =
  FloatToI.read(newKaitaiFileStream(filename), nil, nil)


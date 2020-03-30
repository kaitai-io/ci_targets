import kaitai_struct_nim_runtime
import options

type
  FloatToI* = ref FloatToIObj
  FloatToIObj* = object
    singleValue*: float32
    doubleValue*: float64
    io*: KaitaiStream
    root*: FloatToI
    parent*: ref RootObj
    float2IInst*: Option[int]
    calcFloat1Inst*: Option[float64]
    float4IInst*: Option[int]
    calcFloat3Inst*: Option[float64]
    calcFloat2Inst*: Option[float64]
    float1IInst*: Option[int]
    doubleIInst*: Option[int]
    float3IInst*: Option[int]
    singleIInst*: Option[int]
    calcFloat4Inst*: Option[float64]

### FloatToI ###
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
proc float2I(this: FloatToI): int = 
  if isSome(this.float2IInst):
    return get(this.float2IInst)
  let float2IInst = int(this.calcFloat2)
  this.float2IInst = some(float2IInst)
  return get(this.float2IInst)

proc calcFloat1(this: FloatToI): float64 = 
  if isSome(this.calcFloat1Inst):
    return get(this.calcFloat1Inst)
  let calcFloat1Inst = 1.234
  this.calcFloat1Inst = some(calcFloat1Inst)
  return get(this.calcFloat1Inst)

proc float4I(this: FloatToI): int = 
  if isSome(this.float4IInst):
    return get(this.float4IInst)
  let float4IInst = int(this.calcFloat4)
  this.float4IInst = some(float4IInst)
  return get(this.float4IInst)

proc calcFloat3(this: FloatToI): float64 = 
  if isSome(this.calcFloat3Inst):
    return get(this.calcFloat3Inst)
  let calcFloat3Inst = 1.9
  this.calcFloat3Inst = some(calcFloat3Inst)
  return get(this.calcFloat3Inst)

proc calcFloat2(this: FloatToI): float64 = 
  if isSome(this.calcFloat2Inst):
    return get(this.calcFloat2Inst)
  let calcFloat2Inst = 1.5
  this.calcFloat2Inst = some(calcFloat2Inst)
  return get(this.calcFloat2Inst)

proc float1I(this: FloatToI): int = 
  if isSome(this.float1IInst):
    return get(this.float1IInst)
  let float1IInst = int(this.calcFloat1)
  this.float1IInst = some(float1IInst)
  return get(this.float1IInst)

proc doubleI(this: FloatToI): int = 
  if isSome(this.doubleIInst):
    return get(this.doubleIInst)
  let doubleIInst = int(this.doubleValue)
  this.doubleIInst = some(doubleIInst)
  return get(this.doubleIInst)

proc float3I(this: FloatToI): int = 
  if isSome(this.float3IInst):
    return get(this.float3IInst)
  let float3IInst = int(this.calcFloat3)
  this.float3IInst = some(float3IInst)
  return get(this.float3IInst)

proc singleI(this: FloatToI): int = 
  if isSome(this.singleIInst):
    return get(this.singleIInst)
  let singleIInst = int(this.singleValue)
  this.singleIInst = some(singleIInst)
  return get(this.singleIInst)

proc calcFloat4(this: FloatToI): float64 = 
  if isSome(this.calcFloat4Inst):
    return get(this.calcFloat4Inst)
  let calcFloat4Inst = -2.7
  this.calcFloat4Inst = some(calcFloat4Inst)
  return get(this.calcFloat4Inst)

proc read*(_: typedesc[FloatToI], io: KaitaiStream, root: FloatToI, parent: ref RootObj): FloatToI =
  let this = new(FloatToI)
  let root = if root == nil: cast[FloatToI](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let singleValue = this.io.readF4le()
  this.singleValue = singleValue
  let doubleValue = this.io.readF8le()
  this.doubleValue = doubleValue
  result = this

proc fromFile*(_: typedesc[FloatToI], filename: string): FloatToI =
  FloatToI.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var FloatToIObj) =
  close(x.io)


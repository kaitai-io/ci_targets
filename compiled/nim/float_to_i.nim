import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  FloatToI* = ref object of KaitaiStruct
    singleValue*: float32
    doubleValue*: float64
    parent*: KaitaiStruct
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
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.singleValue = this.io.readF4le()
  this.doubleValue = this.io.readF8le()

proc float2I(this: FloatToI): int = 
  if isSome(this.float2IInst):
    return get(this.float2IInst)
  this.float2IInst = some(int(this.calcFloat2))
  if isSome(this.float2IInst):
    return get(this.float2IInst)

proc calcFloat1(this: FloatToI): float64 = 
  if isSome(this.calcFloat1Inst):
    return get(this.calcFloat1Inst)
  this.calcFloat1Inst = some(1.234)
  if isSome(this.calcFloat1Inst):
    return get(this.calcFloat1Inst)

proc float4I(this: FloatToI): int = 
  if isSome(this.float4IInst):
    return get(this.float4IInst)
  this.float4IInst = some(int(this.calcFloat4))
  if isSome(this.float4IInst):
    return get(this.float4IInst)

proc calcFloat3(this: FloatToI): float64 = 
  if isSome(this.calcFloat3Inst):
    return get(this.calcFloat3Inst)
  this.calcFloat3Inst = some(1.9)
  if isSome(this.calcFloat3Inst):
    return get(this.calcFloat3Inst)

proc calcFloat2(this: FloatToI): float64 = 
  if isSome(this.calcFloat2Inst):
    return get(this.calcFloat2Inst)
  this.calcFloat2Inst = some(1.5)
  if isSome(this.calcFloat2Inst):
    return get(this.calcFloat2Inst)

proc float1I(this: FloatToI): int = 
  if isSome(this.float1IInst):
    return get(this.float1IInst)
  this.float1IInst = some(int(this.calcFloat1))
  if isSome(this.float1IInst):
    return get(this.float1IInst)

proc doubleI(this: FloatToI): int = 
  if isSome(this.doubleIInst):
    return get(this.doubleIInst)
  this.doubleIInst = some(int(this.doubleValue))
  if isSome(this.doubleIInst):
    return get(this.doubleIInst)

proc float3I(this: FloatToI): int = 
  if isSome(this.float3IInst):
    return get(this.float3IInst)
  this.float3IInst = some(int(this.calcFloat3))
  if isSome(this.float3IInst):
    return get(this.float3IInst)

proc singleI(this: FloatToI): int = 
  if isSome(this.singleIInst):
    return get(this.singleIInst)
  this.singleIInst = some(int(this.singleValue))
  if isSome(this.singleIInst):
    return get(this.singleIInst)

proc calcFloat4(this: FloatToI): float64 = 
  if isSome(this.calcFloat4Inst):
    return get(this.calcFloat4Inst)
  this.calcFloat4Inst = some(-2.7)
  if isSome(this.calcFloat4Inst):
    return get(this.calcFloat4Inst)

proc fromFile*(_: typedesc[FloatToI], filename: string): FloatToI =
  FloatToI.read(newKaitaiFileStream(filename), nil, nil)


import ../../runtime/nim/kaitai
import options

{.experimental: "dotOperators".}

type
  FloatToI* = ref FloatToIObj
  FloatToIObj* = object
    io: KaitaiStream
    root*: FloatToI
    parent*: ref RootObj
    singleValue*: float32
    doubleValue*: float64
    float2IInst: proc(): int
    calcFloat1Inst: proc(): float64
    float4IInst: proc(): int
    calcFloat3Inst: proc(): float64
    calcFloat2Inst: proc(): float64
    float1IInst: proc(): int
    doubleIInst: proc(): int
    float3IInst: proc(): int
    singleIInst: proc(): int
    calcFloat4Inst: proc(): float64

# FloatToI
template `.`*(a: FloatToI, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[FloatToI], io: KaitaiStream, root: FloatToI, parent: ref RootObj): owned FloatToI =
  result = new(FloatToI)
  let root = if root == nil: cast[FloatToI](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.singleValue = readF4le(io)
  result.doubleValue = readF8le(io)

proc fromFile*(_: typedesc[FloatToI], filename: string): owned FloatToI =
  FloatToI.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var FloatToIObj) =
  close(x.io)


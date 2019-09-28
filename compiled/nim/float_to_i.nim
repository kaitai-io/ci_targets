# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  FloatToI* = ref object
    singleValue*: float32
    doubleValue*: float64
    root*: FloatToI
    parent*: ref RootObj
    float2I*: Option[int]
    calcFloat1*: Option[float64]
    float4I*: Option[int]
    calcFloat3*: Option[float64]
    calcFloat2*: Option[float64]
    float1I*: Option[int]
    doubleI*: Option[int]
    float3I*: Option[int]
    singleI*: Option[int]
    calcFloat4*: Option[float64]

proc read*(_: typedesc[FloatToI], stream: KaitaiStream, root: FloatToI, parent: ref RootObj): owned FloatToI =
  result = new(FloatToI)
  let root = if root == nil: cast[FloatToI](result) else: root
  result.singleValue = readF4le(stream)
  result.doubleValue = readF8le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[FloatToI], filename: string): owned FloatToI =
  var stream = newKaitaiStream(filename)
  FloatToI.read(stream, nil, nil)

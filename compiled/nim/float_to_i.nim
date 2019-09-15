# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  FloatToI* = ref object
    singleValue*: float32
    doubleValue*: float64
    root*: FloatToI
    parent*: ref RootObj

proc read*(_: typedesc[FloatToI], stream: KaitaiStream, root: FloatToI, parent: ref RootObj): owned FloatToI =
  result = new(FloatToI)
  let root = if root == nil: result else: root
  result.singleValue = readF4le(stream)
  result.doubleValue = readF8le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[FloatToI], filename: string): owned FloatToI =
  var stream = newKaitaiStream(filename)
  FloatToI.read(stream, nil, nil)

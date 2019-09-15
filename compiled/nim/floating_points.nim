# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  FloatingPoints* = ref object
    singleValue*: float32
    doubleValue*: float64
    singleValueBe*: float32
    doubleValueBe*: float64
    approximateValue*: float32
    root*: FloatingPoints
    parent*: ref RootObj

proc read*(_: typedesc[FloatingPoints], stream: KaitaiStream, root: FloatingPoints, parent: ref RootObj): owned FloatingPoints =
  result = new(FloatingPoints)
  let root = if root == nil: result else: root
  result.singleValue = readF4le(stream)
  result.doubleValue = readF8le(stream)
  result.singleValueBe = readF4be(stream)
  result.doubleValueBe = readF8be(stream)
  result.approximateValue = readF4le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[FloatingPoints], filename: string): owned FloatingPoints =
  var stream = newKaitaiStream(filename)
  FloatingPoints.read(stream, nil, nil)

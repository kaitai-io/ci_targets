# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ImportsCircularA* = ref object
    code*: uint8
    two*: ImportsCircularB
    root*: ImportsCircularA
    parent*: ref RootObj

proc read*(_: typedesc[ImportsCircularA], stream: KaitaiStream, root: ImportsCircularA, parent: ref RootObj): owned ImportsCircularA =
  result = new(ImportsCircularA)
  let root = if root == nil: cast[ImportsCircularA](result) else: root
  result.code = readU1(stream)
  result.two = ImportsCircularB.read(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ImportsCircularA], filename: string): owned ImportsCircularA =
  var stream = newKaitaiStream(filename)
  ImportsCircularA.read(stream, nil, nil)

# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ImportsCircularB* = ref object
    initial*: uint8
    backRef*: ImportsCircularA
    root*: ImportsCircularB
    parent*: ref RootObj

proc read*(_: typedesc[ImportsCircularB], stream: KaitaiStream, root: ImportsCircularB, parent: ref RootObj): owned ImportsCircularB =
  result = new(ImportsCircularB)
  let root = if root == nil: cast[ImportsCircularB](result) else: root
  result.initial = readU1(stream)
  result.backRef = ImportsCircularA.read(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ImportsCircularB], filename: string): owned ImportsCircularB =
  var stream = newKaitaiStream(filename)
  ImportsCircularB.read(stream, nil, nil)

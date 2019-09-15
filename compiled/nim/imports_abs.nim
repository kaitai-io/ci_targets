# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ImportsAbs* = ref object
    len*: VlqBase128Le
    body*: seq[byte]
    root*: ImportsAbs
    parent*: ref RootObj

proc read*(_: typedesc[ImportsAbs], stream: KaitaiStream, root: ImportsAbs, parent: ref RootObj): owned ImportsAbs =
  result = new(ImportsAbs)
  let root = if root == nil: result else: root
  result.len = readUserTypeInstream(List(vlq_base128_le),None,List())(stream)
  result.body = readBytesLimitType(Attribute(Name(identifier(len)),identifier(value)),None,false,None,None)(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ImportsAbs], filename: string): owned ImportsAbs =
  var stream = newKaitaiStream(filename)
  ImportsAbs.read(stream, nil, nil)

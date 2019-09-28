# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  IfInstances* = ref object
    root*: IfInstances
    parent*: ref RootObj
    neverHappens*: Option[uint8]

proc read*(_: typedesc[IfInstances], stream: KaitaiStream, root: IfInstances, parent: ref RootObj): owned IfInstances =
  result = new(IfInstances)
  let root = if root == nil: cast[IfInstances](result) else: root
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[IfInstances], filename: string): owned IfInstances =
  var stream = newKaitaiStream(filename)
  IfInstances.read(stream, nil, nil)

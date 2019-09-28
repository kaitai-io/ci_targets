# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  InstanceStd* = ref object
    root*: InstanceStd
    parent*: ref RootObj
    header*: Option[string]

proc read*(_: typedesc[InstanceStd], stream: KaitaiStream, root: InstanceStd, parent: ref RootObj): owned InstanceStd =
  result = new(InstanceStd)
  let root = if root == nil: cast[InstanceStd](result) else: root
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[InstanceStd], filename: string): owned InstanceStd =
  var stream = newKaitaiStream(filename)
  InstanceStd.read(stream, nil, nil)

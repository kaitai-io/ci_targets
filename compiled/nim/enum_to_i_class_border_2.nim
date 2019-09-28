# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  EnumToIClassBorder2* = ref object
    root*: EnumToIClassBorder2
    parent*: ref RootObj
    isDog*: Option[bool]

proc read*(_: typedesc[EnumToIClassBorder2], stream: KaitaiStream, root: EnumToIClassBorder2, parent: ref RootObj): owned EnumToIClassBorder2 =
  result = new(EnumToIClassBorder2)
  let root = if root == nil: cast[EnumToIClassBorder2](result) else: root
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[EnumToIClassBorder2], filename: string): owned EnumToIClassBorder2 =
  var stream = newKaitaiStream(filename)
  EnumToIClassBorder2.read(stream, nil, nil)

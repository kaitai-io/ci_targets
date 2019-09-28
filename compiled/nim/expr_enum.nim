# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  ExprEnum* = ref object
    one*: uint8
    root*: ExprEnum
    parent*: ref RootObj
    constDog*: Option[Animal]
    derivedBoom*: Option[Animal]
    derivedDog*: Option[Animal]

proc read*(_: typedesc[ExprEnum], stream: KaitaiStream, root: ExprEnum, parent: ref RootObj): owned ExprEnum =
  result = new(ExprEnum)
  let root = if root == nil: cast[ExprEnum](result) else: root
  result.one = readU1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ExprEnum], filename: string): owned ExprEnum =
  var stream = newKaitaiStream(filename)
  ExprEnum.read(stream, nil, nil)

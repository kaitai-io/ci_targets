# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  ExprMod* = ref object
    intU*: uint32
    intS*: int32
    root*: ExprMod
    parent*: ref RootObj
    modPosConst*: Option[int]
    modNegConst*: Option[int]
    modPosSeq*: Option[int]
    modNegSeq*: Option[int]

proc read*(_: typedesc[ExprMod], stream: KaitaiStream, root: ExprMod, parent: ref RootObj): owned ExprMod =
  result = new(ExprMod)
  let root = if root == nil: cast[ExprMod](result) else: root
  result.intU = readU4le(stream)
  result.intS = readS4le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ExprMod], filename: string): owned ExprMod =
  var stream = newKaitaiStream(filename)
  ExprMod.read(stream, nil, nil)

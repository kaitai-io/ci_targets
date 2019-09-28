# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  TypeIntUnaryOp* = ref object
    valueS2*: int16
    valueS8*: int64
    root*: TypeIntUnaryOp
    parent*: ref RootObj
    unaryS2*: Option[int]
    unaryS8*: Option[int64]

proc read*(_: typedesc[TypeIntUnaryOp], stream: KaitaiStream, root: TypeIntUnaryOp, parent: ref RootObj): owned TypeIntUnaryOp =
  result = new(TypeIntUnaryOp)
  let root = if root == nil: cast[TypeIntUnaryOp](result) else: root
  result.valueS2 = readS2le(stream)
  result.valueS8 = readS8le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[TypeIntUnaryOp], filename: string): owned TypeIntUnaryOp =
  var stream = newKaitaiStream(filename)
  TypeIntUnaryOp.read(stream, nil, nil)

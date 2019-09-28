# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  ExprBytesCmp* = ref object
    one*: seq[byte]
    two*: seq[byte]
    root*: ExprBytesCmp
    parent*: ref RootObj
    isLe*: Option[bool]
    ack*: Option[seq[byte]]
    isGt2*: Option[bool]
    isGt*: Option[bool]
    ack2*: Option[seq[byte]]
    isEq*: Option[bool]
    isLt2*: Option[bool]
    isGe*: Option[bool]
    hiVal*: Option[seq[byte]]
    isNe*: Option[bool]
    isLt*: Option[bool]

proc read*(_: typedesc[ExprBytesCmp], stream: KaitaiStream, root: ExprBytesCmp, parent: ref RootObj): owned ExprBytesCmp =
  result = new(ExprBytesCmp)
  let root = if root == nil: cast[ExprBytesCmp](result) else: root
  result.one = readBytes(stream, int(1))
  result.two = readBytes(stream, int(3))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ExprBytesCmp], filename: string): owned ExprBytesCmp =
  var stream = newKaitaiStream(filename)
  ExprBytesCmp.read(stream, nil, nil)

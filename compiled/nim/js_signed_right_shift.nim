# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  JsSignedRightShift* = ref object
    root*: JsSignedRightShift
    parent*: ref RootObj
    shouldBe40000000*: Option[int]
    shouldBeA00000*: Option[int]

proc read*(_: typedesc[JsSignedRightShift], stream: KaitaiStream, root: JsSignedRightShift, parent: ref RootObj): owned JsSignedRightShift =
  result = new(JsSignedRightShift)
  let root = if root == nil: cast[JsSignedRightShift](result) else: root
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[JsSignedRightShift], filename: string): owned JsSignedRightShift =
  var stream = newKaitaiStream(filename)
  JsSignedRightShift.read(stream, nil, nil)

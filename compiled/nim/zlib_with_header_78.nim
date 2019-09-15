# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ZlibWithHeader78* = ref object
    data*: seq[byte]
    root*: ZlibWithHeader78
    parent*: ref RootObj
    _raw_data*: seq[byte]

proc read*(_: typedesc[ZlibWithHeader78], stream: KaitaiStream, root: ZlibWithHeader78, parent: ref RootObj): owned ZlibWithHeader78 =
  result = new(ZlibWithHeader78)
  let root = if root == nil: result else: root
  result.data = readBytesEosType(None,false,None,Some(ProcessZlib))(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ZlibWithHeader78], filename: string): owned ZlibWithHeader78 =
  var stream = newKaitaiStream(filename)
  ZlibWithHeader78.read(stream, nil, nil)

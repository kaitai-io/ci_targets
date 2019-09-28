# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ProcessCustom* = ref object
    buf1*: seq[byte]
    buf2*: seq[byte]
    key*: uint8
    buf3*: seq[byte]
    root*: ProcessCustom
    parent*: ref RootObj
    raw_buf1*: seq[byte]
    raw_buf2*: seq[byte]
    raw_buf3*: seq[byte]

proc read*(_: typedesc[ProcessCustom], stream: KaitaiStream, root: ProcessCustom, parent: ref RootObj): owned ProcessCustom =
  result = new(ProcessCustom)
  let root = if root == nil: cast[ProcessCustom](result) else: root
  result.buf1 = readBytes(stream, int(5))
  result.buf2 = readBytes(stream, int(5))
  result.key = readU1(stream)
  result.buf3 = readBytes(stream, int(5))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ProcessCustom], filename: string): owned ProcessCustom =
  var stream = newKaitaiStream(filename)
  ProcessCustom.read(stream, nil, nil)

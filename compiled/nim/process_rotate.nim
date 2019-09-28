# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ProcessRotate* = ref object
    buf1*: seq[byte]
    buf2*: seq[byte]
    key*: uint8
    buf3*: seq[byte]
    root*: ProcessRotate
    parent*: ref RootObj
    raw_buf1*: seq[byte]
    raw_buf2*: seq[byte]
    raw_buf3*: seq[byte]

proc read*(_: typedesc[ProcessRotate], stream: KaitaiStream, root: ProcessRotate, parent: ref RootObj): owned ProcessRotate =
  result = new(ProcessRotate)
  let root = if root == nil: cast[ProcessRotate](result) else: root
  result.buf1 = readBytes(stream, int(5))
  result.buf2 = readBytes(stream, int(5))
  result.key = readU1(stream)
  result.buf3 = readBytes(stream, int(5))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ProcessRotate], filename: string): owned ProcessRotate =
  var stream = newKaitaiStream(filename)
  ProcessRotate.read(stream, nil, nil)

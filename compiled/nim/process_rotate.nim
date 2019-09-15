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
    _raw_buf1*: seq[byte]
    _raw_buf2*: seq[byte]
    _raw_buf3*: seq[byte]

proc read*(_: typedesc[ProcessRotate], stream: KaitaiStream, root: ProcessRotate, parent: ref RootObj): owned ProcessRotate =
  result = new(ProcessRotate)
  let root = if root == nil: result else: root
  result.buf1 = readBytesLimitType(IntNum(5),None,false,None,Some(ProcessRotate(true,IntNum(3))))(stream)
  result.buf2 = readBytesLimitType(IntNum(5),None,false,None,Some(ProcessRotate(false,IntNum(3))))(stream)
  result.key = readU1(stream)
  result.buf3 = readBytesLimitType(IntNum(5),None,false,None,Some(ProcessRotate(true,Name(identifier(key)))))(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ProcessRotate], filename: string): owned ProcessRotate =
  var stream = newKaitaiStream(filename)
  ProcessRotate.read(stream, nil, nil)

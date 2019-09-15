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
    _raw_buf1*: seq[byte]
    _raw_buf2*: seq[byte]
    _raw_buf3*: seq[byte]

proc read*(_: typedesc[ProcessCustom], stream: KaitaiStream, root: ProcessCustom, parent: ref RootObj): owned ProcessCustom =
  result = new(ProcessCustom)
  let root = if root == nil: result else: root
  result.buf1 = readBytesLimitType(IntNum(5),None,false,None,Some(ProcessCustom(List(my_custom_fx),ArrayBuffer(IntNum(7), Bool(true), List(ArrayBuffer(IntNum(32), IntNum(48), IntNum(64)))))))(stream)
  result.buf2 = readBytesLimitType(IntNum(5),None,false,None,Some(ProcessCustom(List(nested, deeply, custom_fx),ArrayBuffer(IntNum(7)))))(stream)
  result.key = readU1(stream)
  result.buf3 = readBytesLimitType(IntNum(5),None,false,None,Some(ProcessCustom(List(my_custom_fx),ArrayBuffer(Name(identifier(key)), Bool(false), List(ArrayBuffer(IntNum(0)))))))(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ProcessCustom], filename: string): owned ProcessCustom =
  var stream = newKaitaiStream(filename)
  ProcessCustom.read(stream, nil, nil)

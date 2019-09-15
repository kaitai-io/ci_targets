# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ProcessXorValue* = ref object
    key*: uint8
    buf*: seq[byte]
    root*: ProcessXorValue
    parent*: ref RootObj
    _raw_buf*: seq[byte]

proc read*(_: typedesc[ProcessXorValue], stream: KaitaiStream, root: ProcessXorValue, parent: ref RootObj): owned ProcessXorValue =
  result = new(ProcessXorValue)
  let root = if root == nil: result else: root
  result.key = readU1(stream)
  result.buf = readBytesEosType(None,false,None,Some(ProcessXor(Name(identifier(key)))))(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ProcessXorValue], filename: string): owned ProcessXorValue =
  var stream = newKaitaiStream(filename)
  ProcessXorValue.read(stream, nil, nil)

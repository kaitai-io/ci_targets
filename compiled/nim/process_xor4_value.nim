# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ProcessXor4Value* = ref object
    key*: seq[byte]
    buf*: seq[byte]
    root*: ProcessXor4Value
    parent*: ref RootObj
    raw_buf*: seq[byte]

proc read*(_: typedesc[ProcessXor4Value], stream: KaitaiStream, root: ProcessXor4Value, parent: ref RootObj): owned ProcessXor4Value =
  result = new(ProcessXor4Value)
  let root = if root == nil: cast[ProcessXor4Value](result) else: root
  result.key = readBytes(stream, int(4))
  result.buf = readBytesFull(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ProcessXor4Value], filename: string): owned ProcessXor4Value =
  var stream = newKaitaiStream(filename)
  ProcessXor4Value.read(stream, nil, nil)

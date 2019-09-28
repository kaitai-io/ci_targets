# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  RepeatEosBit* = ref object
    nibbles*: seq[uint64]
    root*: RepeatEosBit
    parent*: ref RootObj

proc read*(_: typedesc[RepeatEosBit], stream: KaitaiStream, root: RepeatEosBit, parent: ref RootObj): owned RepeatEosBit =
  result = new(RepeatEosBit)
  let root = if root == nil: cast[RepeatEosBit](result) else: root
  result.nibbles = newSeq[uint64]()
  while not eof(stream):
    result.nibbles.add(readBitsInt(stream, 4))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[RepeatEosBit], filename: string): owned RepeatEosBit =
  var stream = newKaitaiStream(filename)
  RepeatEosBit.read(stream, nil, nil)

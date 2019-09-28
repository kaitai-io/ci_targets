# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  RepeatEosU4* = ref object
    numbers*: seq[uint32]
    root*: RepeatEosU4
    parent*: ref RootObj

proc read*(_: typedesc[RepeatEosU4], stream: KaitaiStream, root: RepeatEosU4, parent: ref RootObj): owned RepeatEosU4 =
  result = new(RepeatEosU4)
  let root = if root == nil: cast[RepeatEosU4](result) else: root
  result.numbers = newSeq[uint32]()
  while not eof(stream):
    result.numbers.add(readU4le(stream))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[RepeatEosU4], filename: string): owned RepeatEosU4 =
  var stream = newKaitaiStream(filename)
  RepeatEosU4.read(stream, nil, nil)

# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  Debug0* = ref object
    one*: uint8
    arrayOfInts*: seq[uint8]
    _unnamed2*: uint8
    root*: Debug0
    parent*: ref RootObj

proc read*(_: typedesc[Debug0], stream: KaitaiStream, root: Debug0, parent: ref RootObj): owned Debug0 =
  result = new(Debug0)
  let root = if root == nil: cast[Debug0](result) else: root
  result.one = readU1(stream)
  result.arrayOfInts = newSeq[uint8]()
  while not eof(stream):
    result.arrayOfInts.add(readU1(stream))
  result._unnamed2 = readU1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Debug0], filename: string): owned Debug0 =
  var stream = newKaitaiStream(filename)
  Debug0.read(stream, nil, nil)

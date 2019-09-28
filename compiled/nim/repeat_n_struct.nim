# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  RepeatNStruct* = ref object
    qty*: uint32
    chunks*: seq[Chunk]
    root*: RepeatNStruct
    parent*: ref RootObj
  Chunk* = ref object
    offset*: uint32
    len*: uint32
    root*: RepeatNStruct
    parent*: RepeatNStruct

proc read*(_: typedesc[Chunk], stream: KaitaiStream, root: RepeatNStruct, parent: RepeatNStruct): owned Chunk =
  result = new(Chunk)
  let root = if root == nil: cast[RepeatNStruct](result) else: root
  result.offset = readU4le(stream)
  result.len = readU4le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Chunk], filename: string): owned Chunk =
  var stream = newKaitaiStream(filename)
  Chunk.read(stream, nil, nil)

proc read*(_: typedesc[RepeatNStruct], stream: KaitaiStream, root: RepeatNStruct, parent: ref RootObj): owned RepeatNStruct =
  result = new(RepeatNStruct)
  let root = if root == nil: cast[RepeatNStruct](result) else: root
  result.qty = readU4le(stream)
  result.chunks = newSeq[Chunk]()
  while not eof(stream):
    result.chunks.add(Chunk.read(stream, root, result))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[RepeatNStruct], filename: string): owned RepeatNStruct =
  var stream = newKaitaiStream(filename)
  RepeatNStruct.read(stream, nil, nil)

# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  RepeatEosStruct* = ref object
    chunks*: seq[Chunk]
    root*: RepeatEosStruct
    parent*: ref RootObj
  Chunk* = ref object
    offset*: uint32
    len*: uint32
    root*: RepeatEosStruct
    parent*: RepeatEosStruct

proc read*(_: typedesc[Chunk], stream: KaitaiStream, root: RepeatEosStruct, parent: RepeatEosStruct): owned Chunk =
  result = new(Chunk)
  let root = if root == nil: cast[RepeatEosStruct](result) else: root
  result.offset = readU4le(stream)
  result.len = readU4le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Chunk], filename: string): owned Chunk =
  var stream = newKaitaiStream(filename)
  Chunk.read(stream, nil, nil)

proc read*(_: typedesc[RepeatEosStruct], stream: KaitaiStream, root: RepeatEosStruct, parent: ref RootObj): owned RepeatEosStruct =
  result = new(RepeatEosStruct)
  let root = if root == nil: cast[RepeatEosStruct](result) else: root
  result.chunks = newSeq[Chunk]()
  while not eof(stream):
    result.chunks.add(Chunk.read(stream, root, result))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[RepeatEosStruct], filename: string): owned RepeatEosStruct =
  var stream = newKaitaiStream(filename)
  RepeatEosStruct.read(stream, nil, nil)

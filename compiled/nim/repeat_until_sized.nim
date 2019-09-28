# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  RepeatUntilSized* = ref object
    records*: seq[Record]
    root*: RepeatUntilSized
    parent*: ref RootObj
    raw_records*: seq[seq[byte]]
  Record* = ref object
    marker*: uint8
    body*: uint32
    root*: RepeatUntilSized
    parent*: RepeatUntilSized

proc read*(_: typedesc[Record], stream: KaitaiStream, root: RepeatUntilSized, parent: RepeatUntilSized): owned Record =
  result = new(Record)
  let root = if root == nil: cast[RepeatUntilSized](result) else: root
  result.marker = readU1(stream)
  result.body = readU4le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Record], filename: string): owned Record =
  var stream = newKaitaiStream(filename)
  Record.read(stream, nil, nil)

proc read*(_: typedesc[RepeatUntilSized], stream: KaitaiStream, root: RepeatUntilSized, parent: ref RootObj): owned RepeatUntilSized =
  result = new(RepeatUntilSized)
  let root = if root == nil: cast[RepeatUntilSized](result) else: root
  result.records = newSeq[Record]()
  while not eof(stream):
    result.records.add(Record.read(stream, root, result))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[RepeatUntilSized], filename: string): owned RepeatUntilSized =
  var stream = newKaitaiStream(filename)
  RepeatUntilSized.read(stream, nil, nil)

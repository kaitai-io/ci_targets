# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  ProcessCoerceUsertype1* = ref object
    records*: seq[Record]
    root*: ProcessCoerceUsertype1
    parent*: ref RootObj
  Record* = ref object
    flag*: uint8
    bufUnproc*: Foo
    bufProc*: Foo
    root*: ProcessCoerceUsertype1
    parent*: ProcessCoerceUsertype1
    raw_bufUnproc*: seq[byte]
    raw_bufProc*: seq[byte]
    raw_raw_bufProc*: seq[byte]
    buf*: Option[Foo]
  Foo* = ref object
    value*: uint32
    root*: ProcessCoerceUsertype1
    parent*: Record

proc read*(_: typedesc[Record], stream: KaitaiStream, root: ProcessCoerceUsertype1, parent: ProcessCoerceUsertype1): owned Record =
  result = new(Record)
  let root = if root == nil: cast[ProcessCoerceUsertype1](result) else: root
  result.flag = readU1(stream)
  result.bufUnproc = Foo.read(stream, root, result)
  result.bufProc = Foo.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Record], filename: string): owned Record =
  var stream = newKaitaiStream(filename)
  Record.read(stream, nil, nil)

proc read*(_: typedesc[Foo], stream: KaitaiStream, root: ProcessCoerceUsertype1, parent: Record): owned Foo =
  result = new(Foo)
  let root = if root == nil: cast[ProcessCoerceUsertype1](result) else: root
  result.value = readU4le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Foo], filename: string): owned Foo =
  var stream = newKaitaiStream(filename)
  Foo.read(stream, nil, nil)

proc read*(_: typedesc[ProcessCoerceUsertype1], stream: KaitaiStream, root: ProcessCoerceUsertype1, parent: ref RootObj): owned ProcessCoerceUsertype1 =
  result = new(ProcessCoerceUsertype1)
  let root = if root == nil: cast[ProcessCoerceUsertype1](result) else: root
  result.records = newSeq[Record]()
  while not eof(stream):
    result.records.add(Record.read(stream, root, result))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ProcessCoerceUsertype1], filename: string): owned ProcessCoerceUsertype1 =
  var stream = newKaitaiStream(filename)
  ProcessCoerceUsertype1.read(stream, nil, nil)

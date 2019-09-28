# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  ProcessCoerceBytes* = ref object
    records*: seq[Record]
    root*: ProcessCoerceBytes
    parent*: ref RootObj
  Record* = ref object
    flag*: uint8
    bufUnproc*: seq[byte]
    bufProc*: seq[byte]
    root*: ProcessCoerceBytes
    parent*: ProcessCoerceBytes
    raw_bufProc*: seq[byte]
    buf*: Option[seq[byte]]

proc read*(_: typedesc[Record], stream: KaitaiStream, root: ProcessCoerceBytes, parent: ProcessCoerceBytes): owned Record =
  result = new(Record)
  let root = if root == nil: cast[ProcessCoerceBytes](result) else: root
  result.flag = readU1(stream)
  result.bufUnproc = readBytes(stream, int(4))
  result.bufProc = readBytes(stream, int(4))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Record], filename: string): owned Record =
  var stream = newKaitaiStream(filename)
  Record.read(stream, nil, nil)

proc read*(_: typedesc[ProcessCoerceBytes], stream: KaitaiStream, root: ProcessCoerceBytes, parent: ref RootObj): owned ProcessCoerceBytes =
  result = new(ProcessCoerceBytes)
  let root = if root == nil: cast[ProcessCoerceBytes](result) else: root
  result.records = newSeq[Record]()
  while not eof(stream):
    result.records.add(Record.read(stream, root, result))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ProcessCoerceBytes], filename: string): owned ProcessCoerceBytes =
  var stream = newKaitaiStream(filename)
  ProcessCoerceBytes.read(stream, nil, nil)

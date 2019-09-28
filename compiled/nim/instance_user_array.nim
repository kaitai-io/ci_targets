# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  InstanceUserArray* = ref object
    ofs*: uint32
    entrySize*: uint32
    qtyEntries*: uint32
    root*: InstanceUserArray
    parent*: ref RootObj
    raw_userEntries*: seq[seq[byte]]
    userEntries*: Option[seq[Entry]]
  Entry* = ref object
    word1*: uint16
    word2*: uint16
    root*: InstanceUserArray
    parent*: InstanceUserArray

proc read*(_: typedesc[Entry], stream: KaitaiStream, root: InstanceUserArray, parent: InstanceUserArray): owned Entry =
  result = new(Entry)
  let root = if root == nil: cast[InstanceUserArray](result) else: root
  result.word1 = readU2le(stream)
  result.word2 = readU2le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Entry], filename: string): owned Entry =
  var stream = newKaitaiStream(filename)
  Entry.read(stream, nil, nil)

proc read*(_: typedesc[InstanceUserArray], stream: KaitaiStream, root: InstanceUserArray, parent: ref RootObj): owned InstanceUserArray =
  result = new(InstanceUserArray)
  let root = if root == nil: cast[InstanceUserArray](result) else: root
  result.ofs = readU4le(stream)
  result.entrySize = readU4le(stream)
  result.qtyEntries = readU4le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[InstanceUserArray], filename: string): owned InstanceUserArray =
  var stream = newKaitaiStream(filename)
  InstanceUserArray.read(stream, nil, nil)

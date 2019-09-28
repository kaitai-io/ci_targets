# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  InstanceStdArray* = ref object
    ofs*: uint32
    entrySize*: uint32
    qtyEntries*: uint32
    root*: InstanceStdArray
    parent*: ref RootObj
    entries*: Option[seq[seq[byte]]]

proc read*(_: typedesc[InstanceStdArray], stream: KaitaiStream, root: InstanceStdArray, parent: ref RootObj): owned InstanceStdArray =
  result = new(InstanceStdArray)
  let root = if root == nil: cast[InstanceStdArray](result) else: root
  result.ofs = readU4le(stream)
  result.entrySize = readU4le(stream)
  result.qtyEntries = readU4le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[InstanceStdArray], filename: string): owned InstanceStdArray =
  var stream = newKaitaiStream(filename)
  InstanceStdArray.read(stream, nil, nil)

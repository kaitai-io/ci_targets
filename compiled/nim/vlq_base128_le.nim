# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  VlqBase128Le* = ref object
    groups*: seq[Group]
    root*: VlqBase128Le
    parent*: ref RootObj
    len*: Option[int]
    value*: Option[int]
  Group* = ref object
    b*: uint8
    root*: VlqBase128Le
    parent*: VlqBase128Le
    hasNext*: Option[bool]
    value*: Option[int]

proc read*(_: typedesc[Group], stream: KaitaiStream, root: VlqBase128Le, parent: VlqBase128Le): owned Group =
  result = new(Group)
  let root = if root == nil: cast[VlqBase128Le](result) else: root
  result.b = readU1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Group], filename: string): owned Group =
  var stream = newKaitaiStream(filename)
  Group.read(stream, nil, nil)

proc read*(_: typedesc[VlqBase128Le], stream: KaitaiStream, root: VlqBase128Le, parent: ref RootObj): owned VlqBase128Le =
  result = new(VlqBase128Le)
  let root = if root == nil: cast[VlqBase128Le](result) else: root
  result.groups = newSeq[Group]()
  while not eof(stream):
    result.groups.add(Group.read(stream, root, result))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[VlqBase128Le], filename: string): owned VlqBase128Le =
  var stream = newKaitaiStream(filename)
  VlqBase128Le.read(stream, nil, nil)

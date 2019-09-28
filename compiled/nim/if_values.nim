# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  IfValues* = ref object
    codes*: seq[Code]
    root*: IfValues
    parent*: ref RootObj
  Code* = ref object
    opcode*: uint8
    root*: IfValues
    parent*: IfValues
    halfOpcode*: Option[int]

proc read*(_: typedesc[Code], stream: KaitaiStream, root: IfValues, parent: IfValues): owned Code =
  result = new(Code)
  let root = if root == nil: cast[IfValues](result) else: root
  result.opcode = readU1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Code], filename: string): owned Code =
  var stream = newKaitaiStream(filename)
  Code.read(stream, nil, nil)

proc read*(_: typedesc[IfValues], stream: KaitaiStream, root: IfValues, parent: ref RootObj): owned IfValues =
  result = new(IfValues)
  let root = if root == nil: cast[IfValues](result) else: root
  result.codes = newSeq[Code]()
  while not eof(stream):
    result.codes.add(Code.read(stream, root, result))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[IfValues], filename: string): owned IfValues =
  var stream = newKaitaiStream(filename)
  IfValues.read(stream, nil, nil)

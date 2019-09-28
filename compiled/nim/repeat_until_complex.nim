# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  RepeatUntilComplex* = ref object
    first*: seq[TypeU1]
    second*: seq[TypeU2]
    third*: seq[uint8]
    root*: RepeatUntilComplex
    parent*: ref RootObj
  TypeU1* = ref object
    count*: uint8
    values*: seq[uint8]
    root*: RepeatUntilComplex
    parent*: RepeatUntilComplex
  TypeU2* = ref object
    count*: uint16
    values*: seq[uint16]
    root*: RepeatUntilComplex
    parent*: RepeatUntilComplex

proc read*(_: typedesc[TypeU1], stream: KaitaiStream, root: RepeatUntilComplex, parent: RepeatUntilComplex): owned TypeU1 =
  result = new(TypeU1)
  let root = if root == nil: cast[RepeatUntilComplex](result) else: root
  result.count = readU1(stream)
  result.values = newSeq[uint8]()
  while not eof(stream):
    result.values.add(readU1(stream))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[TypeU1], filename: string): owned TypeU1 =
  var stream = newKaitaiStream(filename)
  TypeU1.read(stream, nil, nil)

proc read*(_: typedesc[TypeU2], stream: KaitaiStream, root: RepeatUntilComplex, parent: RepeatUntilComplex): owned TypeU2 =
  result = new(TypeU2)
  let root = if root == nil: cast[RepeatUntilComplex](result) else: root
  result.count = readU2le(stream)
  result.values = newSeq[uint16]()
  while not eof(stream):
    result.values.add(readU2le(stream))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[TypeU2], filename: string): owned TypeU2 =
  var stream = newKaitaiStream(filename)
  TypeU2.read(stream, nil, nil)

proc read*(_: typedesc[RepeatUntilComplex], stream: KaitaiStream, root: RepeatUntilComplex, parent: ref RootObj): owned RepeatUntilComplex =
  result = new(RepeatUntilComplex)
  let root = if root == nil: cast[RepeatUntilComplex](result) else: root
  result.first = newSeq[TypeU1]()
  while not eof(stream):
    result.first.add(TypeU1.read(stream, root, result))
  result.second = newSeq[TypeU2]()
  while not eof(stream):
    result.second.add(TypeU2.read(stream, root, result))
  result.third = newSeq[uint8]()
  while not eof(stream):
    result.third.add(readU1(stream))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[RepeatUntilComplex], filename: string): owned RepeatUntilComplex =
  var stream = newKaitaiStream(filename)
  RepeatUntilComplex.read(stream, nil, nil)

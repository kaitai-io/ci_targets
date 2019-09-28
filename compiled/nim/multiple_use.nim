# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  MultipleUse* = ref object
    t1*: Type1
    t2*: Type2
    root*: MultipleUse
    parent*: ref RootObj
  Multi* = ref object
    value*: int32
    root*: MultipleUse
    parent*: ref RootObj
  Type1* = ref object
    firstUse*: Multi
    root*: MultipleUse
    parent*: MultipleUse
  Type2* = ref object
    root*: MultipleUse
    parent*: MultipleUse
    secondUse*: Option[Multi]

proc read*(_: typedesc[Multi], stream: KaitaiStream, root: MultipleUse, parent: ref RootObj): owned Multi =
  result = new(Multi)
  let root = if root == nil: cast[MultipleUse](result) else: root
  result.value = readS4le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Multi], filename: string): owned Multi =
  var stream = newKaitaiStream(filename)
  Multi.read(stream, nil, nil)

proc read*(_: typedesc[Type1], stream: KaitaiStream, root: MultipleUse, parent: MultipleUse): owned Type1 =
  result = new(Type1)
  let root = if root == nil: cast[MultipleUse](result) else: root
  result.firstUse = Multi.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Type1], filename: string): owned Type1 =
  var stream = newKaitaiStream(filename)
  Type1.read(stream, nil, nil)

proc read*(_: typedesc[Type2], stream: KaitaiStream, root: MultipleUse, parent: MultipleUse): owned Type2 =
  result = new(Type2)
  let root = if root == nil: cast[MultipleUse](result) else: root
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Type2], filename: string): owned Type2 =
  var stream = newKaitaiStream(filename)
  Type2.read(stream, nil, nil)

proc read*(_: typedesc[MultipleUse], stream: KaitaiStream, root: MultipleUse, parent: ref RootObj): owned MultipleUse =
  result = new(MultipleUse)
  let root = if root == nil: cast[MultipleUse](result) else: root
  result.t1 = Type1.read(stream, root, result)
  result.t2 = Type2.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[MultipleUse], filename: string): owned MultipleUse =
  var stream = newKaitaiStream(filename)
  MultipleUse.read(stream, nil, nil)

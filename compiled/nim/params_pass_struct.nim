# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ParamsPassStruct* = ref object
    first*: Block
    one*: StructType
    root*: ParamsPassStruct
    parent*: ref RootObj
  Block* = ref object
    foo*: uint8
    root*: ParamsPassStruct
    parent*: ParamsPassStruct
  StructType* = ref object
    bar*: Baz
    root*: ParamsPassStruct
    parent*: ParamsPassStruct
  Baz* = ref object
    qux*: uint8
    root*: ParamsPassStruct
    parent*: StructType

proc read*(_: typedesc[Block], stream: KaitaiStream, root: ParamsPassStruct, parent: ParamsPassStruct): owned Block =
  result = new(Block)
  let root = if root == nil: cast[ParamsPassStruct](result) else: root
  result.foo = readU1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Block], filename: string): owned Block =
  var stream = newKaitaiStream(filename)
  Block.read(stream, nil, nil)

proc read*(_: typedesc[Baz], stream: KaitaiStream, root: ParamsPassStruct, parent: StructType): owned Baz =
  result = new(Baz)
  let root = if root == nil: cast[ParamsPassStruct](result) else: root
  result.qux = readU1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Baz], filename: string): owned Baz =
  var stream = newKaitaiStream(filename)
  Baz.read(stream, nil, nil)

proc read*(_: typedesc[StructType], stream: KaitaiStream, root: ParamsPassStruct, parent: ParamsPassStruct): owned StructType =
  result = new(StructType)
  let root = if root == nil: cast[ParamsPassStruct](result) else: root
  result.bar = Baz.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[StructType], filename: string): owned StructType =
  var stream = newKaitaiStream(filename)
  StructType.read(stream, nil, nil)

proc read*(_: typedesc[ParamsPassStruct], stream: KaitaiStream, root: ParamsPassStruct, parent: ref RootObj): owned ParamsPassStruct =
  result = new(ParamsPassStruct)
  let root = if root == nil: cast[ParamsPassStruct](result) else: root
  result.first = Block.read(stream, root, result)
  result.one = StructType.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ParamsPassStruct], filename: string): owned ParamsPassStruct =
  var stream = newKaitaiStream(filename)
  ParamsPassStruct.read(stream, nil, nil)

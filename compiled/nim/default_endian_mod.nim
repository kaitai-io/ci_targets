# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  DefaultEndianMod* = ref object
    main*: MainObj
    root*: DefaultEndianMod
    parent*: ref RootObj
  MainObj* = ref object
    one*: int32
    nest*: Subnest
    nestBe*: SubnestBe
    root*: DefaultEndianMod
    parent*: DefaultEndianMod
  Subnest* = ref object
    two*: int32
    root*: DefaultEndianMod
    parent*: MainObj
  SubnestBe* = ref object
    two*: int32
    root*: DefaultEndianMod
    parent*: MainObj

proc read*(_: typedesc[Subnest], stream: KaitaiStream, root: DefaultEndianMod, parent: MainObj): owned Subnest =
  result = new(Subnest)
  let root = if root == nil: cast[DefaultEndianMod](result) else: root
  result.two = readS4le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Subnest], filename: string): owned Subnest =
  var stream = newKaitaiStream(filename)
  Subnest.read(stream, nil, nil)

proc read*(_: typedesc[SubnestBe], stream: KaitaiStream, root: DefaultEndianMod, parent: MainObj): owned SubnestBe =
  result = new(SubnestBe)
  let root = if root == nil: cast[DefaultEndianMod](result) else: root
  result.two = readS4be(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[SubnestBe], filename: string): owned SubnestBe =
  var stream = newKaitaiStream(filename)
  SubnestBe.read(stream, nil, nil)

proc read*(_: typedesc[MainObj], stream: KaitaiStream, root: DefaultEndianMod, parent: DefaultEndianMod): owned MainObj =
  result = new(MainObj)
  let root = if root == nil: cast[DefaultEndianMod](result) else: root
  result.one = readS4le(stream)
  result.nest = Subnest.read(stream, root, result)
  result.nestBe = SubnestBe.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[MainObj], filename: string): owned MainObj =
  var stream = newKaitaiStream(filename)
  MainObj.read(stream, nil, nil)

proc read*(_: typedesc[DefaultEndianMod], stream: KaitaiStream, root: DefaultEndianMod, parent: ref RootObj): owned DefaultEndianMod =
  result = new(DefaultEndianMod)
  let root = if root == nil: cast[DefaultEndianMod](result) else: root
  result.main = MainObj.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[DefaultEndianMod], filename: string): owned DefaultEndianMod =
  var stream = newKaitaiStream(filename)
  DefaultEndianMod.read(stream, nil, nil)

# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  DebugArrayUser* = ref object
    oneCat*: Cat
    arrayOfCats*: seq[Cat]
    root*: DebugArrayUser
    parent*: ref RootObj
  Cat* = ref object
    meow*: uint8
    root*: DebugArrayUser
    parent*: DebugArrayUser

proc read*(_: typedesc[Cat], stream: KaitaiStream, root: DebugArrayUser, parent: DebugArrayUser): owned Cat =
  result = new(Cat)
  let root = if root == nil: cast[DebugArrayUser](result) else: root
  result.meow = readU1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Cat], filename: string): owned Cat =
  var stream = newKaitaiStream(filename)
  Cat.read(stream, nil, nil)

proc read*(_: typedesc[DebugArrayUser], stream: KaitaiStream, root: DebugArrayUser, parent: ref RootObj): owned DebugArrayUser =
  result = new(DebugArrayUser)
  let root = if root == nil: cast[DebugArrayUser](result) else: root
  result.oneCat = Cat.read(stream, root, result)
  result.arrayOfCats = newSeq[Cat]()
  while not eof(stream):
    result.arrayOfCats.add(Cat.read(stream, root, result))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[DebugArrayUser], filename: string): owned DebugArrayUser =
  var stream = newKaitaiStream(filename)
  DebugArrayUser.read(stream, nil, nil)

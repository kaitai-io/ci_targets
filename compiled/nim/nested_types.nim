# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  NestedTypes* = ref object
    one*: SubtypeA
    two*: SubtypeB
    root*: NestedTypes
    parent*: ref RootObj
  SubtypeA* = ref object
    typedAtRoot*: SubtypeB
    typedHere*: SubtypeC
    root*: NestedTypes
    parent*: NestedTypes
  SubtypeC* = ref object
    valueC*: int8
    root*: NestedTypes
    parent*: SubtypeA
  SubtypeB* = ref object
    valueB*: int8
    root*: NestedTypes
    parent*: ref RootObj

proc read*(_: typedesc[SubtypeC], stream: KaitaiStream, root: NestedTypes, parent: SubtypeA): owned SubtypeC =
  result = new(SubtypeC)
  let root = if root == nil: cast[NestedTypes](result) else: root
  result.valueC = readS1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[SubtypeC], filename: string): owned SubtypeC =
  var stream = newKaitaiStream(filename)
  SubtypeC.read(stream, nil, nil)

proc read*(_: typedesc[SubtypeA], stream: KaitaiStream, root: NestedTypes, parent: NestedTypes): owned SubtypeA =
  result = new(SubtypeA)
  let root = if root == nil: cast[NestedTypes](result) else: root
  result.typedAtRoot = SubtypeB.read(stream, root, result)
  result.typedHere = SubtypeC.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[SubtypeA], filename: string): owned SubtypeA =
  var stream = newKaitaiStream(filename)
  SubtypeA.read(stream, nil, nil)

proc read*(_: typedesc[SubtypeB], stream: KaitaiStream, root: NestedTypes, parent: ref RootObj): owned SubtypeB =
  result = new(SubtypeB)
  let root = if root == nil: cast[NestedTypes](result) else: root
  result.valueB = readS1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[SubtypeB], filename: string): owned SubtypeB =
  var stream = newKaitaiStream(filename)
  SubtypeB.read(stream, nil, nil)

proc read*(_: typedesc[NestedTypes], stream: KaitaiStream, root: NestedTypes, parent: ref RootObj): owned NestedTypes =
  result = new(NestedTypes)
  let root = if root == nil: cast[NestedTypes](result) else: root
  result.one = SubtypeA.read(stream, root, result)
  result.two = SubtypeB.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[NestedTypes], filename: string): owned NestedTypes =
  var stream = newKaitaiStream(filename)
  NestedTypes.read(stream, nil, nil)

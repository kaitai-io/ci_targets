# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  NestedTypes3* = ref object
    aCc*: SubtypeCc
    aCD*: SubtypeD
    b*: SubtypeB
    root*: NestedTypes3
    parent*: ref RootObj
  SubtypeA* = ref object
    root*: NestedTypes3
    parent*: ref RootObj
  SubtypeC* = ref object
    root*: NestedTypes3
    parent*: ref RootObj
  SubtypeD* = ref object
    valueD*: int8
    root*: NestedTypes3
    parent*: ref RootObj
  SubtypeCc* = ref object
    valueCc*: int8
    root*: NestedTypes3
    parent*: ref RootObj
  SubtypeB* = ref object
    valueB*: int8
    aCc*: SubtypeCc
    aCD*: SubtypeD
    root*: NestedTypes3
    parent*: NestedTypes3

proc read*(_: typedesc[SubtypeD], stream: KaitaiStream, root: NestedTypes3, parent: ref RootObj): owned SubtypeD =
  result = new(SubtypeD)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.valueD = readS1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[SubtypeD], filename: string): owned SubtypeD =
  var stream = newKaitaiStream(filename)
  SubtypeD.read(stream, nil, nil)

proc read*(_: typedesc[SubtypeC], stream: KaitaiStream, root: NestedTypes3, parent: ref RootObj): owned SubtypeC =
  result = new(SubtypeC)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[SubtypeC], filename: string): owned SubtypeC =
  var stream = newKaitaiStream(filename)
  SubtypeC.read(stream, nil, nil)

proc read*(_: typedesc[SubtypeCc], stream: KaitaiStream, root: NestedTypes3, parent: ref RootObj): owned SubtypeCc =
  result = new(SubtypeCc)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.valueCc = readS1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[SubtypeCc], filename: string): owned SubtypeCc =
  var stream = newKaitaiStream(filename)
  SubtypeCc.read(stream, nil, nil)

proc read*(_: typedesc[SubtypeA], stream: KaitaiStream, root: NestedTypes3, parent: ref RootObj): owned SubtypeA =
  result = new(SubtypeA)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[SubtypeA], filename: string): owned SubtypeA =
  var stream = newKaitaiStream(filename)
  SubtypeA.read(stream, nil, nil)

proc read*(_: typedesc[SubtypeB], stream: KaitaiStream, root: NestedTypes3, parent: NestedTypes3): owned SubtypeB =
  result = new(SubtypeB)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.valueB = readS1(stream)
  result.aCc = SubtypeCc.read(stream, root, result)
  result.aCD = SubtypeD.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[SubtypeB], filename: string): owned SubtypeB =
  var stream = newKaitaiStream(filename)
  SubtypeB.read(stream, nil, nil)

proc read*(_: typedesc[NestedTypes3], stream: KaitaiStream, root: NestedTypes3, parent: ref RootObj): owned NestedTypes3 =
  result = new(NestedTypes3)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.aCc = SubtypeCc.read(stream, root, result)
  result.aCD = SubtypeD.read(stream, root, result)
  result.b = SubtypeB.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[NestedTypes3], filename: string): owned NestedTypes3 =
  var stream = newKaitaiStream(filename)
  NestedTypes3.read(stream, nil, nil)

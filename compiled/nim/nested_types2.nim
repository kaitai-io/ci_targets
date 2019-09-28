# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  NestedTypes2* = ref object
    one*: SubtypeA
    two*: SubtypeB
    root*: NestedTypes2
    parent*: ref RootObj
  SubtypeA* = ref object
    typedAtRoot*: SubtypeB
    typedHere1*: SubtypeC
    typedHere2*: SubtypeCc
    root*: NestedTypes2
    parent*: NestedTypes2
  SubtypeC* = ref object
    valueC*: int8
    typedHere*: SubtypeD
    typedParent*: SubtypeCc
    typedRoot*: SubtypeB
    root*: NestedTypes2
    parent*: SubtypeA
  SubtypeD* = ref object
    valueD*: int8
    root*: NestedTypes2
    parent*: SubtypeC
  SubtypeCc* = ref object
    valueCc*: int8
    root*: NestedTypes2
    parent*: ref RootObj
  SubtypeB* = ref object
    valueB*: int8
    root*: NestedTypes2
    parent*: ref RootObj

proc read*(_: typedesc[SubtypeD], stream: KaitaiStream, root: NestedTypes2, parent: SubtypeC): owned SubtypeD =
  result = new(SubtypeD)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.valueD = readS1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[SubtypeD], filename: string): owned SubtypeD =
  var stream = newKaitaiStream(filename)
  SubtypeD.read(stream, nil, nil)

proc read*(_: typedesc[SubtypeC], stream: KaitaiStream, root: NestedTypes2, parent: SubtypeA): owned SubtypeC =
  result = new(SubtypeC)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.valueC = readS1(stream)
  result.typedHere = SubtypeD.read(stream, root, result)
  result.typedParent = SubtypeCc.read(stream, root, result)
  result.typedRoot = SubtypeB.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[SubtypeC], filename: string): owned SubtypeC =
  var stream = newKaitaiStream(filename)
  SubtypeC.read(stream, nil, nil)

proc read*(_: typedesc[SubtypeCc], stream: KaitaiStream, root: NestedTypes2, parent: ref RootObj): owned SubtypeCc =
  result = new(SubtypeCc)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.valueCc = readS1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[SubtypeCc], filename: string): owned SubtypeCc =
  var stream = newKaitaiStream(filename)
  SubtypeCc.read(stream, nil, nil)

proc read*(_: typedesc[SubtypeA], stream: KaitaiStream, root: NestedTypes2, parent: NestedTypes2): owned SubtypeA =
  result = new(SubtypeA)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.typedAtRoot = SubtypeB.read(stream, root, result)
  result.typedHere1 = SubtypeC.read(stream, root, result)
  result.typedHere2 = SubtypeCc.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[SubtypeA], filename: string): owned SubtypeA =
  var stream = newKaitaiStream(filename)
  SubtypeA.read(stream, nil, nil)

proc read*(_: typedesc[SubtypeB], stream: KaitaiStream, root: NestedTypes2, parent: ref RootObj): owned SubtypeB =
  result = new(SubtypeB)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.valueB = readS1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[SubtypeB], filename: string): owned SubtypeB =
  var stream = newKaitaiStream(filename)
  SubtypeB.read(stream, nil, nil)

proc read*(_: typedesc[NestedTypes2], stream: KaitaiStream, root: NestedTypes2, parent: ref RootObj): owned NestedTypes2 =
  result = new(NestedTypes2)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.one = SubtypeA.read(stream, root, result)
  result.two = SubtypeB.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[NestedTypes2], filename: string): owned NestedTypes2 =
  var stream = newKaitaiStream(filename)
  NestedTypes2.read(stream, nil, nil)

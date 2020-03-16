import ../../kaitai_struct_nim_runtime/kaitai_struct_nim_runtime



type
  SubtypeD* = ref SubtypeDObj
  SubtypeDObj* = object
    io: KaitaiStream
    root*: NestedTypes2
    parent*: SubtypeC
    valueD*: int8
  SubtypeC* = ref SubtypeCObj
  SubtypeCObj* = object
    io: KaitaiStream
    root*: NestedTypes2
    parent*: SubtypeA
    valueC*: int8
    typedHere*: SubtypeD
    typedParent*: SubtypeCc
    typedRoot*: SubtypeB
  SubtypeCc* = ref SubtypeCcObj
  SubtypeCcObj* = object
    io: KaitaiStream
    root*: NestedTypes2
    parent*: ref RootObj
    valueCc*: int8
  SubtypeA* = ref SubtypeAObj
  SubtypeAObj* = object
    io: KaitaiStream
    root*: NestedTypes2
    parent*: NestedTypes2
    typedAtRoot*: SubtypeB
    typedHere1*: SubtypeC
    typedHere2*: SubtypeCc
  SubtypeB* = ref SubtypeBObj
  SubtypeBObj* = object
    io: KaitaiStream
    root*: NestedTypes2
    parent*: ref RootObj
    valueB*: int8
  NestedTypes2* = ref NestedTypes2Obj
  NestedTypes2Obj* = object
    io: KaitaiStream
    root*: NestedTypes2
    parent*: ref RootObj
    one*: SubtypeA
    two*: SubtypeB

# SubtypeD
proc read*(_: typedesc[SubtypeD], io: KaitaiStream, root: NestedTypes2, parent: SubtypeC): owned SubtypeD =
  result = new(SubtypeD)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let valueD = readS1(io)
  result.valueD = valueD


proc fromFile*(_: typedesc[SubtypeD], filename: string): owned SubtypeD =
  SubtypeD.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var SubtypeDObj) =
  close(x.io)

# SubtypeC
proc read*(_: typedesc[SubtypeC], io: KaitaiStream, root: NestedTypes2, parent: SubtypeA): owned SubtypeC =
  result = new(SubtypeC)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let valueC = readS1(io)
  result.valueC = valueC
  let typedHere = SubtypeD.read(io, root, result)
  result.typedHere = typedHere
  let typedParent = SubtypeCc.read(io, root, result)
  result.typedParent = typedParent
  let typedRoot = SubtypeB.read(io, root, result)
  result.typedRoot = typedRoot


proc fromFile*(_: typedesc[SubtypeC], filename: string): owned SubtypeC =
  SubtypeC.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var SubtypeCObj) =
  close(x.io)

# SubtypeCc
proc read*(_: typedesc[SubtypeCc], io: KaitaiStream, root: NestedTypes2, parent: ref RootObj): owned SubtypeCc =
  result = new(SubtypeCc)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let valueCc = readS1(io)
  result.valueCc = valueCc


proc fromFile*(_: typedesc[SubtypeCc], filename: string): owned SubtypeCc =
  SubtypeCc.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var SubtypeCcObj) =
  close(x.io)

# SubtypeA
proc read*(_: typedesc[SubtypeA], io: KaitaiStream, root: NestedTypes2, parent: NestedTypes2): owned SubtypeA =
  result = new(SubtypeA)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let typedAtRoot = SubtypeB.read(io, root, result)
  result.typedAtRoot = typedAtRoot
  let typedHere1 = SubtypeC.read(io, root, result)
  result.typedHere1 = typedHere1
  let typedHere2 = SubtypeCc.read(io, root, result)
  result.typedHere2 = typedHere2


proc fromFile*(_: typedesc[SubtypeA], filename: string): owned SubtypeA =
  SubtypeA.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var SubtypeAObj) =
  close(x.io)

# SubtypeB
proc read*(_: typedesc[SubtypeB], io: KaitaiStream, root: NestedTypes2, parent: ref RootObj): owned SubtypeB =
  result = new(SubtypeB)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let valueB = readS1(io)
  result.valueB = valueB


proc fromFile*(_: typedesc[SubtypeB], filename: string): owned SubtypeB =
  SubtypeB.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var SubtypeBObj) =
  close(x.io)

# NestedTypes2
proc read*(_: typedesc[NestedTypes2], io: KaitaiStream, root: NestedTypes2, parent: ref RootObj): owned NestedTypes2 =
  result = new(NestedTypes2)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let one = SubtypeA.read(io, root, result)
  result.one = one
  let two = SubtypeB.read(io, root, result)
  result.two = two


proc fromFile*(_: typedesc[NestedTypes2], filename: string): owned NestedTypes2 =
  NestedTypes2.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes2Obj) =
  close(x.io)


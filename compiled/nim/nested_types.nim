import ../../runtime/nim/kaitai



type
  SubtypeC* = ref SubtypeCObj
  SubtypeCObj* = object
    io: KaitaiStream
    root*: NestedTypes
    parent*: SubtypeA
    valueC*: int8
  SubtypeA* = ref SubtypeAObj
  SubtypeAObj* = object
    io: KaitaiStream
    root*: NestedTypes
    parent*: NestedTypes
    typedAtRoot*: SubtypeB
    typedHere*: SubtypeC
  SubtypeB* = ref SubtypeBObj
  SubtypeBObj* = object
    io: KaitaiStream
    root*: NestedTypes
    parent*: ref RootObj
    valueB*: int8
  NestedTypes* = ref NestedTypesObj
  NestedTypesObj* = object
    io: KaitaiStream
    root*: NestedTypes
    parent*: ref RootObj
    one*: SubtypeA
    two*: SubtypeB

# SubtypeC
proc read*(_: typedesc[SubtypeC], io: KaitaiStream, root: NestedTypes, parent: SubtypeA): owned SubtypeC =
  result = new(SubtypeC)
  let root = if root == nil: cast[NestedTypes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.valueC = readS1(io)

proc fromFile*(_: typedesc[SubtypeC], filename: string): owned SubtypeC =
  SubtypeC.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var SubtypeCObj) =
  close(x.io)

# SubtypeA
proc read*(_: typedesc[SubtypeA], io: KaitaiStream, root: NestedTypes, parent: NestedTypes): owned SubtypeA =
  result = new(SubtypeA)
  let root = if root == nil: cast[NestedTypes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.typedAtRoot = SubtypeB.read(io, root, result)
  result.typedHere = SubtypeC.read(io, root, result)

proc fromFile*(_: typedesc[SubtypeA], filename: string): owned SubtypeA =
  SubtypeA.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var SubtypeAObj) =
  close(x.io)

# SubtypeB
proc read*(_: typedesc[SubtypeB], io: KaitaiStream, root: NestedTypes, parent: ref RootObj): owned SubtypeB =
  result = new(SubtypeB)
  let root = if root == nil: cast[NestedTypes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.valueB = readS1(io)

proc fromFile*(_: typedesc[SubtypeB], filename: string): owned SubtypeB =
  SubtypeB.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var SubtypeBObj) =
  close(x.io)

# NestedTypes
proc read*(_: typedesc[NestedTypes], io: KaitaiStream, root: NestedTypes, parent: ref RootObj): owned NestedTypes =
  result = new(NestedTypes)
  let root = if root == nil: cast[NestedTypes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.one = SubtypeA.read(io, root, result)
  result.two = SubtypeB.read(io, root, result)

proc fromFile*(_: typedesc[NestedTypes], filename: string): owned NestedTypes =
  NestedTypes.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypesObj) =
  close(x.io)


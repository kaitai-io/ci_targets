import kaitai_struct_nim_runtime

type
  NestedTypes_SubtypeA_SubtypeC* = ref NestedTypes_SubtypeA_SubtypeCObj
  NestedTypes_SubtypeA_SubtypeCObj* = object
    valueC*: int8
    io*: KaitaiStream
    root*: NestedTypes
    parent*: NestedTypes_SubtypeA
  NestedTypes_SubtypeA* = ref NestedTypes_SubtypeAObj
  NestedTypes_SubtypeAObj* = object
    typedAtRoot*: NestedTypes_SubtypeB
    typedHere*: NestedTypes_SubtypeA_SubtypeC
    io*: KaitaiStream
    root*: NestedTypes
    parent*: NestedTypes
  NestedTypes_SubtypeB* = ref NestedTypes_SubtypeBObj
  NestedTypes_SubtypeBObj* = object
    valueB*: int8
    io*: KaitaiStream
    root*: NestedTypes
    parent*: ref RootObj
  NestedTypes* = ref NestedTypesObj
  NestedTypesObj* = object
    one*: NestedTypes_SubtypeA
    two*: NestedTypes_SubtypeB
    io*: KaitaiStream
    root*: NestedTypes
    parent*: ref RootObj

### NestedTypes_SubtypeA_SubtypeC ###
proc read*(_: typedesc[NestedTypes_SubtypeA_SubtypeC], io: KaitaiStream, root: NestedTypes, parent: NestedTypes_SubtypeA): NestedTypes_SubtypeA_SubtypeC =
  result = new(NestedTypes_SubtypeA_SubtypeC)
  let root = if root == nil: cast[NestedTypes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let valueC = io.readS1()
  result.valueC = valueC

proc fromFile*(_: typedesc[NestedTypes_SubtypeA_SubtypeC], filename: string): NestedTypes_SubtypeA_SubtypeC =
  NestedTypes_SubtypeA_SubtypeC.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes_SubtypeA_SubtypeCObj) =
  close(x.io)

### NestedTypes_SubtypeA ###
proc read*(_: typedesc[NestedTypes_SubtypeA], io: KaitaiStream, root: NestedTypes, parent: NestedTypes): NestedTypes_SubtypeA =
  result = new(NestedTypes_SubtypeA)
  let root = if root == nil: cast[NestedTypes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let typedAtRoot = NestedTypes_SubtypeB.read(io, result, root)
  result.typedAtRoot = typedAtRoot
  let typedHere = NestedTypes_SubtypeA_SubtypeC.read(io, result, root)
  result.typedHere = typedHere

proc fromFile*(_: typedesc[NestedTypes_SubtypeA], filename: string): NestedTypes_SubtypeA =
  NestedTypes_SubtypeA.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes_SubtypeAObj) =
  close(x.io)

### NestedTypes_SubtypeB ###
proc read*(_: typedesc[NestedTypes_SubtypeB], io: KaitaiStream, root: NestedTypes, parent: ref RootObj): NestedTypes_SubtypeB =
  result = new(NestedTypes_SubtypeB)
  let root = if root == nil: cast[NestedTypes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let valueB = io.readS1()
  result.valueB = valueB

proc fromFile*(_: typedesc[NestedTypes_SubtypeB], filename: string): NestedTypes_SubtypeB =
  NestedTypes_SubtypeB.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes_SubtypeBObj) =
  close(x.io)

### NestedTypes ###
proc read*(_: typedesc[NestedTypes], io: KaitaiStream, root: NestedTypes, parent: ref RootObj): NestedTypes =
  result = new(NestedTypes)
  let root = if root == nil: cast[NestedTypes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let one = NestedTypes_SubtypeA.read(io, result, root)
  result.one = one
  let two = NestedTypes_SubtypeB.read(io, result, root)
  result.two = two

proc fromFile*(_: typedesc[NestedTypes], filename: string): NestedTypes =
  NestedTypes.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypesObj) =
  close(x.io)


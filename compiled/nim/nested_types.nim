import kaitai_struct_nim_runtime

type
  NestedTypessubtypeAsubtypeC* = ref NestedTypessubtypeAsubtypeCObj
  NestedTypessubtypeAsubtypeCObj* = object
    one*: SubtypeA
    two*: SubtypeB
    io*: KaitaiStream
    root*: NestedTypes
    parent*: ref RootObj
  NestedTypessubtypeA* = ref NestedTypessubtypeAObj
  NestedTypessubtypeAObj* = object
    one*: SubtypeA
    two*: SubtypeB
    io*: KaitaiStream
    root*: NestedTypes
    parent*: ref RootObj
  NestedTypessubtypeB* = ref NestedTypessubtypeBObj
  NestedTypessubtypeBObj* = object
    one*: SubtypeA
    two*: SubtypeB
    io*: KaitaiStream
    root*: NestedTypes
    parent*: ref RootObj
  NestedTypes* = ref NestedTypesObj
  NestedTypesObj* = object
    one*: SubtypeA
    two*: SubtypeB
    io*: KaitaiStream
    root*: NestedTypes
    parent*: ref RootObj

### NestedTypessubtypeAsubtypeC ###
proc read*(_: typedesc[NestedTypessubtypeAsubtypeC], io: KaitaiStream, root: NestedTypes, parent: NestedTypessubtypeA): NestedTypessubtypeAsubtypeC =
  result = new(NestedTypessubtypeAsubtypeC)
  let root = if root == nil: cast[NestedTypes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.valueC = result.io.readS1()

proc fromFile*(_: typedesc[NestedTypessubtypeAsubtypeC], filename: string): NestedTypessubtypeAsubtypeC =
  NestedTypessubtypeAsubtypeC.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypessubtypeAsubtypeCObj) =
  close(x.io)

### NestedTypessubtypeA ###
proc read*(_: typedesc[NestedTypessubtypeA], io: KaitaiStream, root: NestedTypes, parent: NestedTypes): NestedTypessubtypeA =
  result = new(NestedTypessubtypeA)
  let root = if root == nil: cast[NestedTypes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.typedAtRoot = SubtypeB.read(result.io, result, root)
  result.typedHere = SubtypeC.read(result.io, result, root)

proc fromFile*(_: typedesc[NestedTypessubtypeA], filename: string): NestedTypessubtypeA =
  NestedTypessubtypeA.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypessubtypeAObj) =
  close(x.io)

### NestedTypessubtypeB ###
proc read*(_: typedesc[NestedTypessubtypeB], io: KaitaiStream, root: NestedTypes, parent: ref RootObj): NestedTypessubtypeB =
  result = new(NestedTypessubtypeB)
  let root = if root == nil: cast[NestedTypes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.valueB = result.io.readS1()

proc fromFile*(_: typedesc[NestedTypessubtypeB], filename: string): NestedTypessubtypeB =
  NestedTypessubtypeB.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypessubtypeBObj) =
  close(x.io)

### NestedTypes ###
proc read*(_: typedesc[NestedTypes], io: KaitaiStream, root: NestedTypes, parent: ref RootObj): NestedTypes =
  result = new(NestedTypes)
  let root = if root == nil: cast[NestedTypes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.one = SubtypeA.read(result.io, result, root)
  result.two = SubtypeB.read(result.io, result, root)

proc fromFile*(_: typedesc[NestedTypes], filename: string): NestedTypes =
  NestedTypes.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypesObj) =
  close(x.io)


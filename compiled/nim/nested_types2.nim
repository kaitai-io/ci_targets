import kaitai_struct_nim_runtime

type
  NestedTypes2subtypeAsubtypeCsubtypeD* = ref NestedTypes2subtypeAsubtypeCsubtypeDObj
  NestedTypes2subtypeAsubtypeCsubtypeDObj* = object
    one*: SubtypeA
    two*: SubtypeB
    io*: KaitaiStream
    root*: NestedTypes2
    parent*: ref RootObj
  NestedTypes2subtypeAsubtypeC* = ref NestedTypes2subtypeAsubtypeCObj
  NestedTypes2subtypeAsubtypeCObj* = object
    one*: SubtypeA
    two*: SubtypeB
    io*: KaitaiStream
    root*: NestedTypes2
    parent*: ref RootObj
  NestedTypes2subtypeAsubtypeCc* = ref NestedTypes2subtypeAsubtypeCcObj
  NestedTypes2subtypeAsubtypeCcObj* = object
    one*: SubtypeA
    two*: SubtypeB
    io*: KaitaiStream
    root*: NestedTypes2
    parent*: ref RootObj
  NestedTypes2subtypeA* = ref NestedTypes2subtypeAObj
  NestedTypes2subtypeAObj* = object
    one*: SubtypeA
    two*: SubtypeB
    io*: KaitaiStream
    root*: NestedTypes2
    parent*: ref RootObj
  NestedTypes2subtypeB* = ref NestedTypes2subtypeBObj
  NestedTypes2subtypeBObj* = object
    one*: SubtypeA
    two*: SubtypeB
    io*: KaitaiStream
    root*: NestedTypes2
    parent*: ref RootObj
  NestedTypes2* = ref NestedTypes2Obj
  NestedTypes2Obj* = object
    one*: SubtypeA
    two*: SubtypeB
    io*: KaitaiStream
    root*: NestedTypes2
    parent*: ref RootObj

### NestedTypes2subtypeAsubtypeCsubtypeD ###
proc read*(_: typedesc[NestedTypes2subtypeAsubtypeCsubtypeD], io: KaitaiStream, root: NestedTypes2, parent: NestedTypes2subtypeAsubtypeC): NestedTypes2subtypeAsubtypeCsubtypeD =
  result = new(NestedTypes2subtypeAsubtypeCsubtypeD)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.valueD = result.io.readS1()

proc fromFile*(_: typedesc[NestedTypes2subtypeAsubtypeCsubtypeD], filename: string): NestedTypes2subtypeAsubtypeCsubtypeD =
  NestedTypes2subtypeAsubtypeCsubtypeD.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes2subtypeAsubtypeCsubtypeDObj) =
  close(x.io)

### NestedTypes2subtypeAsubtypeC ###
proc read*(_: typedesc[NestedTypes2subtypeAsubtypeC], io: KaitaiStream, root: NestedTypes2, parent: NestedTypes2subtypeA): NestedTypes2subtypeAsubtypeC =
  result = new(NestedTypes2subtypeAsubtypeC)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.valueC = result.io.readS1()
  result.typedHere = SubtypeD.read(result.io, result, root)
  result.typedParent = SubtypeCc.read(result.io, result, root)
  result.typedRoot = SubtypeB.read(result.io, result, root)

proc fromFile*(_: typedesc[NestedTypes2subtypeAsubtypeC], filename: string): NestedTypes2subtypeAsubtypeC =
  NestedTypes2subtypeAsubtypeC.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes2subtypeAsubtypeCObj) =
  close(x.io)

### NestedTypes2subtypeAsubtypeCc ###
proc read*(_: typedesc[NestedTypes2subtypeAsubtypeCc], io: KaitaiStream, root: NestedTypes2, parent: ref RootObj): NestedTypes2subtypeAsubtypeCc =
  result = new(NestedTypes2subtypeAsubtypeCc)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.valueCc = result.io.readS1()

proc fromFile*(_: typedesc[NestedTypes2subtypeAsubtypeCc], filename: string): NestedTypes2subtypeAsubtypeCc =
  NestedTypes2subtypeAsubtypeCc.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes2subtypeAsubtypeCcObj) =
  close(x.io)

### NestedTypes2subtypeA ###
proc read*(_: typedesc[NestedTypes2subtypeA], io: KaitaiStream, root: NestedTypes2, parent: NestedTypes2): NestedTypes2subtypeA =
  result = new(NestedTypes2subtypeA)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.typedAtRoot = SubtypeB.read(result.io, result, root)
  result.typedHere1 = SubtypeC.read(result.io, result, root)
  result.typedHere2 = SubtypeCc.read(result.io, result, root)

proc fromFile*(_: typedesc[NestedTypes2subtypeA], filename: string): NestedTypes2subtypeA =
  NestedTypes2subtypeA.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes2subtypeAObj) =
  close(x.io)

### NestedTypes2subtypeB ###
proc read*(_: typedesc[NestedTypes2subtypeB], io: KaitaiStream, root: NestedTypes2, parent: ref RootObj): NestedTypes2subtypeB =
  result = new(NestedTypes2subtypeB)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.valueB = result.io.readS1()

proc fromFile*(_: typedesc[NestedTypes2subtypeB], filename: string): NestedTypes2subtypeB =
  NestedTypes2subtypeB.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes2subtypeBObj) =
  close(x.io)

### NestedTypes2 ###
proc read*(_: typedesc[NestedTypes2], io: KaitaiStream, root: NestedTypes2, parent: ref RootObj): NestedTypes2 =
  result = new(NestedTypes2)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.one = SubtypeA.read(result.io, result, root)
  result.two = SubtypeB.read(result.io, result, root)

proc fromFile*(_: typedesc[NestedTypes2], filename: string): NestedTypes2 =
  NestedTypes2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes2Obj) =
  close(x.io)


import kaitai_struct_nim_runtime

type
  NestedTypes2_SubtypeA_SubtypeC_SubtypeD* = ref NestedTypes2_SubtypeA_SubtypeC_SubtypeDObj
  NestedTypes2_SubtypeA_SubtypeC_SubtypeDObj* = object
    valueD*: int8
    io*: KaitaiStream
    root*: NestedTypes2
    parent*: NestedTypes2_SubtypeA_SubtypeC
  NestedTypes2_SubtypeA_SubtypeC* = ref NestedTypes2_SubtypeA_SubtypeCObj
  NestedTypes2_SubtypeA_SubtypeCObj* = object
    valueC*: int8
    typedHere*: NestedTypes2_SubtypeA_SubtypeC_SubtypeD
    typedParent*: NestedTypes2_SubtypeA_SubtypeCc
    typedRoot*: NestedTypes2_SubtypeB
    io*: KaitaiStream
    root*: NestedTypes2
    parent*: NestedTypes2_SubtypeA
  NestedTypes2_SubtypeA_SubtypeCc* = ref NestedTypes2_SubtypeA_SubtypeCcObj
  NestedTypes2_SubtypeA_SubtypeCcObj* = object
    valueCc*: int8
    io*: KaitaiStream
    root*: NestedTypes2
    parent*: ref RootObj
  NestedTypes2_SubtypeA* = ref NestedTypes2_SubtypeAObj
  NestedTypes2_SubtypeAObj* = object
    typedAtRoot*: NestedTypes2_SubtypeB
    typedHere1*: NestedTypes2_SubtypeA_SubtypeC
    typedHere2*: NestedTypes2_SubtypeA_SubtypeCc
    io*: KaitaiStream
    root*: NestedTypes2
    parent*: NestedTypes2
  NestedTypes2_SubtypeB* = ref NestedTypes2_SubtypeBObj
  NestedTypes2_SubtypeBObj* = object
    valueB*: int8
    io*: KaitaiStream
    root*: NestedTypes2
    parent*: ref RootObj
  NestedTypes2* = ref NestedTypes2Obj
  NestedTypes2Obj* = object
    one*: NestedTypes2_SubtypeA
    two*: NestedTypes2_SubtypeB
    io*: KaitaiStream
    root*: NestedTypes2
    parent*: ref RootObj

### NestedTypes2_SubtypeA_SubtypeC_SubtypeD ###
proc read*(_: typedesc[NestedTypes2_SubtypeA_SubtypeC_SubtypeD], io: KaitaiStream, root: NestedTypes2, parent: NestedTypes2_SubtypeA_SubtypeC): NestedTypes2_SubtypeA_SubtypeC_SubtypeD =
  result = new(NestedTypes2_SubtypeA_SubtypeC_SubtypeD)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let valueD = io.readS1()
  result.valueD = valueD

proc fromFile*(_: typedesc[NestedTypes2_SubtypeA_SubtypeC_SubtypeD], filename: string): NestedTypes2_SubtypeA_SubtypeC_SubtypeD =
  NestedTypes2_SubtypeA_SubtypeC_SubtypeD.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes2_SubtypeA_SubtypeC_SubtypeDObj) =
  close(x.io)

### NestedTypes2_SubtypeA_SubtypeC ###
proc read*(_: typedesc[NestedTypes2_SubtypeA_SubtypeC], io: KaitaiStream, root: NestedTypes2, parent: NestedTypes2_SubtypeA): NestedTypes2_SubtypeA_SubtypeC =
  result = new(NestedTypes2_SubtypeA_SubtypeC)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let valueC = io.readS1()
  result.valueC = valueC
  let typedHere = NestedTypes2_SubtypeA_SubtypeC_SubtypeD.read(io, result, root)
  result.typedHere = typedHere
  let typedParent = NestedTypes2_SubtypeA_SubtypeCc.read(io, result, root)
  result.typedParent = typedParent
  let typedRoot = NestedTypes2_SubtypeB.read(io, result, root)
  result.typedRoot = typedRoot

proc fromFile*(_: typedesc[NestedTypes2_SubtypeA_SubtypeC], filename: string): NestedTypes2_SubtypeA_SubtypeC =
  NestedTypes2_SubtypeA_SubtypeC.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes2_SubtypeA_SubtypeCObj) =
  close(x.io)

### NestedTypes2_SubtypeA_SubtypeCc ###
proc read*(_: typedesc[NestedTypes2_SubtypeA_SubtypeCc], io: KaitaiStream, root: NestedTypes2, parent: ref RootObj): NestedTypes2_SubtypeA_SubtypeCc =
  result = new(NestedTypes2_SubtypeA_SubtypeCc)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let valueCc = io.readS1()
  result.valueCc = valueCc

proc fromFile*(_: typedesc[NestedTypes2_SubtypeA_SubtypeCc], filename: string): NestedTypes2_SubtypeA_SubtypeCc =
  NestedTypes2_SubtypeA_SubtypeCc.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes2_SubtypeA_SubtypeCcObj) =
  close(x.io)

### NestedTypes2_SubtypeA ###
proc read*(_: typedesc[NestedTypes2_SubtypeA], io: KaitaiStream, root: NestedTypes2, parent: NestedTypes2): NestedTypes2_SubtypeA =
  result = new(NestedTypes2_SubtypeA)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let typedAtRoot = NestedTypes2_SubtypeB.read(io, result, root)
  result.typedAtRoot = typedAtRoot
  let typedHere1 = NestedTypes2_SubtypeA_SubtypeC.read(io, result, root)
  result.typedHere1 = typedHere1
  let typedHere2 = NestedTypes2_SubtypeA_SubtypeCc.read(io, result, root)
  result.typedHere2 = typedHere2

proc fromFile*(_: typedesc[NestedTypes2_SubtypeA], filename: string): NestedTypes2_SubtypeA =
  NestedTypes2_SubtypeA.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes2_SubtypeAObj) =
  close(x.io)

### NestedTypes2_SubtypeB ###
proc read*(_: typedesc[NestedTypes2_SubtypeB], io: KaitaiStream, root: NestedTypes2, parent: ref RootObj): NestedTypes2_SubtypeB =
  result = new(NestedTypes2_SubtypeB)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let valueB = io.readS1()
  result.valueB = valueB

proc fromFile*(_: typedesc[NestedTypes2_SubtypeB], filename: string): NestedTypes2_SubtypeB =
  NestedTypes2_SubtypeB.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes2_SubtypeBObj) =
  close(x.io)

### NestedTypes2 ###
proc read*(_: typedesc[NestedTypes2], io: KaitaiStream, root: NestedTypes2, parent: ref RootObj): NestedTypes2 =
  result = new(NestedTypes2)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let one = NestedTypes2_SubtypeA.read(io, result, root)
  result.one = one
  let two = NestedTypes2_SubtypeB.read(io, result, root)
  result.two = two

proc fromFile*(_: typedesc[NestedTypes2], filename: string): NestedTypes2 =
  NestedTypes2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes2Obj) =
  close(x.io)


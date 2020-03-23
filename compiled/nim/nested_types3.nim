import kaitai_struct_nim_runtime

type
  NestedTypes3subtypeAsubtypeCsubtypeD* = ref NestedTypes3subtypeAsubtypeCsubtypeDObj
  NestedTypes3subtypeAsubtypeCsubtypeDObj* = object
    aCc*: SubtypeAsubtypeCc
    aCD*: SubtypeAsubtypeCsubtypeD
    b*: SubtypeB
    io*: KaitaiStream
    root*: NestedTypes3
    parent*: ref RootObj
  NestedTypes3subtypeAsubtypeC* = ref NestedTypes3subtypeAsubtypeCObj
  NestedTypes3subtypeAsubtypeCObj* = object
    aCc*: SubtypeAsubtypeCc
    aCD*: SubtypeAsubtypeCsubtypeD
    b*: SubtypeB
    io*: KaitaiStream
    root*: NestedTypes3
    parent*: ref RootObj
  NestedTypes3subtypeAsubtypeCc* = ref NestedTypes3subtypeAsubtypeCcObj
  NestedTypes3subtypeAsubtypeCcObj* = object
    aCc*: SubtypeAsubtypeCc
    aCD*: SubtypeAsubtypeCsubtypeD
    b*: SubtypeB
    io*: KaitaiStream
    root*: NestedTypes3
    parent*: ref RootObj
  NestedTypes3subtypeA* = ref NestedTypes3subtypeAObj
  NestedTypes3subtypeAObj* = object
    aCc*: SubtypeAsubtypeCc
    aCD*: SubtypeAsubtypeCsubtypeD
    b*: SubtypeB
    io*: KaitaiStream
    root*: NestedTypes3
    parent*: ref RootObj
  NestedTypes3subtypeB* = ref NestedTypes3subtypeBObj
  NestedTypes3subtypeBObj* = object
    aCc*: SubtypeAsubtypeCc
    aCD*: SubtypeAsubtypeCsubtypeD
    b*: SubtypeB
    io*: KaitaiStream
    root*: NestedTypes3
    parent*: ref RootObj
  NestedTypes3* = ref NestedTypes3Obj
  NestedTypes3Obj* = object
    aCc*: SubtypeAsubtypeCc
    aCD*: SubtypeAsubtypeCsubtypeD
    b*: SubtypeB
    io*: KaitaiStream
    root*: NestedTypes3
    parent*: ref RootObj

### NestedTypes3subtypeAsubtypeCsubtypeD ###
proc read*(_: typedesc[NestedTypes3subtypeAsubtypeCsubtypeD], io: KaitaiStream, root: NestedTypes3, parent: ref RootObj): NestedTypes3subtypeAsubtypeCsubtypeD =
  result = new(NestedTypes3subtypeAsubtypeCsubtypeD)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.valueD = result.io.readS1()

proc fromFile*(_: typedesc[NestedTypes3subtypeAsubtypeCsubtypeD], filename: string): NestedTypes3subtypeAsubtypeCsubtypeD =
  NestedTypes3subtypeAsubtypeCsubtypeD.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes3subtypeAsubtypeCsubtypeDObj) =
  close(x.io)

### NestedTypes3subtypeAsubtypeC ###
proc read*(_: typedesc[NestedTypes3subtypeAsubtypeC], io: KaitaiStream, root: NestedTypes3, parent: ref RootObj): NestedTypes3subtypeAsubtypeC =
  result = new(NestedTypes3subtypeAsubtypeC)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[NestedTypes3subtypeAsubtypeC], filename: string): NestedTypes3subtypeAsubtypeC =
  NestedTypes3subtypeAsubtypeC.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes3subtypeAsubtypeCObj) =
  close(x.io)

### NestedTypes3subtypeAsubtypeCc ###
proc read*(_: typedesc[NestedTypes3subtypeAsubtypeCc], io: KaitaiStream, root: NestedTypes3, parent: ref RootObj): NestedTypes3subtypeAsubtypeCc =
  result = new(NestedTypes3subtypeAsubtypeCc)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.valueCc = result.io.readS1()

proc fromFile*(_: typedesc[NestedTypes3subtypeAsubtypeCc], filename: string): NestedTypes3subtypeAsubtypeCc =
  NestedTypes3subtypeAsubtypeCc.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes3subtypeAsubtypeCcObj) =
  close(x.io)

### NestedTypes3subtypeA ###
proc read*(_: typedesc[NestedTypes3subtypeA], io: KaitaiStream, root: NestedTypes3, parent: ref RootObj): NestedTypes3subtypeA =
  result = new(NestedTypes3subtypeA)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[NestedTypes3subtypeA], filename: string): NestedTypes3subtypeA =
  NestedTypes3subtypeA.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes3subtypeAObj) =
  close(x.io)

### NestedTypes3subtypeB ###
proc read*(_: typedesc[NestedTypes3subtypeB], io: KaitaiStream, root: NestedTypes3, parent: NestedTypes3): NestedTypes3subtypeB =
  result = new(NestedTypes3subtypeB)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.valueB = result.io.readS1()
  result.aCc = SubtypeAsubtypeCc.read(result.io, result, root)
  result.aCD = SubtypeAsubtypeCsubtypeD.read(result.io, result, root)

proc fromFile*(_: typedesc[NestedTypes3subtypeB], filename: string): NestedTypes3subtypeB =
  NestedTypes3subtypeB.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes3subtypeBObj) =
  close(x.io)

### NestedTypes3 ###
proc read*(_: typedesc[NestedTypes3], io: KaitaiStream, root: NestedTypes3, parent: ref RootObj): NestedTypes3 =
  result = new(NestedTypes3)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.aCc = SubtypeAsubtypeCc.read(result.io, result, root)
  result.aCD = SubtypeAsubtypeCsubtypeD.read(result.io, result, root)
  result.b = SubtypeB.read(result.io, result, root)

proc fromFile*(_: typedesc[NestedTypes3], filename: string): NestedTypes3 =
  NestedTypes3.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes3Obj) =
  close(x.io)


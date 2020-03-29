import kaitai_struct_nim_runtime

type
  NestedTypes3_SubtypeA_SubtypeC_SubtypeD* = ref NestedTypes3_SubtypeA_SubtypeC_SubtypeDObj
  NestedTypes3_SubtypeA_SubtypeC_SubtypeDObj* = object
    valueD*: int8
    io*: KaitaiStream
    root*: NestedTypes3
    parent*: ref RootObj
  NestedTypes3_SubtypeA_SubtypeC* = ref NestedTypes3_SubtypeA_SubtypeCObj
  NestedTypes3_SubtypeA_SubtypeCObj* = object
    io*: KaitaiStream
    root*: NestedTypes3
    parent*: ref RootObj
  NestedTypes3_SubtypeA_SubtypeCc* = ref NestedTypes3_SubtypeA_SubtypeCcObj
  NestedTypes3_SubtypeA_SubtypeCcObj* = object
    valueCc*: int8
    io*: KaitaiStream
    root*: NestedTypes3
    parent*: ref RootObj
  NestedTypes3_SubtypeA* = ref NestedTypes3_SubtypeAObj
  NestedTypes3_SubtypeAObj* = object
    io*: KaitaiStream
    root*: NestedTypes3
    parent*: ref RootObj
  NestedTypes3_SubtypeB* = ref NestedTypes3_SubtypeBObj
  NestedTypes3_SubtypeBObj* = object
    valueB*: int8
    aCc*: NestedTypes3_SubtypeA_SubtypeCc
    aCD*: NestedTypes3_SubtypeA_SubtypeC_SubtypeD
    io*: KaitaiStream
    root*: NestedTypes3
    parent*: NestedTypes3
  NestedTypes3* = ref NestedTypes3Obj
  NestedTypes3Obj* = object
    aCc*: NestedTypes3_SubtypeA_SubtypeCc
    aCD*: NestedTypes3_SubtypeA_SubtypeC_SubtypeD
    b*: NestedTypes3_SubtypeB
    io*: KaitaiStream
    root*: NestedTypes3
    parent*: ref RootObj

### NestedTypes3_SubtypeA_SubtypeC_SubtypeD ###
proc read*(_: typedesc[NestedTypes3_SubtypeA_SubtypeC_SubtypeD], io: KaitaiStream, root: NestedTypes3, parent: ref RootObj): NestedTypes3_SubtypeA_SubtypeC_SubtypeD =
  result = new(NestedTypes3_SubtypeA_SubtypeC_SubtypeD)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let valueD = io.readS1()
  result.valueD = valueD

proc fromFile*(_: typedesc[NestedTypes3_SubtypeA_SubtypeC_SubtypeD], filename: string): NestedTypes3_SubtypeA_SubtypeC_SubtypeD =
  NestedTypes3_SubtypeA_SubtypeC_SubtypeD.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes3_SubtypeA_SubtypeC_SubtypeDObj) =
  close(x.io)

### NestedTypes3_SubtypeA_SubtypeC ###
proc read*(_: typedesc[NestedTypes3_SubtypeA_SubtypeC], io: KaitaiStream, root: NestedTypes3, parent: ref RootObj): NestedTypes3_SubtypeA_SubtypeC =
  result = new(NestedTypes3_SubtypeA_SubtypeC)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[NestedTypes3_SubtypeA_SubtypeC], filename: string): NestedTypes3_SubtypeA_SubtypeC =
  NestedTypes3_SubtypeA_SubtypeC.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes3_SubtypeA_SubtypeCObj) =
  close(x.io)

### NestedTypes3_SubtypeA_SubtypeCc ###
proc read*(_: typedesc[NestedTypes3_SubtypeA_SubtypeCc], io: KaitaiStream, root: NestedTypes3, parent: ref RootObj): NestedTypes3_SubtypeA_SubtypeCc =
  result = new(NestedTypes3_SubtypeA_SubtypeCc)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let valueCc = io.readS1()
  result.valueCc = valueCc

proc fromFile*(_: typedesc[NestedTypes3_SubtypeA_SubtypeCc], filename: string): NestedTypes3_SubtypeA_SubtypeCc =
  NestedTypes3_SubtypeA_SubtypeCc.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes3_SubtypeA_SubtypeCcObj) =
  close(x.io)

### NestedTypes3_SubtypeA ###
proc read*(_: typedesc[NestedTypes3_SubtypeA], io: KaitaiStream, root: NestedTypes3, parent: ref RootObj): NestedTypes3_SubtypeA =
  result = new(NestedTypes3_SubtypeA)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[NestedTypes3_SubtypeA], filename: string): NestedTypes3_SubtypeA =
  NestedTypes3_SubtypeA.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes3_SubtypeAObj) =
  close(x.io)

### NestedTypes3_SubtypeB ###
proc read*(_: typedesc[NestedTypes3_SubtypeB], io: KaitaiStream, root: NestedTypes3, parent: NestedTypes3): NestedTypes3_SubtypeB =
  result = new(NestedTypes3_SubtypeB)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let valueB = io.readS1()
  result.valueB = valueB
  let aCc = NestedTypes3_SubtypeA_SubtypeCc.read(io, result, root)
  result.aCc = aCc
  let aCD = NestedTypes3_SubtypeA_SubtypeC_SubtypeD.read(io, result, root)
  result.aCD = aCD

proc fromFile*(_: typedesc[NestedTypes3_SubtypeB], filename: string): NestedTypes3_SubtypeB =
  NestedTypes3_SubtypeB.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes3_SubtypeBObj) =
  close(x.io)

### NestedTypes3 ###
proc read*(_: typedesc[NestedTypes3], io: KaitaiStream, root: NestedTypes3, parent: ref RootObj): NestedTypes3 =
  result = new(NestedTypes3)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let aCc = NestedTypes3_SubtypeA_SubtypeCc.read(io, result, root)
  result.aCc = aCc
  let aCD = NestedTypes3_SubtypeA_SubtypeC_SubtypeD.read(io, result, root)
  result.aCD = aCD
  let b = NestedTypes3_SubtypeB.read(io, result, root)
  result.b = b

proc fromFile*(_: typedesc[NestedTypes3], filename: string): NestedTypes3 =
  NestedTypes3.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes3Obj) =
  close(x.io)


import kaitai_struct_nim_runtime



type
  SubtypeD* = ref SubtypeDObj
  SubtypeDObj* = object
    io: KaitaiStream
    root*: NestedTypes3
    parent*: ref RootObj
    valueD*: int8
  SubtypeC* = ref SubtypeCObj
  SubtypeCObj* = object
    io: KaitaiStream
    root*: NestedTypes3
    parent*: ref RootObj
  SubtypeCc* = ref SubtypeCcObj
  SubtypeCcObj* = object
    io: KaitaiStream
    root*: NestedTypes3
    parent*: ref RootObj
    valueCc*: int8
  SubtypeA* = ref SubtypeAObj
  SubtypeAObj* = object
    io: KaitaiStream
    root*: NestedTypes3
    parent*: ref RootObj
  SubtypeB* = ref SubtypeBObj
  SubtypeBObj* = object
    io: KaitaiStream
    root*: NestedTypes3
    parent*: NestedTypes3
    valueB*: int8
    aCc*: SubtypeCc
    aCD*: SubtypeD
  NestedTypes3* = ref NestedTypes3Obj
  NestedTypes3Obj* = object
    io: KaitaiStream
    root*: NestedTypes3
    parent*: ref RootObj
    aCc*: SubtypeCc
    aCD*: SubtypeD
    b*: SubtypeB

# SubtypeD
proc read*(_: typedesc[SubtypeD], io: KaitaiStream, root: NestedTypes3, parent: ref RootObj): owned SubtypeD =
  result = new(SubtypeD)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let valueD = readS1(io)
  result.valueD = valueD


proc fromFile*(_: typedesc[SubtypeD], filename: string): owned SubtypeD =
  SubtypeD.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SubtypeDObj) =
  close(x.io)

# SubtypeC
proc read*(_: typedesc[SubtypeC], io: KaitaiStream, root: NestedTypes3, parent: ref RootObj): owned SubtypeC =
  result = new(SubtypeC)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.io = io
  result.root = root
  result.parent = parent



proc fromFile*(_: typedesc[SubtypeC], filename: string): owned SubtypeC =
  SubtypeC.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SubtypeCObj) =
  close(x.io)

# SubtypeCc
proc read*(_: typedesc[SubtypeCc], io: KaitaiStream, root: NestedTypes3, parent: ref RootObj): owned SubtypeCc =
  result = new(SubtypeCc)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let valueCc = readS1(io)
  result.valueCc = valueCc


proc fromFile*(_: typedesc[SubtypeCc], filename: string): owned SubtypeCc =
  SubtypeCc.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SubtypeCcObj) =
  close(x.io)

# SubtypeA
proc read*(_: typedesc[SubtypeA], io: KaitaiStream, root: NestedTypes3, parent: ref RootObj): owned SubtypeA =
  result = new(SubtypeA)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.io = io
  result.root = root
  result.parent = parent



proc fromFile*(_: typedesc[SubtypeA], filename: string): owned SubtypeA =
  SubtypeA.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SubtypeAObj) =
  close(x.io)

# SubtypeB
proc read*(_: typedesc[SubtypeB], io: KaitaiStream, root: NestedTypes3, parent: NestedTypes3): owned SubtypeB =
  result = new(SubtypeB)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let valueB = readS1(io)
  result.valueB = valueB
  let aCc = SubtypeCc.read(io, root, result)
  result.aCc = aCc
  let aCD = SubtypeD.read(io, root, result)
  result.aCD = aCD


proc fromFile*(_: typedesc[SubtypeB], filename: string): owned SubtypeB =
  SubtypeB.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SubtypeBObj) =
  close(x.io)

# NestedTypes3
proc read*(_: typedesc[NestedTypes3], io: KaitaiStream, root: NestedTypes3, parent: ref RootObj): owned NestedTypes3 =
  result = new(NestedTypes3)
  let root = if root == nil: cast[NestedTypes3](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let aCc = SubtypeCc.read(io, root, result)
  result.aCc = aCc
  let aCD = SubtypeD.read(io, root, result)
  result.aCD = aCD
  let b = SubtypeB.read(io, root, result)
  result.b = b


proc fromFile*(_: typedesc[NestedTypes3], filename: string): owned NestedTypes3 =
  NestedTypes3.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes3Obj) =
  close(x.io)


import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  NestedTypes3* = ref object of KaitaiStruct
    aCc*: NestedTypes3_SubtypeA_SubtypeCc
    aCD*: NestedTypes3_SubtypeA_SubtypeC_SubtypeD
    b*: NestedTypes3_SubtypeB
    parent*: KaitaiStruct
  NestedTypes3_SubtypeA* = ref object of KaitaiStruct
    parent*: KaitaiStruct
  NestedTypes3_SubtypeA_SubtypeC* = ref object of KaitaiStruct
    parent*: KaitaiStruct
  NestedTypes3_SubtypeA_SubtypeC_SubtypeD* = ref object of KaitaiStruct
    valueD*: int8
    parent*: KaitaiStruct
  NestedTypes3_SubtypeA_SubtypeCc* = ref object of KaitaiStruct
    valueCc*: int8
    parent*: KaitaiStruct
  NestedTypes3_SubtypeB* = ref object of KaitaiStruct
    valueB*: int8
    aCc*: NestedTypes3_SubtypeA_SubtypeCc
    aCD*: NestedTypes3_SubtypeA_SubtypeC_SubtypeD
    parent*: NestedTypes3

proc read*(_: typedesc[NestedTypes3], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypes3
proc read*(_: typedesc[NestedTypes3_SubtypeA], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypes3_SubtypeA
proc read*(_: typedesc[NestedTypes3_SubtypeA_SubtypeC], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypes3_SubtypeA_SubtypeC
proc read*(_: typedesc[NestedTypes3_SubtypeA_SubtypeC_SubtypeD], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypes3_SubtypeA_SubtypeC_SubtypeD
proc read*(_: typedesc[NestedTypes3_SubtypeA_SubtypeCc], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypes3_SubtypeA_SubtypeCc
proc read*(_: typedesc[NestedTypes3_SubtypeB], io: KaitaiStream, root: KaitaiStruct, parent: NestedTypes3): NestedTypes3_SubtypeB


proc read*(_: typedesc[NestedTypes3], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypes3 =
  template this: untyped = result
  this = new(NestedTypes3)
  let root = if root == nil: cast[NestedTypes3](this) else: cast[NestedTypes3](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.aCc = NestedTypes3_SubtypeA_SubtypeCc.read(this.io, this.root, this)
  this.aCD = NestedTypes3_SubtypeA_SubtypeC_SubtypeD.read(this.io, this.root, this)
  this.b = NestedTypes3_SubtypeB.read(this.io, this.root, this)

proc fromFile*(_: typedesc[NestedTypes3], filename: string): NestedTypes3 =
  NestedTypes3.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedTypes3_SubtypeA], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypes3_SubtypeA =
  template this: untyped = result
  this = new(NestedTypes3_SubtypeA)
  let root = if root == nil: cast[NestedTypes3](this) else: cast[NestedTypes3](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[NestedTypes3_SubtypeA], filename: string): NestedTypes3_SubtypeA =
  NestedTypes3_SubtypeA.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedTypes3_SubtypeA_SubtypeC], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypes3_SubtypeA_SubtypeC =
  template this: untyped = result
  this = new(NestedTypes3_SubtypeA_SubtypeC)
  let root = if root == nil: cast[NestedTypes3](this) else: cast[NestedTypes3](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[NestedTypes3_SubtypeA_SubtypeC], filename: string): NestedTypes3_SubtypeA_SubtypeC =
  NestedTypes3_SubtypeA_SubtypeC.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedTypes3_SubtypeA_SubtypeC_SubtypeD], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypes3_SubtypeA_SubtypeC_SubtypeD =
  template this: untyped = result
  this = new(NestedTypes3_SubtypeA_SubtypeC_SubtypeD)
  let root = if root == nil: cast[NestedTypes3](this) else: cast[NestedTypes3](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.valueD = this.io.readS1()

proc fromFile*(_: typedesc[NestedTypes3_SubtypeA_SubtypeC_SubtypeD], filename: string): NestedTypes3_SubtypeA_SubtypeC_SubtypeD =
  NestedTypes3_SubtypeA_SubtypeC_SubtypeD.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedTypes3_SubtypeA_SubtypeCc], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypes3_SubtypeA_SubtypeCc =
  template this: untyped = result
  this = new(NestedTypes3_SubtypeA_SubtypeCc)
  let root = if root == nil: cast[NestedTypes3](this) else: cast[NestedTypes3](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.valueCc = this.io.readS1()

proc fromFile*(_: typedesc[NestedTypes3_SubtypeA_SubtypeCc], filename: string): NestedTypes3_SubtypeA_SubtypeCc =
  NestedTypes3_SubtypeA_SubtypeCc.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedTypes3_SubtypeB], io: KaitaiStream, root: KaitaiStruct, parent: NestedTypes3): NestedTypes3_SubtypeB =
  template this: untyped = result
  this = new(NestedTypes3_SubtypeB)
  let root = if root == nil: cast[NestedTypes3](this) else: cast[NestedTypes3](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.valueB = this.io.readS1()
  this.aCc = NestedTypes3_SubtypeA_SubtypeCc.read(this.io, this.root, this)
  this.aCD = NestedTypes3_SubtypeA_SubtypeC_SubtypeD.read(this.io, this.root, this)

proc fromFile*(_: typedesc[NestedTypes3_SubtypeB], filename: string): NestedTypes3_SubtypeB =
  NestedTypes3_SubtypeB.read(newKaitaiFileStream(filename), nil, nil)


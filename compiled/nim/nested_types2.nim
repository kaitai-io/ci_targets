import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  NestedTypes2* = ref object of KaitaiStruct
    one*: NestedTypes2_SubtypeA
    two*: NestedTypes2_SubtypeB
    parent*: KaitaiStruct
  NestedTypes2_SubtypeA* = ref object of KaitaiStruct
    typedAtRoot*: NestedTypes2_SubtypeB
    typedHere1*: NestedTypes2_SubtypeA_SubtypeC
    typedHere2*: NestedTypes2_SubtypeA_SubtypeCc
    parent*: NestedTypes2
  NestedTypes2_SubtypeA_SubtypeC* = ref object of KaitaiStruct
    valueC*: int8
    typedHere*: NestedTypes2_SubtypeA_SubtypeC_SubtypeD
    typedParent*: NestedTypes2_SubtypeA_SubtypeCc
    typedRoot*: NestedTypes2_SubtypeB
    parent*: NestedTypes2_SubtypeA
  NestedTypes2_SubtypeA_SubtypeC_SubtypeD* = ref object of KaitaiStruct
    valueD*: int8
    parent*: NestedTypes2_SubtypeA_SubtypeC
  NestedTypes2_SubtypeA_SubtypeCc* = ref object of KaitaiStruct
    valueCc*: int8
    parent*: KaitaiStruct
  NestedTypes2_SubtypeB* = ref object of KaitaiStruct
    valueB*: int8
    parent*: KaitaiStruct

proc read*(_: typedesc[NestedTypes2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypes2
proc read*(_: typedesc[NestedTypes2_SubtypeA], io: KaitaiStream, root: KaitaiStruct, parent: NestedTypes2): NestedTypes2_SubtypeA
proc read*(_: typedesc[NestedTypes2_SubtypeA_SubtypeC], io: KaitaiStream, root: KaitaiStruct, parent: NestedTypes2_SubtypeA): NestedTypes2_SubtypeA_SubtypeC
proc read*(_: typedesc[NestedTypes2_SubtypeA_SubtypeC_SubtypeD], io: KaitaiStream, root: KaitaiStruct, parent: NestedTypes2_SubtypeA_SubtypeC): NestedTypes2_SubtypeA_SubtypeC_SubtypeD
proc read*(_: typedesc[NestedTypes2_SubtypeA_SubtypeCc], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypes2_SubtypeA_SubtypeCc
proc read*(_: typedesc[NestedTypes2_SubtypeB], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypes2_SubtypeB


proc read*(_: typedesc[NestedTypes2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypes2 =
  template this: untyped = result
  this = new(NestedTypes2)
  let root = if root == nil: cast[NestedTypes2](this) else: cast[NestedTypes2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = NestedTypes2_SubtypeA.read(this.io, this.root, this)
  this.one = oneExpr
  let twoExpr = NestedTypes2_SubtypeB.read(this.io, this.root, this)
  this.two = twoExpr

proc fromFile*(_: typedesc[NestedTypes2], filename: string): NestedTypes2 =
  NestedTypes2.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedTypes2_SubtypeA], io: KaitaiStream, root: KaitaiStruct, parent: NestedTypes2): NestedTypes2_SubtypeA =
  template this: untyped = result
  this = new(NestedTypes2_SubtypeA)
  let root = if root == nil: cast[NestedTypes2](this) else: cast[NestedTypes2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let typedAtRootExpr = NestedTypes2_SubtypeB.read(this.io, this.root, this)
  this.typedAtRoot = typedAtRootExpr
  let typedHere1Expr = NestedTypes2_SubtypeA_SubtypeC.read(this.io, this.root, this)
  this.typedHere1 = typedHere1Expr
  let typedHere2Expr = NestedTypes2_SubtypeA_SubtypeCc.read(this.io, this.root, this)
  this.typedHere2 = typedHere2Expr

proc fromFile*(_: typedesc[NestedTypes2_SubtypeA], filename: string): NestedTypes2_SubtypeA =
  NestedTypes2_SubtypeA.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedTypes2_SubtypeA_SubtypeC], io: KaitaiStream, root: KaitaiStruct, parent: NestedTypes2_SubtypeA): NestedTypes2_SubtypeA_SubtypeC =
  template this: untyped = result
  this = new(NestedTypes2_SubtypeA_SubtypeC)
  let root = if root == nil: cast[NestedTypes2](this) else: cast[NestedTypes2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueCExpr = this.io.readS1()
  this.valueC = valueCExpr
  let typedHereExpr = NestedTypes2_SubtypeA_SubtypeC_SubtypeD.read(this.io, this.root, this)
  this.typedHere = typedHereExpr
  let typedParentExpr = NestedTypes2_SubtypeA_SubtypeCc.read(this.io, this.root, this)
  this.typedParent = typedParentExpr
  let typedRootExpr = NestedTypes2_SubtypeB.read(this.io, this.root, this)
  this.typedRoot = typedRootExpr

proc fromFile*(_: typedesc[NestedTypes2_SubtypeA_SubtypeC], filename: string): NestedTypes2_SubtypeA_SubtypeC =
  NestedTypes2_SubtypeA_SubtypeC.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedTypes2_SubtypeA_SubtypeC_SubtypeD], io: KaitaiStream, root: KaitaiStruct, parent: NestedTypes2_SubtypeA_SubtypeC): NestedTypes2_SubtypeA_SubtypeC_SubtypeD =
  template this: untyped = result
  this = new(NestedTypes2_SubtypeA_SubtypeC_SubtypeD)
  let root = if root == nil: cast[NestedTypes2](this) else: cast[NestedTypes2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueDExpr = this.io.readS1()
  this.valueD = valueDExpr

proc fromFile*(_: typedesc[NestedTypes2_SubtypeA_SubtypeC_SubtypeD], filename: string): NestedTypes2_SubtypeA_SubtypeC_SubtypeD =
  NestedTypes2_SubtypeA_SubtypeC_SubtypeD.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedTypes2_SubtypeA_SubtypeCc], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypes2_SubtypeA_SubtypeCc =
  template this: untyped = result
  this = new(NestedTypes2_SubtypeA_SubtypeCc)
  let root = if root == nil: cast[NestedTypes2](this) else: cast[NestedTypes2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueCcExpr = this.io.readS1()
  this.valueCc = valueCcExpr

proc fromFile*(_: typedesc[NestedTypes2_SubtypeA_SubtypeCc], filename: string): NestedTypes2_SubtypeA_SubtypeCc =
  NestedTypes2_SubtypeA_SubtypeCc.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedTypes2_SubtypeB], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypes2_SubtypeB =
  template this: untyped = result
  this = new(NestedTypes2_SubtypeB)
  let root = if root == nil: cast[NestedTypes2](this) else: cast[NestedTypes2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueBExpr = this.io.readS1()
  this.valueB = valueBExpr

proc fromFile*(_: typedesc[NestedTypes2_SubtypeB], filename: string): NestedTypes2_SubtypeB =
  NestedTypes2_SubtypeB.read(newKaitaiFileStream(filename), nil, nil)


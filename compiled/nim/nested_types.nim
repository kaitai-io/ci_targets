import kaitai_struct_nim_runtime
import options

type
  NestedTypes* = ref object of KaitaiStruct
    `one`*: NestedTypes_SubtypeA
    `two`*: NestedTypes_SubtypeB
    `parent`*: KaitaiStruct
  NestedTypes_SubtypeA* = ref object of KaitaiStruct
    `typedAtRoot`*: NestedTypes_SubtypeB
    `typedHere`*: NestedTypes_SubtypeA_SubtypeC
    `parent`*: NestedTypes
  NestedTypes_SubtypeA_SubtypeC* = ref object of KaitaiStruct
    `valueC`*: int8
    `parent`*: NestedTypes_SubtypeA
  NestedTypes_SubtypeB* = ref object of KaitaiStruct
    `valueB`*: int8
    `parent`*: KaitaiStruct

proc read*(_: typedesc[NestedTypes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypes
proc read*(_: typedesc[NestedTypes_SubtypeA], io: KaitaiStream, root: KaitaiStruct, parent: NestedTypes): NestedTypes_SubtypeA
proc read*(_: typedesc[NestedTypes_SubtypeA_SubtypeC], io: KaitaiStream, root: KaitaiStruct, parent: NestedTypes_SubtypeA): NestedTypes_SubtypeA_SubtypeC
proc read*(_: typedesc[NestedTypes_SubtypeB], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypes_SubtypeB


proc read*(_: typedesc[NestedTypes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypes =
  template this: untyped = result
  this = new(NestedTypes)
  let root = if root == nil: cast[NestedTypes](this) else: cast[NestedTypes](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = NestedTypes_SubtypeA.read(this.io, this.root, this)
  this.one = oneExpr
  let twoExpr = NestedTypes_SubtypeB.read(this.io, this.root, this)
  this.two = twoExpr

proc fromFile*(_: typedesc[NestedTypes], filename: string): NestedTypes =
  NestedTypes.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedTypes_SubtypeA], io: KaitaiStream, root: KaitaiStruct, parent: NestedTypes): NestedTypes_SubtypeA =
  template this: untyped = result
  this = new(NestedTypes_SubtypeA)
  let root = if root == nil: cast[NestedTypes](this) else: cast[NestedTypes](root)
  this.io = io
  this.root = root
  this.parent = parent

  let typedAtRootExpr = NestedTypes_SubtypeB.read(this.io, this.root, this)
  this.typedAtRoot = typedAtRootExpr
  let typedHereExpr = NestedTypes_SubtypeA_SubtypeC.read(this.io, this.root, this)
  this.typedHere = typedHereExpr

proc fromFile*(_: typedesc[NestedTypes_SubtypeA], filename: string): NestedTypes_SubtypeA =
  NestedTypes_SubtypeA.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedTypes_SubtypeA_SubtypeC], io: KaitaiStream, root: KaitaiStruct, parent: NestedTypes_SubtypeA): NestedTypes_SubtypeA_SubtypeC =
  template this: untyped = result
  this = new(NestedTypes_SubtypeA_SubtypeC)
  let root = if root == nil: cast[NestedTypes](this) else: cast[NestedTypes](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueCExpr = this.io.readS1()
  this.valueC = valueCExpr

proc fromFile*(_: typedesc[NestedTypes_SubtypeA_SubtypeC], filename: string): NestedTypes_SubtypeA_SubtypeC =
  NestedTypes_SubtypeA_SubtypeC.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedTypes_SubtypeB], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypes_SubtypeB =
  template this: untyped = result
  this = new(NestedTypes_SubtypeB)
  let root = if root == nil: cast[NestedTypes](this) else: cast[NestedTypes](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueBExpr = this.io.readS1()
  this.valueB = valueBExpr

proc fromFile*(_: typedesc[NestedTypes_SubtypeB], filename: string): NestedTypes_SubtypeB =
  NestedTypes_SubtypeB.read(newKaitaiFileStream(filename), nil, nil)


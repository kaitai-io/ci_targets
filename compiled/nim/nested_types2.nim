import kaitai_struct_nim_runtime
import options

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

## NestedTypes2_SubtypeA_SubtypeC_SubtypeD
proc read*(_: typedesc[NestedTypes2_SubtypeA_SubtypeC_SubtypeD], io: KaitaiStream, root: NestedTypes2, parent: NestedTypes2_SubtypeA_SubtypeC): NestedTypes2_SubtypeA_SubtypeC_SubtypeD =
  let this = new(NestedTypes2_SubtypeA_SubtypeC_SubtypeD)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.valueD = this.io.readS1()
  result = this

proc fromFile*(_: typedesc[NestedTypes2_SubtypeA_SubtypeC_SubtypeD], filename: string): NestedTypes2_SubtypeA_SubtypeC_SubtypeD =
  NestedTypes2_SubtypeA_SubtypeC_SubtypeD.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes2_SubtypeA_SubtypeC_SubtypeDObj) =
  close(x.io)

## NestedTypes2_SubtypeA_SubtypeC
proc read*(_: typedesc[NestedTypes2_SubtypeA_SubtypeC], io: KaitaiStream, root: NestedTypes2, parent: NestedTypes2_SubtypeA): NestedTypes2_SubtypeA_SubtypeC =
  let this = new(NestedTypes2_SubtypeA_SubtypeC)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.valueC = this.io.readS1()
  this.typedHere = NestedTypes2_SubtypeA_SubtypeC_SubtypeD.read(this.io, this.root, this)
  this.typedParent = NestedTypes2_SubtypeA_SubtypeCc.read(this.io, this.root, this)
  this.typedRoot = NestedTypes2_SubtypeB.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[NestedTypes2_SubtypeA_SubtypeC], filename: string): NestedTypes2_SubtypeA_SubtypeC =
  NestedTypes2_SubtypeA_SubtypeC.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes2_SubtypeA_SubtypeCObj) =
  close(x.io)

## NestedTypes2_SubtypeA_SubtypeCc
proc read*(_: typedesc[NestedTypes2_SubtypeA_SubtypeCc], io: KaitaiStream, root: NestedTypes2, parent: ref RootObj): NestedTypes2_SubtypeA_SubtypeCc =
  let this = new(NestedTypes2_SubtypeA_SubtypeCc)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.valueCc = this.io.readS1()
  result = this

proc fromFile*(_: typedesc[NestedTypes2_SubtypeA_SubtypeCc], filename: string): NestedTypes2_SubtypeA_SubtypeCc =
  NestedTypes2_SubtypeA_SubtypeCc.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes2_SubtypeA_SubtypeCcObj) =
  close(x.io)

## NestedTypes2_SubtypeA
proc read*(_: typedesc[NestedTypes2_SubtypeA], io: KaitaiStream, root: NestedTypes2, parent: NestedTypes2): NestedTypes2_SubtypeA =
  let this = new(NestedTypes2_SubtypeA)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.typedAtRoot = NestedTypes2_SubtypeB.read(this.io, this.root, this)
  this.typedHere1 = NestedTypes2_SubtypeA_SubtypeC.read(this.io, this.root, this)
  this.typedHere2 = NestedTypes2_SubtypeA_SubtypeCc.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[NestedTypes2_SubtypeA], filename: string): NestedTypes2_SubtypeA =
  NestedTypes2_SubtypeA.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes2_SubtypeAObj) =
  close(x.io)

## NestedTypes2_SubtypeB
proc read*(_: typedesc[NestedTypes2_SubtypeB], io: KaitaiStream, root: NestedTypes2, parent: ref RootObj): NestedTypes2_SubtypeB =
  let this = new(NestedTypes2_SubtypeB)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.valueB = this.io.readS1()
  result = this

proc fromFile*(_: typedesc[NestedTypes2_SubtypeB], filename: string): NestedTypes2_SubtypeB =
  NestedTypes2_SubtypeB.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes2_SubtypeBObj) =
  close(x.io)

## NestedTypes2
proc read*(_: typedesc[NestedTypes2], io: KaitaiStream, root: NestedTypes2, parent: ref RootObj): NestedTypes2 =
  let this = new(NestedTypes2)
  let root = if root == nil: cast[NestedTypes2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = NestedTypes2_SubtypeA.read(this.io, this.root, this)
  this.two = NestedTypes2_SubtypeB.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[NestedTypes2], filename: string): NestedTypes2 =
  NestedTypes2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NestedTypes2Obj) =
  close(x.io)


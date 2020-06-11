import kaitai_struct_nim_runtime
import options

type
  NavParentFalse* = ref object of KaitaiStruct
    `childSize`*: uint8
    `elementA`*: NavParentFalse_ParentA
    `elementB`*: NavParentFalse_ParentB
    `parent`*: KaitaiStruct
  NavParentFalse_ParentA* = ref object of KaitaiStruct
    `foo`*: NavParentFalse_Child
    `bar`*: NavParentFalse_ParentB
    `parent`*: NavParentFalse
  NavParentFalse_ParentB* = ref object of KaitaiStruct
    `foo`*: NavParentFalse_Child
    `parent`*: KaitaiStruct
  NavParentFalse_Child* = ref object of KaitaiStruct
    `code`*: uint8
    `more`*: seq[byte]
    `parent`*: NavParentFalse_ParentA

proc read*(_: typedesc[NavParentFalse], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentFalse
proc read*(_: typedesc[NavParentFalse_ParentA], io: KaitaiStream, root: KaitaiStruct, parent: NavParentFalse): NavParentFalse_ParentA
proc read*(_: typedesc[NavParentFalse_ParentB], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentFalse_ParentB
proc read*(_: typedesc[NavParentFalse_Child], io: KaitaiStream, root: KaitaiStruct, parent: NavParentFalse_ParentA): NavParentFalse_Child


proc read*(_: typedesc[NavParentFalse], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentFalse =
  template this: untyped = result
  this = new(NavParentFalse)
  let root = if root == nil: cast[NavParentFalse](this) else: cast[NavParentFalse](root)
  this.io = io
  this.root = root
  this.parent = parent

  let childSizeExpr = this.io.readU1()
  this.childSize = childSizeExpr
  let elementAExpr = NavParentFalse_ParentA.read(this.io, this.root, this)
  this.elementA = elementAExpr
  let elementBExpr = NavParentFalse_ParentB.read(this.io, this.root, this)
  this.elementB = elementBExpr

proc fromFile*(_: typedesc[NavParentFalse], filename: string): NavParentFalse =
  NavParentFalse.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParentFalse_ParentA], io: KaitaiStream, root: KaitaiStruct, parent: NavParentFalse): NavParentFalse_ParentA =
  template this: untyped = result
  this = new(NavParentFalse_ParentA)
  let root = if root == nil: cast[NavParentFalse](this) else: cast[NavParentFalse](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = NavParentFalse_Child.read(this.io, this.root, this)
  this.foo = fooExpr
  let barExpr = NavParentFalse_ParentB.read(this.io, this.root, this)
  this.bar = barExpr

proc fromFile*(_: typedesc[NavParentFalse_ParentA], filename: string): NavParentFalse_ParentA =
  NavParentFalse_ParentA.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParentFalse_ParentB], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentFalse_ParentB =
  template this: untyped = result
  this = new(NavParentFalse_ParentB)
  let root = if root == nil: cast[NavParentFalse](this) else: cast[NavParentFalse](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = NavParentFalse_Child.read(this.io, this.root, nil)
  this.foo = fooExpr

proc fromFile*(_: typedesc[NavParentFalse_ParentB], filename: string): NavParentFalse_ParentB =
  NavParentFalse_ParentB.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParentFalse_Child], io: KaitaiStream, root: KaitaiStruct, parent: NavParentFalse_ParentA): NavParentFalse_Child =
  template this: untyped = result
  this = new(NavParentFalse_Child)
  let root = if root == nil: cast[NavParentFalse](this) else: cast[NavParentFalse](root)
  this.io = io
  this.root = root
  this.parent = parent

  let codeExpr = this.io.readU1()
  this.code = codeExpr
  if this.code == 73:
    let moreExpr = this.io.readBytes(int(this.parent.parent.childSize))
    this.more = moreExpr

proc fromFile*(_: typedesc[NavParentFalse_Child], filename: string): NavParentFalse_Child =
  NavParentFalse_Child.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  NavParentFalse* = ref object of KaitaiStruct
    childSize*: uint8
    elementA*: NavParentFalse_ParentA
    elementB*: NavParentFalse_ParentB
    parent*: KaitaiStruct
  NavParentFalse_ParentA* = ref object of KaitaiStruct
    foo*: NavParentFalse_Child
    bar*: NavParentFalse_ParentB
    parent*: NavParentFalse
  NavParentFalse_ParentB* = ref object of KaitaiStruct
    foo*: NavParentFalse_Child
    parent*: KaitaiStruct
  NavParentFalse_Child* = ref object of KaitaiStruct
    code*: uint8
    more*: string
    parent*: NavParentFalse_ParentA

proc read*(_: typedesc[NavParentFalse_ParentA], io: KaitaiStream, root: KaitaiStruct, parent: NavParentFalse): NavParentFalse_ParentA =
  template this: untyped = result
  this = new(NavParentFalse_ParentA)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.foo = NavParentFalse_Child.read(this.io, this.root, this)

  ##[
  ]##
  this.bar = NavParentFalse_ParentB.read(this.io, this.root, this)

proc fromFile*(_: typedesc[NavParentFalse_ParentA], filename: string): NavParentFalse_ParentA =
  NavParentFalse_ParentA.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParentFalse_ParentB], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentFalse_ParentB =
  template this: untyped = result
  this = new(NavParentFalse_ParentB)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.foo = NavParentFalse_Child.read(this.io, this.root, nil)

proc fromFile*(_: typedesc[NavParentFalse_ParentB], filename: string): NavParentFalse_ParentB =
  NavParentFalse_ParentB.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParentFalse_Child], io: KaitaiStream, root: KaitaiStruct, parent: NavParentFalse_ParentA): NavParentFalse_Child =
  template this: untyped = result
  this = new(NavParentFalse_Child)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.code = this.io.readU1()

  ##[
  ]##
  if this.code == 73:
    this.more = this.io.readBytes(int(this.parent.parent.childSize))

proc fromFile*(_: typedesc[NavParentFalse_Child], filename: string): NavParentFalse_Child =
  NavParentFalse_Child.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParentFalse], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentFalse =
  template this: untyped = result
  this = new(NavParentFalse)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.childSize = this.io.readU1()

  ##[
  ]##
  this.elementA = NavParentFalse_ParentA.read(this.io, this.root, this)

  ##[
  ]##
  this.elementB = NavParentFalse_ParentB.read(this.io, this.root, this)

proc fromFile*(_: typedesc[NavParentFalse], filename: string): NavParentFalse =
  NavParentFalse.read(newKaitaiFileStream(filename), nil, nil)


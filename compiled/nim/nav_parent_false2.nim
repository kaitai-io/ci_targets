import kaitai_struct_nim_runtime
import options

type
  NavParentFalse2* = ref object of KaitaiStruct
    `parentless`*: NavParentFalse2_Child
    `parent`*: KaitaiStruct
  NavParentFalse2_Child* = ref object of KaitaiStruct
    `foo`*: uint8
    `parent`*: KaitaiStruct

proc read*(_: typedesc[NavParentFalse2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentFalse2
proc read*(_: typedesc[NavParentFalse2_Child], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentFalse2_Child


proc read*(_: typedesc[NavParentFalse2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentFalse2 =
  template this: untyped = result
  this = new(NavParentFalse2)
  let root = if root == nil: cast[NavParentFalse2](this) else: cast[NavParentFalse2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let parentlessExpr = NavParentFalse2_Child.read(this.io, this.root, nil)
  this.parentless = parentlessExpr

proc fromFile*(_: typedesc[NavParentFalse2], filename: string): NavParentFalse2 =
  NavParentFalse2.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParentFalse2_Child], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentFalse2_Child =
  template this: untyped = result
  this = new(NavParentFalse2_Child)
  let root = if root == nil: cast[NavParentFalse2](this) else: cast[NavParentFalse2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = this.io.readU1()
  this.foo = fooExpr

proc fromFile*(_: typedesc[NavParentFalse2_Child], filename: string): NavParentFalse2_Child =
  NavParentFalse2_Child.read(newKaitaiFileStream(filename), nil, nil)


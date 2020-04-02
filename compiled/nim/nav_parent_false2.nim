import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  NavParentFalse2* = ref object of KaitaiStruct
    parentless*: NavParentFalse2_Child
    parent*: KaitaiStruct
  NavParentFalse2_Child* = ref object of KaitaiStruct
    foo*: uint8
    parent*: KaitaiStruct

proc read*(_: typedesc[NavParentFalse2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentFalse2
proc read*(_: typedesc[NavParentFalse2_Child], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentFalse2_Child

proc read*(_: typedesc[NavParentFalse2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentFalse2 =
  template this: untyped = result
  this = new(NavParentFalse2)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.parentless = NavParentFalse2_Child.read(this.io, this.root, nil)

proc fromFile*(_: typedesc[NavParentFalse2], filename: string): NavParentFalse2 =
  NavParentFalse2.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParentFalse2_Child], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentFalse2_Child =
  template this: untyped = result
  this = new(NavParentFalse2_Child)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.foo = this.io.readU1()

proc fromFile*(_: typedesc[NavParentFalse2_Child], filename: string): NavParentFalse2_Child =
  NavParentFalse2_Child.read(newKaitaiFileStream(filename), nil, nil)


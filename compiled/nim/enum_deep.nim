import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

defineEnum(EnumDeep_Container1_animal)
defineEnum(EnumDeep_Container1_Container2_animal)
const
  dog* = EnumDeep_Container1_animal(4)
  cat* = EnumDeep_Container1_animal(7)
  chicken* = EnumDeep_Container1_animal(12)

const
  canary* = EnumDeep_Container1_Container2_animal(4)
  turtle* = EnumDeep_Container1_Container2_animal(7)
  hare* = EnumDeep_Container1_Container2_animal(12)

type
  EnumDeep* = ref object of KaitaiStruct
    pet1*: EnumDeep_Container1_Animal
    pet2*: EnumDeep_Container1_Container2_Animal
    parent*: KaitaiStruct
  EnumDeep_Container1* = ref object of KaitaiStruct
    parent*: KaitaiStruct
  EnumDeep_Container1_Container2* = ref object of KaitaiStruct
    parent*: KaitaiStruct

proc read*(_: typedesc[EnumDeep], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumDeep
proc read*(_: typedesc[EnumDeep_Container1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumDeep_Container1
proc read*(_: typedesc[EnumDeep_Container1_Container2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumDeep_Container1_Container2


proc read*(_: typedesc[EnumDeep], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumDeep =
  template this: untyped = result
  this = new(EnumDeep)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.pet1 = EnumDeep_Container1_Animal(this.io.readU4le())
  this.pet2 = EnumDeep_Container1_Container2_Animal(this.io.readU4le())

proc fromFile*(_: typedesc[EnumDeep], filename: string): EnumDeep =
  EnumDeep.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[EnumDeep_Container1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumDeep_Container1 =
  template this: untyped = result
  this = new(EnumDeep_Container1)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[EnumDeep_Container1], filename: string): EnumDeep_Container1 =
  EnumDeep_Container1.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[EnumDeep_Container1_Container2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumDeep_Container1_Container2 =
  template this: untyped = result
  this = new(EnumDeep_Container1_Container2)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[EnumDeep_Container1_Container2], filename: string): EnumDeep_Container1_Container2 =
  EnumDeep_Container1_Container2.read(newKaitaiFileStream(filename), nil, nil)


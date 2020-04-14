import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

defineEnum(EnumDeepLiterals_Container1_animal)
defineEnum(EnumDeepLiterals_Container1_Container2_animal)
const
  dog* = EnumDeepLiterals_Container1_animal(4)
  cat* = EnumDeepLiterals_Container1_animal(7)
  chicken* = EnumDeepLiterals_Container1_animal(12)

const
  canary* = EnumDeepLiterals_Container1_Container2_animal(4)
  turtle* = EnumDeepLiterals_Container1_Container2_animal(7)
  hare* = EnumDeepLiterals_Container1_Container2_animal(12)

type
  EnumDeepLiterals* = ref object of KaitaiStruct
    pet1*: EnumDeepLiterals_Container1_Animal
    pet2*: EnumDeepLiterals_Container1_Container2_Animal
    parent*: KaitaiStruct
    isPet1OkInst*: Option[bool]
    isPet2OkInst*: Option[bool]
  EnumDeepLiterals_Container1* = ref object of KaitaiStruct
    parent*: KaitaiStruct
  EnumDeepLiterals_Container1_Container2* = ref object of KaitaiStruct
    parent*: KaitaiStruct

proc read*(_: typedesc[EnumDeepLiterals], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumDeepLiterals
proc read*(_: typedesc[EnumDeepLiterals_Container1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumDeepLiterals_Container1
proc read*(_: typedesc[EnumDeepLiterals_Container1_Container2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumDeepLiterals_Container1_Container2

proc isPet1Ok*(this: EnumDeepLiterals): bool
proc isPet2Ok*(this: EnumDeepLiterals): bool

proc read*(_: typedesc[EnumDeepLiterals], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumDeepLiterals =
  template this: untyped = result
  this = new(EnumDeepLiterals)
  let root = if root == nil: cast[EnumDeepLiterals](this) else: cast[EnumDeepLiterals](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.pet1 = EnumDeepLiterals_Container1_Animal(this.io.readU4le())
  this.pet2 = EnumDeepLiterals_Container1_Container2_Animal(this.io.readU4le())

proc isPet1Ok(this: EnumDeepLiterals): bool = 
  if isSome(this.isPet1OkInst):
    return get(this.isPet1OkInst)
  this.isPet1OkInst = bool(this.pet1 == enum_deep_literals.cat)
  if isSome(this.isPet1OkInst):
    return get(this.isPet1OkInst)

proc isPet2Ok(this: EnumDeepLiterals): bool = 
  if isSome(this.isPet2OkInst):
    return get(this.isPet2OkInst)
  this.isPet2OkInst = bool(this.pet2 == enum_deep_literals.hare)
  if isSome(this.isPet2OkInst):
    return get(this.isPet2OkInst)

proc fromFile*(_: typedesc[EnumDeepLiterals], filename: string): EnumDeepLiterals =
  EnumDeepLiterals.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[EnumDeepLiterals_Container1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumDeepLiterals_Container1 =
  template this: untyped = result
  this = new(EnumDeepLiterals_Container1)
  let root = if root == nil: cast[EnumDeepLiterals](this) else: cast[EnumDeepLiterals](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[EnumDeepLiterals_Container1], filename: string): EnumDeepLiterals_Container1 =
  EnumDeepLiterals_Container1.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[EnumDeepLiterals_Container1_Container2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumDeepLiterals_Container1_Container2 =
  template this: untyped = result
  this = new(EnumDeepLiterals_Container1_Container2)
  let root = if root == nil: cast[EnumDeepLiterals](this) else: cast[EnumDeepLiterals](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[EnumDeepLiterals_Container1_Container2], filename: string): EnumDeepLiterals_Container1_Container2 =
  EnumDeepLiterals_Container1_Container2.read(newKaitaiFileStream(filename), nil, nil)


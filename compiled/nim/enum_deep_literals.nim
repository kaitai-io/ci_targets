import kaitai_struct_nim_runtime
import options

type
  EnumDeepLiterals* = ref object of KaitaiStruct
    pet1*: EnumDeepLiterals_Container1_Animal
    pet2*: EnumDeepLiterals_Container1_Container2_Animal
    parent*: KaitaiStruct
    isPet1OkInst*: Option[bool]
    isPet2OkInst*: Option[bool]
  EnumDeepLiterals_Container1* = ref object of KaitaiStruct
    parent*: KaitaiStruct
  EnumDeepLiterals_Container1_animal* = enum
    dog = 4
    cat = 7
    chicken = 12
  EnumDeepLiterals_Container1_Container2* = ref object of KaitaiStruct
    parent*: KaitaiStruct
  EnumDeepLiterals_Container1_Container2_animal* = enum
    canary = 4
    turtle = 7
    hare = 12

proc read*(_: typedesc[EnumDeepLiterals_Container1_Container2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumDeepLiterals_Container1_Container2 =
  template this: untyped = result
  this = new(EnumDeepLiterals_Container1_Container2)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[EnumDeepLiterals_Container1_Container2], filename: string): EnumDeepLiterals_Container1_Container2 =
  EnumDeepLiterals_Container1_Container2.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[EnumDeepLiterals_Container1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumDeepLiterals_Container1 =
  template this: untyped = result
  this = new(EnumDeepLiterals_Container1)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[EnumDeepLiterals_Container1], filename: string): EnumDeepLiterals_Container1 =
  EnumDeepLiterals_Container1.read(newKaitaiFileStream(filename), nil, nil)

proc isPet1Ok*(this: EnumDeepLiterals): bool
proc isPet2Ok*(this: EnumDeepLiterals): bool
proc read*(_: typedesc[EnumDeepLiterals], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumDeepLiterals =
  template this: untyped = result
  this = new(EnumDeepLiterals)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.pet1 = EnumDeepLiterals_Container1_Animal(this.io.readU4le())

  ##[
  ]##
  this.pet2 = EnumDeepLiterals_Container1_Container2_Animal(this.io.readU4le())

proc isPet1Ok(this: EnumDeepLiterals): bool = 
  if isSome(this.isPet1OkInst):
    return get(this.isPet1OkInst)
  this.isPet1OkInst = some(this.pet1 == EnumDeepLiterals_Container1_Animal.cat)
  return get(this.isPet1OkInst)

proc isPet2Ok(this: EnumDeepLiterals): bool = 
  if isSome(this.isPet2OkInst):
    return get(this.isPet2OkInst)
  this.isPet2OkInst = some(this.pet2 == EnumDeepLiterals_Container1_Container2_Animal.hare)
  return get(this.isPet2OkInst)

proc fromFile*(_: typedesc[EnumDeepLiterals], filename: string): EnumDeepLiterals =
  EnumDeepLiterals.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  EnumDeepLiterals_Container1_Container2* = ref EnumDeepLiterals_Container1_Container2Obj
  EnumDeepLiterals_Container1_Container2Obj* = object
    io*: KaitaiStream
    root*: EnumDeepLiterals
    parent*: ref RootObj
  EnumDeepLiterals_Container1_Container2_animal* = enum
    canary = 4
    turtle = 7
    hare = 12
  EnumDeepLiterals_Container1* = ref EnumDeepLiterals_Container1Obj
  EnumDeepLiterals_Container1Obj* = object
    io*: KaitaiStream
    root*: EnumDeepLiterals
    parent*: ref RootObj
  EnumDeepLiterals_Container1_animal* = enum
    dog = 4
    cat = 7
    chicken = 12
  EnumDeepLiterals* = ref EnumDeepLiteralsObj
  EnumDeepLiteralsObj* = object
    pet1*: EnumDeepLiterals_Container1_Animal
    pet2*: EnumDeepLiterals_Container1_Container2_Animal
    io*: KaitaiStream
    root*: EnumDeepLiterals
    parent*: ref RootObj
    isPet1OkInst*: Option[bool]
    isPet2OkInst*: Option[bool]

## EnumDeepLiterals_Container1_Container2
proc read*(_: typedesc[EnumDeepLiterals_Container1_Container2], io: KaitaiStream, root: EnumDeepLiterals, parent: ref RootObj): EnumDeepLiterals_Container1_Container2 =
  let this = new(EnumDeepLiterals_Container1_Container2)
  let root = if root == nil: cast[EnumDeepLiterals](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[EnumDeepLiterals_Container1_Container2], filename: string): EnumDeepLiterals_Container1_Container2 =
  EnumDeepLiterals_Container1_Container2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumDeepLiterals_Container1_Container2Obj) =
  close(x.io)

## EnumDeepLiterals_Container1
proc read*(_: typedesc[EnumDeepLiterals_Container1], io: KaitaiStream, root: EnumDeepLiterals, parent: ref RootObj): EnumDeepLiterals_Container1 =
  let this = new(EnumDeepLiterals_Container1)
  let root = if root == nil: cast[EnumDeepLiterals](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[EnumDeepLiterals_Container1], filename: string): EnumDeepLiterals_Container1 =
  EnumDeepLiterals_Container1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumDeepLiterals_Container1Obj) =
  close(x.io)

## EnumDeepLiterals
proc isPet1Ok*(this: EnumDeepLiterals): bool
proc isPet2Ok*(this: EnumDeepLiterals): bool
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

proc read*(_: typedesc[EnumDeepLiterals], io: KaitaiStream, root: EnumDeepLiterals, parent: ref RootObj): EnumDeepLiterals =
  let this = new(EnumDeepLiterals)
  let root = if root == nil: cast[EnumDeepLiterals](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.pet1 = EnumDeepLiterals_Container1_Animal(this.io.readU4le())
  this.pet2 = EnumDeepLiterals_Container1_Container2_Animal(this.io.readU4le())
  result = this

proc fromFile*(_: typedesc[EnumDeepLiterals], filename: string): EnumDeepLiterals =
  EnumDeepLiterals.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumDeepLiteralsObj) =
  close(x.io)


import kaitai_struct_nim_runtime
import options

type
  EnumDeepLiterals* = ref object of KaitaiStruct
    `pet1`*: EnumDeepLiterals_Container1_Animal
    `pet2`*: EnumDeepLiterals_Container1_Container2_Animal
    `parent`*: KaitaiStruct
    `isPet1OkInst`*: bool
    `isPet2OkInst`*: bool
  EnumDeepLiterals_Container1* = ref object of KaitaiStruct
    `parent`*: KaitaiStruct
  EnumDeepLiterals_Container1_Animal* = enum
    dog = 4
    cat = 7
    chicken = 12
  EnumDeepLiterals_Container1_Container2* = ref object of KaitaiStruct
    `parent`*: KaitaiStruct
  EnumDeepLiterals_Container1_Container2_Animal* = enum
    canary = 4
    turtle = 7
    hare = 12

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

  let pet1Expr = EnumDeepLiterals_Container1_Animal(this.io.readU4le())
  this.pet1 = pet1Expr
  let pet2Expr = EnumDeepLiterals_Container1_Container2_Animal(this.io.readU4le())
  this.pet2 = pet2Expr

proc isPet1Ok(this: EnumDeepLiterals): bool = 
  if this.isPet1OkInst != nil:
    return this.isPet1OkInst
  let isPet1OkInstExpr = bool(this.pet1 == enum_deep_literals.cat)
  this.isPet1OkInst = isPet1OkInstExpr
  if this.isPet1OkInst != nil:
    return this.isPet1OkInst

proc isPet2Ok(this: EnumDeepLiterals): bool = 
  if this.isPet2OkInst != nil:
    return this.isPet2OkInst
  let isPet2OkInstExpr = bool(this.pet2 == enum_deep_literals.hare)
  this.isPet2OkInst = isPet2OkInstExpr
  if this.isPet2OkInst != nil:
    return this.isPet2OkInst

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


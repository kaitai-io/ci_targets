import kaitai_struct_nim_runtime
import options
import enum_to_i_class_border_2

import "enum_to_i_class_border_2"
type
  EnumToIClassBorder1* = ref object of KaitaiStruct
    `pet1`*: EnumToIClassBorder1_Animal
    `pet2`*: EnumToIClassBorder1_Animal
    `parent`*: KaitaiStruct
    `checkerInst`: EnumToIClassBorder2
    `checkerInstFlag`: bool
    `someDogInst`: EnumToIClassBorder1_Animal
    `someDogInstFlag`: bool
  EnumToIClassBorder1_Animal* = enum
    dog = 4
    cat = 7
    chicken = 12

proc read*(_: typedesc[EnumToIClassBorder1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumToIClassBorder1

proc checker*(this: EnumToIClassBorder1): EnumToIClassBorder2
proc someDog*(this: EnumToIClassBorder1): EnumToIClassBorder1_Animal

proc read*(_: typedesc[EnumToIClassBorder1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumToIClassBorder1 =
  template this: untyped = result
  this = new(EnumToIClassBorder1)
  let root = if root == nil: cast[EnumToIClassBorder1](this) else: cast[EnumToIClassBorder1](root)
  this.io = io
  this.root = root
  this.parent = parent

  let pet1Expr = EnumToIClassBorder1_Animal(this.io.readU4le())
  this.pet1 = pet1Expr
  let pet2Expr = EnumToIClassBorder1_Animal(this.io.readU4le())
  this.pet2 = pet2Expr

proc checker(this: EnumToIClassBorder1): EnumToIClassBorder2 = 
  if this.checkerInstFlag:
    return this.checkerInst
  let pos = this.io.pos()
  this.io.seek(int(0))
  let checkerInstExpr = EnumToIClassBorder2.read(this.io, nil, nil, EnumToIClassBorder1(this.root))
  this.checkerInst = checkerInstExpr
  this.io.seek(pos)
  this.checkerInstFlag = true
  return this.checkerInst

proc someDog(this: EnumToIClassBorder1): EnumToIClassBorder1_Animal = 
  if this.someDogInstFlag:
    return this.someDogInst
  let someDogInstExpr = EnumToIClassBorder1_Animal(EnumToIClassBorder1_Animal(4))
  this.someDogInst = someDogInstExpr
  this.someDogInstFlag = true
  return this.someDogInst

proc fromFile*(_: typedesc[EnumToIClassBorder1], filename: string): EnumToIClassBorder1 =
  EnumToIClassBorder1.read(newKaitaiFileStream(filename), nil, nil)


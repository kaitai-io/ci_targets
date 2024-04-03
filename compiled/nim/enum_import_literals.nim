import kaitai_struct_nim_runtime
import options
import enum_0
import enum_deep

type
  EnumImportLiterals* = ref object of KaitaiStruct
    `parent`*: KaitaiStruct
    `pet1EqInst`: bool
    `pet1EqInstFlag`: bool
    `pet1ToIInst`: int
    `pet1ToIInstFlag`: bool
    `pet2Inst`: EnumDeep_Container1_Container2_Animal
    `pet2InstFlag`: bool

proc read*(_: typedesc[EnumImportLiterals], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumImportLiterals

proc pet1Eq*(this: EnumImportLiterals): bool
proc pet1ToI*(this: EnumImportLiterals): int
proc pet2*(this: EnumImportLiterals): EnumDeep_Container1_Container2_Animal

proc read*(_: typedesc[EnumImportLiterals], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumImportLiterals =
  template this: untyped = result
  this = new(EnumImportLiterals)
  let root = if root == nil: cast[EnumImportLiterals](this) else: cast[EnumImportLiterals](root)
  this.io = io
  this.root = root
  this.parent = parent


proc pet1Eq(this: EnumImportLiterals): bool = 
  if this.pet1EqInstFlag:
    return this.pet1EqInst
  let pet1EqInstExpr = bool((if true: enum_0.chicken else: enum_0.dog) == enum_0.chicken)
  this.pet1EqInst = pet1EqInstExpr
  this.pet1EqInstFlag = true
  return this.pet1EqInst

proc pet1ToI(this: EnumImportLiterals): int = 
  if this.pet1ToIInstFlag:
    return this.pet1ToIInst
  let pet1ToIInstExpr = int(ord(enum_0.cat))
  this.pet1ToIInst = pet1ToIInstExpr
  this.pet1ToIInstFlag = true
  return this.pet1ToIInst

proc pet2(this: EnumImportLiterals): EnumDeep_Container1_Container2_Animal = 
  if this.pet2InstFlag:
    return this.pet2Inst
  let pet2InstExpr = EnumDeep_Container1_Container2_Animal(enum_deep.hare)
  this.pet2Inst = pet2InstExpr
  this.pet2InstFlag = true
  return this.pet2Inst

proc fromFile*(_: typedesc[EnumImportLiterals], filename: string): EnumImportLiterals =
  EnumImportLiterals.read(newKaitaiFileStream(filename), nil, nil)


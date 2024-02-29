import kaitai_struct_nim_runtime
import options
import strutils

type
  EnumToI* = ref object of KaitaiStruct
    `pet1`*: EnumToI_Animal
    `pet2`*: EnumToI_Animal
    `parent`*: KaitaiStruct
    `oneLtTwoInst`: bool
    `oneLtTwoInstFlag`: bool
    `pet1EqIntInst`: bool
    `pet1EqIntInstFlag`: bool
    `pet1IInst`: int
    `pet1IInstFlag`: bool
    `pet1IToSInst`: string
    `pet1IToSInstFlag`: bool
    `pet1ModInst`: int
    `pet1ModInstFlag`: bool
    `pet2EqIntInst`: bool
    `pet2EqIntInstFlag`: bool
  EnumToI_Animal* = enum
    dog = 4
    cat = 7
    chicken = 12

proc read*(_: typedesc[EnumToI], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumToI

proc oneLtTwo*(this: EnumToI): bool
proc pet1EqInt*(this: EnumToI): bool
proc pet1I*(this: EnumToI): int
proc pet1IToS*(this: EnumToI): string
proc pet1Mod*(this: EnumToI): int
proc pet2EqInt*(this: EnumToI): bool

proc read*(_: typedesc[EnumToI], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumToI =
  template this: untyped = result
  this = new(EnumToI)
  let root = if root == nil: cast[EnumToI](this) else: cast[EnumToI](root)
  this.io = io
  this.root = root
  this.parent = parent

  let pet1Expr = EnumToI_Animal(this.io.readU4le())
  this.pet1 = pet1Expr
  let pet2Expr = EnumToI_Animal(this.io.readU4le())
  this.pet2 = pet2Expr

proc oneLtTwo(this: EnumToI): bool = 
  if this.oneLtTwoInstFlag:
    return this.oneLtTwoInst
  let oneLtTwoInstExpr = bool(ord(this.pet1) < ord(this.pet2))
  this.oneLtTwoInst = oneLtTwoInstExpr
  this.oneLtTwoInstFlag = true
  return this.oneLtTwoInst

proc pet1EqInt(this: EnumToI): bool = 
  if this.pet1EqIntInstFlag:
    return this.pet1EqIntInst
  let pet1EqIntInstExpr = bool(ord(this.pet1) == 7)
  this.pet1EqIntInst = pet1EqIntInstExpr
  this.pet1EqIntInstFlag = true
  return this.pet1EqIntInst

proc pet1I(this: EnumToI): int = 
  if this.pet1IInstFlag:
    return this.pet1IInst
  let pet1IInstExpr = int(ord(this.pet1))
  this.pet1IInst = pet1IInstExpr
  this.pet1IInstFlag = true
  return this.pet1IInst

proc pet1IToS(this: EnumToI): string = 
  if this.pet1IToSInstFlag:
    return this.pet1IToSInst
  let pet1IToSInstExpr = string(intToStr(int(ord(this.pet1))))
  this.pet1IToSInst = pet1IToSInstExpr
  this.pet1IToSInstFlag = true
  return this.pet1IToSInst

proc pet1Mod(this: EnumToI): int = 
  if this.pet1ModInstFlag:
    return this.pet1ModInst
  let pet1ModInstExpr = int((ord(this.pet1) + 32768))
  this.pet1ModInst = pet1ModInstExpr
  this.pet1ModInstFlag = true
  return this.pet1ModInst

proc pet2EqInt(this: EnumToI): bool = 
  if this.pet2EqIntInstFlag:
    return this.pet2EqIntInst
  let pet2EqIntInstExpr = bool(ord(this.pet2) == 5)
  this.pet2EqIntInst = pet2EqIntInstExpr
  this.pet2EqIntInstFlag = true
  return this.pet2EqIntInst

proc fromFile*(_: typedesc[EnumToI], filename: string): EnumToI =
  EnumToI.read(newKaitaiFileStream(filename), nil, nil)


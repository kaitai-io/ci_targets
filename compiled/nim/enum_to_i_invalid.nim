import kaitai_struct_nim_runtime
import options
import strutils

type
  EnumToIInvalid* = ref object of KaitaiStruct
    `pet1`*: EnumToIInvalid_Animal
    `pet2`*: EnumToIInvalid_Animal
    `parent`*: KaitaiStruct
    `oneLtTwoInst`: bool
    `oneLtTwoInstFlag`: bool
    `pet2EqIntFInst`: bool
    `pet2EqIntFInstFlag`: bool
    `pet2EqIntTInst`: bool
    `pet2EqIntTInstFlag`: bool
    `pet2IInst`: int
    `pet2IInstFlag`: bool
    `pet2IToSInst`: string
    `pet2IToSInstFlag`: bool
    `pet2ModInst`: int
    `pet2ModInstFlag`: bool
  EnumToIInvalid_Animal* = enum
    dog = 102
    cat = 124

proc read*(_: typedesc[EnumToIInvalid], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumToIInvalid

proc oneLtTwo*(this: EnumToIInvalid): bool
proc pet2EqIntF*(this: EnumToIInvalid): bool
proc pet2EqIntT*(this: EnumToIInvalid): bool
proc pet2I*(this: EnumToIInvalid): int
proc pet2IToS*(this: EnumToIInvalid): string
proc pet2Mod*(this: EnumToIInvalid): int

proc read*(_: typedesc[EnumToIInvalid], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumToIInvalid =
  template this: untyped = result
  this = new(EnumToIInvalid)
  let root = if root == nil: cast[EnumToIInvalid](this) else: cast[EnumToIInvalid](root)
  this.io = io
  this.root = root
  this.parent = parent

  let pet1Expr = EnumToIInvalid_Animal(this.io.readU1())
  this.pet1 = pet1Expr
  let pet2Expr = EnumToIInvalid_Animal(this.io.readU1())
  this.pet2 = pet2Expr

proc oneLtTwo(this: EnumToIInvalid): bool = 
  if this.oneLtTwoInstFlag:
    return this.oneLtTwoInst
  let oneLtTwoInstExpr = bool(ord(this.pet1) < ord(this.pet2))
  this.oneLtTwoInst = oneLtTwoInstExpr
  this.oneLtTwoInstFlag = true
  return this.oneLtTwoInst

proc pet2EqIntF(this: EnumToIInvalid): bool = 
  if this.pet2EqIntFInstFlag:
    return this.pet2EqIntFInst
  let pet2EqIntFInstExpr = bool(ord(this.pet2) == 110)
  this.pet2EqIntFInst = pet2EqIntFInstExpr
  this.pet2EqIntFInstFlag = true
  return this.pet2EqIntFInst

proc pet2EqIntT(this: EnumToIInvalid): bool = 
  if this.pet2EqIntTInstFlag:
    return this.pet2EqIntTInst
  let pet2EqIntTInstExpr = bool(ord(this.pet2) == 111)
  this.pet2EqIntTInst = pet2EqIntTInstExpr
  this.pet2EqIntTInstFlag = true
  return this.pet2EqIntTInst

proc pet2I(this: EnumToIInvalid): int = 
  if this.pet2IInstFlag:
    return this.pet2IInst
  let pet2IInstExpr = int(ord(this.pet2))
  this.pet2IInst = pet2IInstExpr
  this.pet2IInstFlag = true
  return this.pet2IInst

proc pet2IToS(this: EnumToIInvalid): string = 
  if this.pet2IToSInstFlag:
    return this.pet2IToSInst
  let pet2IToSInstExpr = string(intToStr(int(ord(this.pet2))))
  this.pet2IToSInst = pet2IToSInstExpr
  this.pet2IToSInstFlag = true
  return this.pet2IToSInst

proc pet2Mod(this: EnumToIInvalid): int = 
  if this.pet2ModInstFlag:
    return this.pet2ModInst
  let pet2ModInstExpr = int(ord(this.pet2) + 32768)
  this.pet2ModInst = pet2ModInstExpr
  this.pet2ModInstFlag = true
  return this.pet2ModInst

proc fromFile*(_: typedesc[EnumToIInvalid], filename: string): EnumToIInvalid =
  EnumToIInvalid.read(newKaitaiFileStream(filename), nil, nil)


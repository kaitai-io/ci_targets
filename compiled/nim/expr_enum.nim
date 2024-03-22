import kaitai_struct_nim_runtime
import options

type
  ExprEnum* = ref object of KaitaiStruct
    `one`*: uint8
    `parent`*: KaitaiStruct
    `constDogInst`: ExprEnum_Animal
    `constDogInstFlag`: bool
    `derivedBoomInst`: ExprEnum_Animal
    `derivedBoomInstFlag`: bool
    `derivedDogInst`: ExprEnum_Animal
    `derivedDogInstFlag`: bool
  ExprEnum_Animal* = enum
    dog = 4
    cat = 7
    chicken = 12
    boom = 102

proc read*(_: typedesc[ExprEnum], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprEnum

proc constDog*(this: ExprEnum): ExprEnum_Animal
proc derivedBoom*(this: ExprEnum): ExprEnum_Animal
proc derivedDog*(this: ExprEnum): ExprEnum_Animal

proc read*(_: typedesc[ExprEnum], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprEnum =
  template this: untyped = result
  this = new(ExprEnum)
  let root = if root == nil: cast[ExprEnum](this) else: cast[ExprEnum](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = this.io.readU1()
  this.one = oneExpr

proc constDog(this: ExprEnum): ExprEnum_Animal = 
  if this.constDogInstFlag:
    return this.constDogInst
  let constDogInstExpr = ExprEnum_Animal(ExprEnum_Animal(4))
  this.constDogInst = constDogInstExpr
  this.constDogInstFlag = true
  return this.constDogInst

proc derivedBoom(this: ExprEnum): ExprEnum_Animal = 
  if this.derivedBoomInstFlag:
    return this.derivedBoomInst
  let derivedBoomInstExpr = ExprEnum_Animal(ExprEnum_Animal(this.one))
  this.derivedBoomInst = derivedBoomInstExpr
  this.derivedBoomInstFlag = true
  return this.derivedBoomInst

proc derivedDog(this: ExprEnum): ExprEnum_Animal = 
  if this.derivedDogInstFlag:
    return this.derivedDogInst
  let derivedDogInstExpr = ExprEnum_Animal(ExprEnum_Animal(this.one - 98))
  this.derivedDogInst = derivedDogInstExpr
  this.derivedDogInstFlag = true
  return this.derivedDogInst

proc fromFile*(_: typedesc[ExprEnum], filename: string): ExprEnum =
  ExprEnum.read(newKaitaiFileStream(filename), nil, nil)


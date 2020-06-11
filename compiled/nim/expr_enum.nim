import kaitai_struct_nim_runtime
import options

type
  ExprEnum* = ref object of KaitaiStruct
    `one`*: uint8
    `parent`*: KaitaiStruct
    `constDogInst`*: ExprEnum_Animal
    `derivedBoomInst`*: ExprEnum_Animal
    `derivedDogInst`*: ExprEnum_Animal
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
  if this.constDogInst != nil:
    return this.constDogInst
  let constDogInstExpr = ExprEnum_Animal(ExprEnum_Animal(4))
  this.constDogInst = constDogInstExpr
  if this.constDogInst != nil:
    return this.constDogInst

proc derivedBoom(this: ExprEnum): ExprEnum_Animal = 
  if this.derivedBoomInst != nil:
    return this.derivedBoomInst
  let derivedBoomInstExpr = ExprEnum_Animal(ExprEnum_Animal(this.one))
  this.derivedBoomInst = derivedBoomInstExpr
  if this.derivedBoomInst != nil:
    return this.derivedBoomInst

proc derivedDog(this: ExprEnum): ExprEnum_Animal = 
  if this.derivedDogInst != nil:
    return this.derivedDogInst
  let derivedDogInstExpr = ExprEnum_Animal(ExprEnum_Animal((this.one - 98)))
  this.derivedDogInst = derivedDogInstExpr
  if this.derivedDogInst != nil:
    return this.derivedDogInst

proc fromFile*(_: typedesc[ExprEnum], filename: string): ExprEnum =
  ExprEnum.read(newKaitaiFileStream(filename), nil, nil)


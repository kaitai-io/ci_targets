import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

defineEnum(ExprEnum_animal)
const
  dog* = ExprEnum_animal(4)
  cat* = ExprEnum_animal(7)
  chicken* = ExprEnum_animal(12)
  boom* = ExprEnum_animal(102)

type
  ExprEnum* = ref object of KaitaiStruct
    one*: uint8
    parent*: KaitaiStruct
    constDogInst*: Option[ExprEnum_Animal]
    derivedBoomInst*: Option[ExprEnum_Animal]
    derivedDogInst*: Option[ExprEnum_Animal]

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
  if isSome(this.constDogInst):
    return get(this.constDogInst)
  let constDogInstExpr = ExprEnum_Animal(ExprEnum_Animal(4))
  this.constDogInst = constDogInstExpr
  if isSome(this.constDogInst):
    return get(this.constDogInst)

proc derivedBoom(this: ExprEnum): ExprEnum_Animal = 
  if isSome(this.derivedBoomInst):
    return get(this.derivedBoomInst)
  let derivedBoomInstExpr = ExprEnum_Animal(ExprEnum_Animal(this.one))
  this.derivedBoomInst = derivedBoomInstExpr
  if isSome(this.derivedBoomInst):
    return get(this.derivedBoomInst)

proc derivedDog(this: ExprEnum): ExprEnum_Animal = 
  if isSome(this.derivedDogInst):
    return get(this.derivedDogInst)
  let derivedDogInstExpr = ExprEnum_Animal(ExprEnum_Animal((this.one - 98)))
  this.derivedDogInst = derivedDogInstExpr
  if isSome(this.derivedDogInst):
    return get(this.derivedDogInst)

proc fromFile*(_: typedesc[ExprEnum], filename: string): ExprEnum =
  ExprEnum.read(newKaitaiFileStream(filename), nil, nil)


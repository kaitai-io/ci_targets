import kaitai_struct_nim_runtime
import options

type
  ExprEnum* = ref ExprEnumObj
  ExprEnumObj* = object
    one*: uint8
    io*: KaitaiStream
    root*: ExprEnum
    parent*: ref RootObj
    constDogInst*: Option[ExprEnum_Animal]
    derivedBoomInst*: Option[ExprEnum_Animal]
    derivedDogInst*: Option[ExprEnum_Animal]
  ExprEnum_animal* = enum
    dog = 4
    cat = 7
    chicken = 12
    boom = 102

### ExprEnum ###
proc constDog*(this: ExprEnum): ExprEnum_Animal
proc derivedBoom*(this: ExprEnum): ExprEnum_Animal
proc derivedDog*(this: ExprEnum): ExprEnum_Animal
proc constDog(this: ExprEnum): ExprEnum_Animal = 
  if isSome(this.constDogInst):
    return get(this.constDogInst)
  let constDogInst = ExprEnum_Animal(4)
  this.constDogInst = some(constDogInst)
  return get(this.constDogInst)

proc derivedBoom(this: ExprEnum): ExprEnum_Animal = 
  if isSome(this.derivedBoomInst):
    return get(this.derivedBoomInst)
  let derivedBoomInst = ExprEnum_Animal(this.one)
  this.derivedBoomInst = some(derivedBoomInst)
  return get(this.derivedBoomInst)

proc derivedDog(this: ExprEnum): ExprEnum_Animal = 
  if isSome(this.derivedDogInst):
    return get(this.derivedDogInst)
  let derivedDogInst = ExprEnum_Animal((this.one - 98))
  this.derivedDogInst = some(derivedDogInst)
  return get(this.derivedDogInst)

proc read*(_: typedesc[ExprEnum], io: KaitaiStream, root: ExprEnum, parent: ref RootObj): ExprEnum =
  let this = new(ExprEnum)
  let root = if root == nil: cast[ExprEnum](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let one = this.io.readU1()
  this.one = one
  result = this

proc fromFile*(_: typedesc[ExprEnum], filename: string): ExprEnum =
  ExprEnum.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprEnumObj) =
  close(x.io)


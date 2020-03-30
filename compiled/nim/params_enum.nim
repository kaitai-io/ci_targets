import kaitai_struct_nim_runtime
import options

type
  ParamsEnum_WithParam* = ref ParamsEnum_WithParamObj
  ParamsEnum_WithParamObj* = object
    enumeratedOne*: ParamsEnum_Animal
    io*: KaitaiStream
    root*: ParamsEnum
    parent*: ParamsEnum
    isCatInst*: Option[bool]
  ParamsEnum* = ref ParamsEnumObj
  ParamsEnumObj* = object
    one*: ParamsEnum_Animal
    invokeWithParam*: ParamsEnum_WithParam
    io*: KaitaiStream
    root*: ParamsEnum
    parent*: ref RootObj
  ParamsEnum_animal* = enum
    dog = 4
    cat = 7
    chicken = 12

## ParamsEnum_WithParam
proc isCat*(this: ParamsEnum_WithParam): bool
proc isCat(this: ParamsEnum_WithParam): bool = 
  if isSome(this.isCatInst):
    return get(this.isCatInst)
  this.isCatInst = some(this.enumeratedOne == ParamsEnum_Animal.cat)
  return get(this.isCatInst)

proc read*(_: typedesc[ParamsEnum_WithParam], io: KaitaiStream, root: ParamsEnum, parent: ParamsEnum): ParamsEnum_WithParam =
  let this = new(ParamsEnum_WithParam)
  let root = if root == nil: cast[ParamsEnum](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[ParamsEnum_WithParam], filename: string): ParamsEnum_WithParam =
  ParamsEnum_WithParam.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsEnum_WithParamObj) =
  close(x.io)

## ParamsEnum
proc read*(_: typedesc[ParamsEnum], io: KaitaiStream, root: ParamsEnum, parent: ref RootObj): ParamsEnum =
  let this = new(ParamsEnum)
  let root = if root == nil: cast[ParamsEnum](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = ParamsEnum_Animal(this.io.readU1())
  this.invokeWithParam = ParamsEnum_WithParam.read(this.io, this.root, this, this.one)
  result = this

proc fromFile*(_: typedesc[ParamsEnum], filename: string): ParamsEnum =
  ParamsEnum.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsEnumObj) =
  close(x.io)


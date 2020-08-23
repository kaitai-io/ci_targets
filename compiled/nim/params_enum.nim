import kaitai_struct_nim_runtime
import options

type
  ParamsEnum* = ref object of KaitaiStruct
    `one`*: ParamsEnum_Animal
    `invokeWithParam`*: ParamsEnum_WithParam
    `parent`*: KaitaiStruct
  ParamsEnum_Animal* = enum
    dog = 4
    cat = 7
    chicken = 12
  ParamsEnum_WithParam* = ref object of KaitaiStruct
    `enumeratedOne`*: ParamsEnum_Animal
    `parent`*: ParamsEnum
    `isCatInst`*: bool

proc read*(_: typedesc[ParamsEnum], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsEnum
proc read*(_: typedesc[ParamsEnum_WithParam], io: KaitaiStream, root: KaitaiStruct, parent: ParamsEnum, enumeratedOne: any): ParamsEnum_WithParam

proc isCat*(this: ParamsEnum_WithParam): bool

proc read*(_: typedesc[ParamsEnum], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsEnum =
  template this: untyped = result
  this = new(ParamsEnum)
  let root = if root == nil: cast[ParamsEnum](this) else: cast[ParamsEnum](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = ParamsEnum_Animal(this.io.readU1())
  this.one = oneExpr
  let invokeWithParamExpr = ParamsEnum_WithParam.read(this.io, this.root, this, this.one)
  this.invokeWithParam = invokeWithParamExpr

proc fromFile*(_: typedesc[ParamsEnum], filename: string): ParamsEnum =
  ParamsEnum.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsEnum_WithParam], io: KaitaiStream, root: KaitaiStruct, parent: ParamsEnum, enumeratedOne: any): ParamsEnum_WithParam =
  template this: untyped = result
  this = new(ParamsEnum_WithParam)
  let root = if root == nil: cast[ParamsEnum](this) else: cast[ParamsEnum](root)
  this.io = io
  this.root = root
  this.parent = parent
  let enumeratedOneExpr = ParamsEnum_Animal(enumeratedOne)
  this.enumeratedOne = enumeratedOneExpr


proc isCat(this: ParamsEnum_WithParam): bool = 
  if this.isCatInst != nil:
    return this.isCatInst
  let isCatInstExpr = bool(this.enumeratedOne == params_enum.cat)
  this.isCatInst = isCatInstExpr
  if this.isCatInst != nil:
    return this.isCatInst

proc fromFile*(_: typedesc[ParamsEnum_WithParam], filename: string): ParamsEnum_WithParam =
  ParamsEnum_WithParam.read(newKaitaiFileStream(filename), nil, nil)


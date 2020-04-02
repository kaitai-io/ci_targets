import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

defineEnum(ParamsEnum_animal)
const
  dog* = ParamsEnum_animal(4)
  cat* = ParamsEnum_animal(7)
  chicken* = ParamsEnum_animal(12)

type
  ParamsEnum* = ref object of KaitaiStruct
    one*: ParamsEnum_Animal
    invokeWithParam*: ParamsEnum_WithParam
    parent*: KaitaiStruct
  ParamsEnum_WithParam* = ref object of KaitaiStruct
    enumeratedOne*: ParamsEnum_Animal
    parent*: ParamsEnum
    isCatInst*: Option[bool]

proc read*(_: typedesc[ParamsEnum], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsEnum
proc read*(_: typedesc[ParamsEnum_WithParam], io: KaitaiStream, root: KaitaiStruct, parent: ParamsEnum): ParamsEnum_WithParam

proc read*(_: typedesc[ParamsEnum], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsEnum =
  template this: untyped = result
  this = new(ParamsEnum)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = ParamsEnum_Animal(this.io.readU1())
  this.invokeWithParam = ParamsEnum_WithParam.read(this.io, this.root, this, this.one)

proc fromFile*(_: typedesc[ParamsEnum], filename: string): ParamsEnum =
  ParamsEnum.read(newKaitaiFileStream(filename), nil, nil)

proc isCat*(this: ParamsEnum_WithParam): bool
proc read*(_: typedesc[ParamsEnum_WithParam], io: KaitaiStream, root: KaitaiStruct, parent: ParamsEnum): ParamsEnum_WithParam =
  template this: untyped = result
  this = new(ParamsEnum_WithParam)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


proc isCat(this: ParamsEnum_WithParam): bool = 
  if isSome(this.isCatInst):
    return get(this.isCatInst)
  this.isCatInst = some(this.enumeratedOne == ParamsEnum_Animal(cat))
  return get(this.isCatInst)

proc fromFile*(_: typedesc[ParamsEnum_WithParam], filename: string): ParamsEnum_WithParam =
  ParamsEnum_WithParam.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime

type
  ParamsEnum_WithParam* = ref ParamsEnum_WithParamObj
  ParamsEnum_WithParamObj* = object
    enumeratedOne*: Animal
    io*: KaitaiStream
    root*: ParamsEnum
    parent*: ParamsEnum
  ParamsEnum* = ref ParamsEnumObj
  ParamsEnumObj* = object
    one*: Animal
    invokeWithParam*: ParamsEnum_WithParam
    io*: KaitaiStream
    root*: ParamsEnum
    parent*: ref RootObj

### ParamsEnum_WithParam ###
proc read*(_: typedesc[ParamsEnum_WithParam], io: KaitaiStream, root: ParamsEnum, parent: ParamsEnum): ParamsEnum_WithParam =
  result = new(ParamsEnum_WithParam)
  let root = if root == nil: cast[ParamsEnum](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ParamsEnum_WithParam], filename: string): ParamsEnum_WithParam =
  ParamsEnum_WithParam.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsEnum_WithParamObj) =
  close(x.io)

### ParamsEnum ###
proc read*(_: typedesc[ParamsEnum], io: KaitaiStream, root: ParamsEnum, parent: ref RootObj): ParamsEnum =
  result = new(ParamsEnum)
  let root = if root == nil: cast[ParamsEnum](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let one = 
  result.one = one
  let invokeWithParam = ParamsEnum_WithParam.read(io, result, root, one)
  result.invokeWithParam = invokeWithParam

proc fromFile*(_: typedesc[ParamsEnum], filename: string): ParamsEnum =
  ParamsEnum.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsEnumObj) =
  close(x.io)


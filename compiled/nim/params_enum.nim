import kaitai_struct_nim_runtime

type
  ParamsEnumwithParam* = ref ParamsEnumwithParamObj
  ParamsEnumwithParamObj* = object
    one*: Animal
    invokeWithParam*: WithParam
    io*: KaitaiStream
    root*: ParamsEnum
    parent*: ref RootObj
  ParamsEnum* = ref ParamsEnumObj
  ParamsEnumObj* = object
    one*: Animal
    invokeWithParam*: WithParam
    io*: KaitaiStream
    root*: ParamsEnum
    parent*: ref RootObj

### ParamsEnumwithParam ###
proc read*(_: typedesc[ParamsEnumwithParam], io: KaitaiStream, root: ParamsEnum, parent: ParamsEnum): ParamsEnumwithParam =
  result = new(ParamsEnumwithParam)
  let root = if root == nil: cast[ParamsEnum](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ParamsEnumwithParam], filename: string): ParamsEnumwithParam =
  ParamsEnumwithParam.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsEnumwithParamObj) =
  close(x.io)

### ParamsEnum ###
proc read*(_: typedesc[ParamsEnum], io: KaitaiStream, root: ParamsEnum, parent: ref RootObj): ParamsEnum =
  result = new(ParamsEnum)
  let root = if root == nil: cast[ParamsEnum](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.one = 
  result.invokeWithParam = WithParam.read(result.io, result, root, one)

proc fromFile*(_: typedesc[ParamsEnum], filename: string): ParamsEnum =
  ParamsEnum.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsEnumObj) =
  close(x.io)


import ../../runtime/nim/kaitai



type
  OpaqueWithParam* = ref OpaqueWithParamObj
  OpaqueWithParamObj* = object
    io: KaitaiStream
    root*: OpaqueWithParam
    parent*: ref RootObj
    one*: ParamsDef

# OpaqueWithParam
proc read*(_: typedesc[OpaqueWithParam], io: KaitaiStream, root: OpaqueWithParam, parent: ref RootObj): owned OpaqueWithParam =
  result = new(OpaqueWithParam)
  let root = if root == nil: cast[OpaqueWithParam](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.one = ParamsDef.read(io)

proc fromFile*(_: typedesc[OpaqueWithParam], filename: string): owned OpaqueWithParam =
  OpaqueWithParam.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var OpaqueWithParamObj) =
  close(x.io)


import kaitai_struct_nim_runtime

type
  OpaqueWithParam* = ref OpaqueWithParamObj
  OpaqueWithParamObj* = object
    one*: ParamsDef
    io*: KaitaiStream
    root*: OpaqueWithParam
    parent*: ref RootObj

### OpaqueWithParam ###
proc read*(_: typedesc[OpaqueWithParam], io: KaitaiStream, root: OpaqueWithParam, parent: ref RootObj): OpaqueWithParam =
  result = new(OpaqueWithParam)
  let root = if root == nil: cast[OpaqueWithParam](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.one = ParamsDef.read(result.io, 5, true)

proc fromFile*(_: typedesc[OpaqueWithParam], filename: string): OpaqueWithParam =
  OpaqueWithParam.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var OpaqueWithParamObj) =
  close(x.io)


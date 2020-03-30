import kaitai_struct_nim_runtime
import options

type
  OpaqueWithParam* = ref OpaqueWithParamObj
  OpaqueWithParamObj* = object
    one*: ParamsDef
    io*: KaitaiStream
    root*: OpaqueWithParam
    parent*: ref RootObj

### OpaqueWithParam ###
proc read*(_: typedesc[OpaqueWithParam], io: KaitaiStream, root: OpaqueWithParam, parent: ref RootObj): OpaqueWithParam =
  let this = new(OpaqueWithParam)
  let root = if root == nil: cast[OpaqueWithParam](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let one = ParamsDef.read(this.io, 5, true)
  this.one = one
  result = this

proc fromFile*(_: typedesc[OpaqueWithParam], filename: string): OpaqueWithParam =
  OpaqueWithParam.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var OpaqueWithParamObj) =
  close(x.io)


import kaitai_struct_nim_runtime
import encodings

type
  ParamsDef* = ref ParamsDefObj
  ParamsDefObj* = object
    buf*: string
    trailer*: uint8
    len*: uint32
    hasTrailer*: bool
    io*: KaitaiStream
    root*: ParamsDef
    parent*: ref RootObj

### ParamsDef ###
proc read*(_: typedesc[ParamsDef], io: KaitaiStream, root: ParamsDef, parent: ref RootObj): ParamsDef =
  result = new(ParamsDef)
  let root = if root == nil: cast[ParamsDef](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.buf = convert(result.io.readBytes(len), srcEncoding = "UTF-8")
  if hasTrailer:
    result.trailer = result.io.readU1()

proc fromFile*(_: typedesc[ParamsDef], filename: string): ParamsDef =
  ParamsDef.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsDefObj) =
  close(x.io)


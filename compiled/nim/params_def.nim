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
  let buf = convert(io.readBytes(int(len)), srcEncoding = "UTF-8")
  result.buf = buf
  if hasTrailer:
    let trailer = io.readU1()
    result.trailer = trailer

proc fromFile*(_: typedesc[ParamsDef], filename: string): ParamsDef =
  ParamsDef.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsDefObj) =
  close(x.io)


import kaitai_struct_nim_runtime
import options
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

## ParamsDef
proc read*(_: typedesc[ParamsDef], io: KaitaiStream, root: ParamsDef, parent: ref RootObj): ParamsDef =
  let this = new(ParamsDef)
  let root = if root == nil: cast[ParamsDef](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.buf = convert(this.io.readBytes(int(this.len)), srcEncoding = "UTF-8")
  if this.hasTrailer:
    this.trailer = this.io.readU1()
  result = this

proc fromFile*(_: typedesc[ParamsDef], filename: string): ParamsDef =
  ParamsDef.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsDefObj) =
  close(x.io)


import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ParamsDef* = ref object of KaitaiStruct
    buf*: string
    trailer*: uint8
    len*: uint32
    hasTrailer*: bool
    parent*: KaitaiStruct

proc read*(_: typedesc[ParamsDef], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct, len: any, hasTrailer: any): ParamsDef


proc read*(_: typedesc[ParamsDef], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct, len: any, hasTrailer: any): ParamsDef =
  template this: untyped = result
  this = new(ParamsDef)
  let root = if root == nil: cast[ParamsDef](this) else: cast[ParamsDef](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.buf = encode(this.io.readBytes(int(this.len)), "UTF-8")
  if this.hasTrailer:
    this.trailer = this.io.readU1()

proc fromFile*(_: typedesc[ParamsDef], filename: string): ParamsDef =
  ParamsDef.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  ParamsDef* = ref object of KaitaiStruct
    `buf`*: string
    `trailer`*: uint8
    `len`*: uint32
    `hasTrailer`*: bool
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ParamsDef], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct, len: any, hasTrailer: any): ParamsDef


proc read*(_: typedesc[ParamsDef], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct, len: any, hasTrailer: any): ParamsDef =
  template this: untyped = result
  this = new(ParamsDef)
  let root = if root == nil: cast[ParamsDef](this) else: cast[ParamsDef](root)
  this.io = io
  this.root = root
  this.parent = parent
  let lenExpr = uint32(len)
  this.len = lenExpr
  let hasTrailerExpr = bool(hasTrailer)
  this.hasTrailer = hasTrailerExpr

  let bufExpr = encode(this.io.readBytes(int(this.len)), "UTF-8")
  this.buf = bufExpr
  if this.hasTrailer:
    let trailerExpr = this.io.readU1()
    this.trailer = trailerExpr

proc fromFile*(_: typedesc[ParamsDef], filename: string): ParamsDef =
  ParamsDef.read(newKaitaiFileStream(filename), nil, nil)


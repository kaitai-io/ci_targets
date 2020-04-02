import kaitai_struct_nim_runtime
import options

import "params_def"
template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  OpaqueWithParam* = ref object of KaitaiStruct
    one*: ParamsDef
    parent*: KaitaiStruct

proc read*(_: typedesc[OpaqueWithParam], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): OpaqueWithParam

proc read*(_: typedesc[OpaqueWithParam], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): OpaqueWithParam =
  template this: untyped = result
  this = new(OpaqueWithParam)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = ParamsDef.read(this.io, this.root, this, 5, true)

proc fromFile*(_: typedesc[OpaqueWithParam], filename: string): OpaqueWithParam =
  OpaqueWithParam.read(newKaitaiFileStream(filename), nil, nil)


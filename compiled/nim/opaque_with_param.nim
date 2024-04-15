import kaitai_struct_nim_runtime
import options
import params_def

type
  OpaqueWithParam* = ref object of KaitaiStruct
    `one`*: ParamsDef
    `parent`*: KaitaiStruct

proc read*(_: typedesc[OpaqueWithParam], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): OpaqueWithParam


proc read*(_: typedesc[OpaqueWithParam], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): OpaqueWithParam =
  template this: untyped = result
  this = new(OpaqueWithParam)
  let root = if root == nil: cast[OpaqueWithParam](this) else: cast[OpaqueWithParam](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = ParamsDef.read(this.io, nil, nil, 5, true)
  this.one = oneExpr

proc fromFile*(_: typedesc[OpaqueWithParam], filename: string): OpaqueWithParam =
  OpaqueWithParam.read(newKaitaiFileStream(filename), nil, nil)


# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ParamsPassUsertype* = ref object
    first*: Block
    one*: ParamType
    root*: ParamsPassUsertype
    parent*: ref RootObj
ParamsPassUsertypeblock* = ref object
  foo*: uint8
  root*: ParamsPassUsertype
  parent*: ParamsPassUsertype
ParamsPassUsertypeparamType* = ref object
buf*: seq[byte]
root*: ParamsPassUsertype
parent*: ParamsPassUsertype

proc read*(_: typedesc[ParamsPassUsertype], stream: KaitaiStream, root: ParamsPassUsertype, parent: ref RootObj): owned ParamsPassUsertype =
result = new(ParamsPassUsertype)
let root = if root == nil: result else: root
result.first = readUserTypeInstream(List(block),None,List())(stream)
result.one = readUserTypeInstream(List(param_type),None,ArrayBuffer(Name(identifier(first))))(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[ParamsPassUsertype], filename: string): owned ParamsPassUsertype =
var stream = newKaitaiStream(filename)
ParamsPassUsertype.read(stream, nil, nil)

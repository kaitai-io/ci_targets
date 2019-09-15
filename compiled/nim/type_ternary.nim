# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  TypeTernary* = ref object
    difWoHack*: Dummy
    difWithHack*: Dummy
    root*: TypeTernary
    parent*: ref RootObj
    _raw_difWoHack*: seq[byte]
    _raw_difWithHack*: seq[byte]
    _raw__raw_difWithHack*: seq[byte]
TypeTernarydummy* = ref object
  value*: uint8
  root*: TypeTernary
  parent*: TypeTernary

proc read*(_: typedesc[TypeTernary], stream: KaitaiStream, root: TypeTernary, parent: ref RootObj): owned TypeTernary =
result = new(TypeTernary)
let root = if root == nil: result else: root
result.difWoHack = readUserTypeFromBytes(List(dummy),None,List(),BytesLimitType(IntNum(1),None,false,None,None),None)(stream)
result.difWithHack = readUserTypeFromBytes(List(dummy),None,List(),BytesLimitType(IntNum(1),None,false,None,Some(ProcessXor(IntNum(3)))),Some(ProcessXor(IntNum(3))))(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[TypeTernary], filename: string): owned TypeTernary =
var stream = newKaitaiStream(filename)
TypeTernary.read(stream, nil, nil)

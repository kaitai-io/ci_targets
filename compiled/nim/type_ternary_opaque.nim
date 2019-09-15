# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  TypeTernaryOpaque* = ref object
    difWoHack*: TermStrz
    difWithHack*: TermStrz
    root*: TypeTernaryOpaque
    parent*: ref RootObj
    _raw_difWoHack*: seq[byte]
    _raw_difWithHack*: seq[byte]
    _raw__raw_difWithHack*: seq[byte]

proc read*(_: typedesc[TypeTernaryOpaque], stream: KaitaiStream, root: TypeTernaryOpaque, parent: ref RootObj): owned TypeTernaryOpaque =
  result = new(TypeTernaryOpaque)
  let root = if root == nil: result else: root
  result.difWoHack = readUserTypeFromBytes(List(term_strz),None,List(),BytesLimitType(IntNum(12),None,false,None,None),None)(stream)
  result.difWithHack = readUserTypeFromBytes(List(term_strz),None,List(),BytesLimitType(IntNum(12),None,false,None,Some(ProcessXor(IntNum(3)))),Some(ProcessXor(IntNum(3))))(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[TypeTernaryOpaque], filename: string): owned TypeTernaryOpaque =
  var stream = newKaitaiStream(filename)
  TypeTernaryOpaque.read(stream, nil, nil)

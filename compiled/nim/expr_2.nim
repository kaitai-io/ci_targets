# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  Expr2* = ref object
    str1*: ModStr
    str2*: ModStr
    root*: Expr2
    parent*: ref RootObj
Expr2modStr* = ref object
  lenOrig*: uint16
  str*: string
  rest*: Tuple
  root*: Expr2
  parent*: Expr2
  _raw_rest*: seq[byte]
Expr2tuple* = ref object
byte0*: uint8
byte1*: uint8
byte2*: uint8
root*: Expr2
parent*: Expr2_ModStr

proc read*(_: typedesc[Expr2], stream: KaitaiStream, root: Expr2, parent: ref RootObj): owned Expr2 =
result = new(Expr2)
let root = if root == nil: result else: root
result.str1 = readUserTypeInstream(List(mod_str),None,List())(stream)
result.str2 = readUserTypeInstream(List(mod_str),None,List())(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[Expr2], filename: string): owned Expr2 =
var stream = newKaitaiStream(filename)
Expr2.read(stream, nil, nil)

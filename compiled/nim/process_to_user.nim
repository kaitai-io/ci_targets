# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  ProcessToUser* = ref object
    buf1*: JustStr
    root*: ProcessToUser
    parent*: ref RootObj
    _raw_buf1*: seq[byte]
    _raw__raw_buf1*: seq[byte]
ProcessToUserjustStr* = ref object
  str*: string
  root*: ProcessToUser
  parent*: ProcessToUser

proc read*(_: typedesc[ProcessToUser], stream: KaitaiStream, root: ProcessToUser, parent: ref RootObj): owned ProcessToUser =
result = new(ProcessToUser)
let root = if root == nil: result else: root
result.buf1 = readUserTypeFromBytes(List(just_str),None,List(),BytesLimitType(IntNum(5),None,false,None,Some(ProcessRotate(true,IntNum(3)))),Some(ProcessRotate(true,IntNum(3))))(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[ProcessToUser], filename: string): owned ProcessToUser =
var stream = newKaitaiStream(filename)
ProcessToUser.read(stream, nil, nil)

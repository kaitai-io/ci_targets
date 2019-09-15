# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  IfStruct* = ref object
    op1*: Operation
    op2*: Operation
    op3*: Operation
    root*: IfStruct
    parent*: ref RootObj
IfStructoperation* = ref object
  opcode*: uint8
  argTuple*: ArgTuple
  argStr*: ArgStr
  root*: IfStruct
  parent*: IfStruct
IfStructargTuple* = ref object
num1*: uint8
num2*: uint8
root*: IfStruct
parent*: IfStruct_Operation
IfStructargStr* = ref object
len*: uint8
str*: string
root*: IfStruct
parent*: IfStruct_Operation

proc read*(_: typedesc[IfStruct], stream: KaitaiStream, root: IfStruct, parent: ref RootObj): owned IfStruct =
result = new(IfStruct)
let root = if root == nil: result else: root
result.op1 = readUserTypeInstream(List(operation),None,List())(stream)
result.op2 = readUserTypeInstream(List(operation),None,List())(stream)
result.op3 = readUserTypeInstream(List(operation),None,List())(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[IfStruct], filename: string): owned IfStruct =
var stream = newKaitaiStream(filename)
IfStruct.read(stream, nil, nil)

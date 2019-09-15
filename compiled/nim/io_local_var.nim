# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  IoLocalVar* = ref object
    skip*: seq[byte]
    alwaysNull*: uint8
    followup*: uint8
    root*: IoLocalVar
    parent*: ref RootObj
    _raw_messUp*: seq[byte]
IoLocalVardummy* = ref object
  root*: IoLocalVar
  parent*: IoLocalVar

proc read*(_: typedesc[IoLocalVar], stream: KaitaiStream, root: IoLocalVar, parent: ref RootObj): owned IoLocalVar =
result = new(IoLocalVar)
let root = if root == nil: result else: root
result.skip = readBytesLimitType(IntNum(20),None,false,None,None)(stream)
result.alwaysNull = readU1(stream)
result.followup = readU1(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[IoLocalVar], filename: string): owned IoLocalVar =
var stream = newKaitaiStream(filename)
IoLocalVar.read(stream, nil, nil)

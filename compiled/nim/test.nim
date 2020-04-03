import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  Test* = ref object of KaitaiStruct
    seqBlock*: Test
    parent*: KaitaiStruct
  Test_MyType* = ref object of KaitaiStruct
    world*: int32
    repeatedThing*: seq[int32]
    repeatCount*: int32
    parent*: KaitaiStruct

proc read*(_: typedesc[Test], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Test
proc read*(_: typedesc[Test_MyType], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Test_MyType


proc read*(_: typedesc[Test], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Test =
  template this: untyped = result
  this = new(Test)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.seqBlock = Test.read(this.io, this.root, this)

proc fromFile*(_: typedesc[Test], filename: string): Test =
  Test.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[Test_MyType], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Test_MyType =
  template this: untyped = result
  this = new(Test_MyType)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.world = this.io.readS4be()
  this.repeatedThing = newSeqOfCap[int32](this.repeatCount)
  for i in 0 ..< this.repeatCount:
    this.repeatedThing.add(this.io.readS4be())

proc fromFile*(_: typedesc[Test_MyType], filename: string): Test_MyType =
  Test_MyType.read(newKaitaiFileStream(filename), nil, nil)


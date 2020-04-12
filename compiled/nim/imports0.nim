import kaitai_struct_nim_runtime
import options

import "hello_world"
template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  Imports0* = ref object of KaitaiStruct
    two*: uint8
    hw*: HelloWorld
    parent*: KaitaiStruct
    hwOneInst*: Option[uint8]

proc read*(_: typedesc[Imports0], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Imports0

proc hwOne*(this: Imports0): uint8

proc read*(_: typedesc[Imports0], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Imports0 =
  template this: untyped = result
  this = new(Imports0)
  let root = if root == nil: cast[Imports0](this) else: cast[Imports0](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.two = this.io.readU1()
  this.hw = HelloWorld.read(this.io, this.root, this)

proc hwOne(this: Imports0): uint8 = 
  if isSome(this.hwOneInst):
    return get(this.hwOneInst)
  this.hwOneInst = uint8(this.hw.one)
  if isSome(this.hwOneInst):
    return get(this.hwOneInst)

proc fromFile*(_: typedesc[Imports0], filename: string): Imports0 =
  Imports0.read(newKaitaiFileStream(filename), nil, nil)


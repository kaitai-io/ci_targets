import kaitai_struct_nim_runtime
import options
import hello_world

import "hello_world"
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

  let twoExpr = this.io.readU1()
  this.two = twoExpr
  let hwExpr = HelloWorld.read(this.io, this.root, this)
  this.hw = hwExpr

proc hwOne(this: Imports0): uint8 = 
  if isSome(this.hwOneInst):
    return get(this.hwOneInst)
  let hwOneInstExpr = uint8(this.hw.one)
  this.hwOneInst = hwOneInstExpr
  if isSome(this.hwOneInst):
    return get(this.hwOneInst)

proc fromFile*(_: typedesc[Imports0], filename: string): Imports0 =
  Imports0.read(newKaitaiFileStream(filename), nil, nil)


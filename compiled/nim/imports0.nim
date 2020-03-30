import kaitai_struct_nim_runtime
import options

type
  Imports0* = ref Imports0Obj
  Imports0Obj* = object
    two*: uint8
    hw*: HelloWorld
    io*: KaitaiStream
    root*: Imports0
    parent*: ref RootObj
    hwOneInst*: Option[uint8]

## Imports0
proc hwOne*(this: Imports0): uint8
proc hwOne(this: Imports0): uint8 = 
  if isSome(this.hwOneInst):
    return get(this.hwOneInst)
  this.hwOneInst = some(this.hw.one)
  return get(this.hwOneInst)

proc read*(_: typedesc[Imports0], io: KaitaiStream, root: Imports0, parent: ref RootObj): Imports0 =
  let this = new(Imports0)
  let root = if root == nil: cast[Imports0](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.two = this.io.readU1()
  this.hw = HelloWorld.read(this.io)
  result = this

proc fromFile*(_: typedesc[Imports0], filename: string): Imports0 =
  Imports0.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Imports0Obj) =
  close(x.io)


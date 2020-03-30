import kaitai_struct_nim_runtime
import options

type
  Imported1* = ref Imported1Obj
  Imported1Obj* = object
    one*: uint8
    two*: Imported2
    io*: KaitaiStream
    root*: Imported1
    parent*: ref RootObj

## Imported1
proc read*(_: typedesc[Imported1], io: KaitaiStream, root: Imported1, parent: ref RootObj): Imported1 =
  let this = new(Imported1)
  let root = if root == nil: cast[Imported1](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readU1()
  this.two = Imported2.read(this.io)
  result = this

proc fromFile*(_: typedesc[Imported1], filename: string): Imported1 =
  Imported1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Imported1Obj) =
  close(x.io)


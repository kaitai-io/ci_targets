import kaitai_struct_nim_runtime

type
  Imports0* = ref Imports0Obj
  Imports0Obj* = object
    two*: uint8
    hw*: HelloWorld
    io*: KaitaiStream
    root*: Imports0
    parent*: ref RootObj

### Imports0 ###
proc read*(_: typedesc[Imports0], io: KaitaiStream, root: Imports0, parent: ref RootObj): Imports0 =
  result = new(Imports0)
  let root = if root == nil: cast[Imports0](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.two = result.io.readU1()
  result.hw = HelloWorld.read(result.io)

proc fromFile*(_: typedesc[Imports0], filename: string): Imports0 =
  Imports0.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Imports0Obj) =
  close(x.io)


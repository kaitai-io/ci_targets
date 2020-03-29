import kaitai_struct_nim_runtime

type
  Imported1* = ref Imported1Obj
  Imported1Obj* = object
    one*: uint8
    two*: Imported2
    io*: KaitaiStream
    root*: Imported1
    parent*: ref RootObj

### Imported1 ###
proc read*(_: typedesc[Imported1], io: KaitaiStream, root: Imported1, parent: ref RootObj): Imported1 =
  result = new(Imported1)
  let root = if root == nil: cast[Imported1](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let one = io.readU1()
  result.one = one
  let two = Imported2.read(io)
  result.two = two

proc fromFile*(_: typedesc[Imported1], filename: string): Imported1 =
  Imported1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Imported1Obj) =
  close(x.io)


import kaitai_struct_nim_runtime

type
  Imported2* = ref Imported2Obj
  Imported2Obj* = object
    one*: uint8
    io*: KaitaiStream
    root*: Imported2
    parent*: ref RootObj

### Imported2 ###
proc read*(_: typedesc[Imported2], io: KaitaiStream, root: Imported2, parent: ref RootObj): Imported2 =
  result = new(Imported2)
  let root = if root == nil: cast[Imported2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let one = io.readU1()
  result.one = one

proc fromFile*(_: typedesc[Imported2], filename: string): Imported2 =
  Imported2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Imported2Obj) =
  close(x.io)


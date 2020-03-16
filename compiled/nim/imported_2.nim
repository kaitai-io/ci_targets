import ../../kaitai_struct_nim_runtime/kaitai_struct_nim_runtime



type
  Imported2* = ref Imported2Obj
  Imported2Obj* = object
    io: KaitaiStream
    root*: Imported2
    parent*: ref RootObj
    one*: uint8

# Imported2
proc read*(_: typedesc[Imported2], io: KaitaiStream, root: Imported2, parent: ref RootObj): owned Imported2 =
  result = new(Imported2)
  let root = if root == nil: cast[Imported2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let one = readU1(io)
  result.one = one


proc fromFile*(_: typedesc[Imported2], filename: string): owned Imported2 =
  Imported2.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var Imported2Obj) =
  close(x.io)


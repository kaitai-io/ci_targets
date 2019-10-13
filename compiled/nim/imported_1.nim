import ../../runtime/nim/kaitai



type
  Imported1* = ref Imported1Obj
  Imported1Obj* = object
    io: KaitaiStream
    root*: Imported1
    parent*: ref RootObj
    one*: uint8
    two*: Imported2

# Imported1
proc read*(_: typedesc[Imported1], io: KaitaiStream, root: Imported1, parent: ref RootObj): owned Imported1 =
  result = new(Imported1)
  let root = if root == nil: cast[Imported1](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let one = readU1(io)
  result.one = one
  let two = Imported2.read(io)
  result.two = two


proc fromFile*(_: typedesc[Imported1], filename: string): owned Imported1 =
  Imported1.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var Imported1Obj) =
  close(x.io)


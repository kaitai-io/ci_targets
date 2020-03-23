import kaitai_struct_nim_runtime

type
  Expr0* = ref Expr0Obj
  Expr0Obj* = object
    lenOf1*: uint16
    io*: KaitaiStream
    root*: Expr0
    parent*: ref RootObj

### Expr0 ###
proc read*(_: typedesc[Expr0], io: KaitaiStream, root: Expr0, parent: ref RootObj): Expr0 =
  result = new(Expr0)
  let root = if root == nil: cast[Expr0](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.lenOf1 = result.io.readU2le()

proc fromFile*(_: typedesc[Expr0], filename: string): Expr0 =
  Expr0.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Expr0Obj) =
  close(x.io)


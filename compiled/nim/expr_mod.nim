import kaitai_struct_nim_runtime

type
  ExprMod* = ref ExprModObj
  ExprModObj* = object
    intU*: uint32
    intS*: int32
    io*: KaitaiStream
    root*: ExprMod
    parent*: ref RootObj

### ExprMod ###
proc read*(_: typedesc[ExprMod], io: KaitaiStream, root: ExprMod, parent: ref RootObj): ExprMod =
  result = new(ExprMod)
  let root = if root == nil: cast[ExprMod](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.intU = result.io.readU4le()
  result.intS = result.io.readS4le()

proc fromFile*(_: typedesc[ExprMod], filename: string): ExprMod =
  ExprMod.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprModObj) =
  close(x.io)


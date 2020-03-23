import kaitai_struct_nim_runtime
import encodings

type
  Expr3* = ref Expr3Obj
  Expr3Obj* = object
    one*: uint8
    two*: string
    io*: KaitaiStream
    root*: Expr3
    parent*: ref RootObj

### Expr3 ###
proc read*(_: typedesc[Expr3], io: KaitaiStream, root: Expr3, parent: ref RootObj): Expr3 =
  result = new(Expr3)
  let root = if root == nil: cast[Expr3](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.one = result.io.readU1()
  result.two = convert(result.io.readBytes(3), srcEncoding = "ASCII")

proc fromFile*(_: typedesc[Expr3], filename: string): Expr3 =
  Expr3.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Expr3Obj) =
  close(x.io)


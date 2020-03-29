import kaitai_struct_nim_runtime
import encodings

type
  Expr1* = ref Expr1Obj
  Expr1Obj* = object
    lenOf1*: uint16
    str1*: string
    io*: KaitaiStream
    root*: Expr1
    parent*: ref RootObj

### Expr1 ###
proc read*(_: typedesc[Expr1], io: KaitaiStream, root: Expr1, parent: ref RootObj): Expr1 =
  result = new(Expr1)
  let root = if root == nil: cast[Expr1](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let lenOf1 = io.readU2le()
  result.lenOf1 = lenOf1
  let str1 = convert(io.readBytes(int(lenOf1Mod)), srcEncoding = "ASCII")
  result.str1 = str1

proc fromFile*(_: typedesc[Expr1], filename: string): Expr1 =
  Expr1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Expr1Obj) =
  close(x.io)


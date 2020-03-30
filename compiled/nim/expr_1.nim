import kaitai_struct_nim_runtime
import options
import encodings

type
  Expr1* = ref Expr1Obj
  Expr1Obj* = object
    lenOf1*: uint16
    str1*: string
    io*: KaitaiStream
    root*: Expr1
    parent*: ref RootObj
    lenOf1ModInst*: Option[int]
    str1LenInst*: Option[int]

### Expr1 ###
proc lenOf1Mod*(this: Expr1): int
proc str1Len*(this: Expr1): int
proc lenOf1Mod(this: Expr1): int = 
  if isSome(this.lenOf1ModInst):
    return get(this.lenOf1ModInst)
  let lenOf1ModInst = (this.lenOf1 - 2)
  this.lenOf1ModInst = some(lenOf1ModInst)
  return get(this.lenOf1ModInst)

proc str1Len(this: Expr1): int = 
  if isSome(this.str1LenInst):
    return get(this.str1LenInst)
  let str1LenInst = len(this.str1)
  this.str1LenInst = some(str1LenInst)
  return get(this.str1LenInst)

proc read*(_: typedesc[Expr1], io: KaitaiStream, root: Expr1, parent: ref RootObj): Expr1 =
  let this = new(Expr1)
  let root = if root == nil: cast[Expr1](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let lenOf1 = this.io.readU2le()
  this.lenOf1 = lenOf1
  let str1 = convert(this.io.readBytes(int(this.lenOf1Mod)), srcEncoding = "ASCII")
  this.str1 = str1
  result = this

proc fromFile*(_: typedesc[Expr1], filename: string): Expr1 =
  Expr1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Expr1Obj) =
  close(x.io)


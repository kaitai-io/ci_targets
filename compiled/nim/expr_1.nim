import kaitai_struct_nim_runtime
import options
import encodings

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  Expr1* = ref object of KaitaiStruct
    lenOf1*: uint16
    str1*: string
    parent*: KaitaiStruct
    lenOf1ModInst*: Option[int]
    str1LenInst*: Option[int]

proc read*(_: typedesc[Expr1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Expr1

proc lenOf1Mod*(this: Expr1): int
proc str1Len*(this: Expr1): int
proc read*(_: typedesc[Expr1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Expr1 =
  template this: untyped = result
  this = new(Expr1)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.lenOf1 = this.io.readU2le()
  this.str1 = convert(this.io.readBytes(int(this.lenOf1Mod)), srcEncoding = "ASCII")

proc lenOf1Mod(this: Expr1): int = 
  if isSome(this.lenOf1ModInst):
    return get(this.lenOf1ModInst)
  this.lenOf1ModInst = some((this.lenOf1 - 2))
  return get(this.lenOf1ModInst)

proc str1Len(this: Expr1): int = 
  if isSome(this.str1LenInst):
    return get(this.str1LenInst)
  this.str1LenInst = some(len(this.str1))
  return get(this.str1LenInst)

proc fromFile*(_: typedesc[Expr1], filename: string): Expr1 =
  Expr1.read(newKaitaiFileStream(filename), nil, nil)


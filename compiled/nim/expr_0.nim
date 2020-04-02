import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  Expr0* = ref object of KaitaiStruct
    lenOf1*: uint16
    parent*: KaitaiStruct
    mustBeF7Inst*: Option[int]
    mustBeAbc123Inst*: Option[string]

proc read*(_: typedesc[Expr0], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Expr0

proc mustBeF7*(this: Expr0): int
proc mustBeAbc123*(this: Expr0): string
proc read*(_: typedesc[Expr0], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Expr0 =
  template this: untyped = result
  this = new(Expr0)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.lenOf1 = this.io.readU2le()

proc mustBeF7(this: Expr0): int = 
  if isSome(this.mustBeF7Inst):
    return get(this.mustBeF7Inst)
  this.mustBeF7Inst = some((7 + 240))
  return get(this.mustBeF7Inst)

proc mustBeAbc123(this: Expr0): string = 
  if isSome(this.mustBeAbc123Inst):
    return get(this.mustBeAbc123Inst)
  this.mustBeAbc123Inst = some("abc" & "123")
  return get(this.mustBeAbc123Inst)

proc fromFile*(_: typedesc[Expr0], filename: string): Expr0 =
  Expr0.read(newKaitaiFileStream(filename), nil, nil)


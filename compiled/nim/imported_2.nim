import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  Imported2* = ref object of KaitaiStruct
    one*: uint8
    parent*: KaitaiStruct

proc read*(_: typedesc[Imported2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Imported2


proc read*(_: typedesc[Imported2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Imported2 =
  template this: untyped = result
  this = new(Imported2)
  let root = if root == nil: cast[Imported2](this) else: cast[Imported2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = this.io.readU1()
  this.one = oneExpr

proc fromFile*(_: typedesc[Imported2], filename: string): Imported2 =
  Imported2.read(newKaitaiFileStream(filename), nil, nil)


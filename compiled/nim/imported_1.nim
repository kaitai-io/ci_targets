import kaitai_struct_nim_runtime
import options
import imported_2

import "imported_2"
template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  Imported1* = ref object of KaitaiStruct
    one*: uint8
    two*: Imported2
    parent*: KaitaiStruct

proc read*(_: typedesc[Imported1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Imported1


proc read*(_: typedesc[Imported1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Imported1 =
  template this: untyped = result
  this = new(Imported1)
  let root = if root == nil: cast[Imported1](this) else: cast[Imported1](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = this.io.readU1()
  this.one = oneExpr
  let twoExpr = Imported2.read(this.io, this.root, this)
  this.two = twoExpr

proc fromFile*(_: typedesc[Imported1], filename: string): Imported1 =
  Imported1.read(newKaitaiFileStream(filename), nil, nil)


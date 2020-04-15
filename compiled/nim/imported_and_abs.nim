import kaitai_struct_nim_runtime
import options
import /imported_root

import "imported_root"
template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ImportedAndAbs* = ref object of KaitaiStruct
    one*: uint8
    two*: ImportedRoot
    parent*: KaitaiStruct

proc read*(_: typedesc[ImportedAndAbs], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportedAndAbs


proc read*(_: typedesc[ImportedAndAbs], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportedAndAbs =
  template this: untyped = result
  this = new(ImportedAndAbs)
  let root = if root == nil: cast[ImportedAndAbs](this) else: cast[ImportedAndAbs](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = this.io.readU1()
  this.one = oneExpr
  let twoExpr = ImportedRoot.read(this.io, this.root, this)
  this.two = twoExpr

proc fromFile*(_: typedesc[ImportedAndAbs], filename: string): ImportedAndAbs =
  ImportedAndAbs.read(newKaitaiFileStream(filename), nil, nil)


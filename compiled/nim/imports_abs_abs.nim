import kaitai_struct_nim_runtime
import options

import "imported_and_abs"
template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ImportsAbsAbs* = ref object of KaitaiStruct
    one*: uint8
    two*: ImportedAndAbs
    parent*: KaitaiStruct

proc read*(_: typedesc[ImportsAbsAbs], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsAbsAbs


proc read*(_: typedesc[ImportsAbsAbs], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsAbsAbs =
  template this: untyped = result
  this = new(ImportsAbsAbs)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readU1()
  this.two = ImportedAndAbs.read(this.io, this.root, this)

proc fromFile*(_: typedesc[ImportsAbsAbs], filename: string): ImportsAbsAbs =
  ImportsAbsAbs.read(newKaitaiFileStream(filename), nil, nil)


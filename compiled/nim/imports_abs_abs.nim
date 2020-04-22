import kaitai_struct_nim_runtime
import options
import /for_abs_imports/imported_and_abs

import "imported_and_abs"
type
  ImportsAbsAbs* = ref object of KaitaiStruct
    one*: uint8
    two*: ImportedAndAbs
    parent*: KaitaiStruct

proc read*(_: typedesc[ImportsAbsAbs], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsAbsAbs


proc read*(_: typedesc[ImportsAbsAbs], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsAbsAbs =
  template this: untyped = result
  this = new(ImportsAbsAbs)
  let root = if root == nil: cast[ImportsAbsAbs](this) else: cast[ImportsAbsAbs](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = this.io.readU1()
  this.one = oneExpr
  let twoExpr = ImportedAndAbs.read(this.io, this.root, this)
  this.two = twoExpr

proc fromFile*(_: typedesc[ImportsAbsAbs], filename: string): ImportsAbsAbs =
  ImportsAbsAbs.read(newKaitaiFileStream(filename), nil, nil)


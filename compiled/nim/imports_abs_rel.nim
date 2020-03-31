import kaitai_struct_nim_runtime
import options

import "imported_and_rel"
type
  ImportsAbsRel* = ref object of KaitaiStruct
    one*: uint8
    two*: ImportedAndRel
    parent*: KaitaiStruct

proc read*(_: typedesc[ImportsAbsRel], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsAbsRel =
  template this: untyped = result
  this = new(ImportsAbsRel)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.one = this.io.readU1()

  ##[
  ]##
  this.two = ImportedAndRel.read(this.io, this.root, this)

proc fromFile*(_: typedesc[ImportsAbsRel], filename: string): ImportsAbsRel =
  ImportsAbsRel.read(newKaitaiFileStream(filename), nil, nil)


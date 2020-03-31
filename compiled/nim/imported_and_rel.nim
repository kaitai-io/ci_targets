import kaitai_struct_nim_runtime
import options

import "imported_root"
type
  ImportedAndRel* = ref object of KaitaiStruct
    one*: uint8
    two*: ImportedRoot
    parent*: KaitaiStruct

proc read*(_: typedesc[ImportedAndRel], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportedAndRel =
  template this: untyped = result
  this = new(ImportedAndRel)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.one = this.io.readU1()

  ##[
  ]##
  this.two = ImportedRoot.read(this.io, this.root, this)

proc fromFile*(_: typedesc[ImportedAndRel], filename: string): ImportedAndRel =
  ImportedAndRel.read(newKaitaiFileStream(filename), nil, nil)


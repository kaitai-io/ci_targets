import kaitai_struct_nim_runtime
import options
import ../imported_root

import "imported_root"
type
  ImportedAndRel* = ref object of KaitaiStruct
    `one`*: uint8
    `two`*: ImportedRoot
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ImportedAndRel], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportedAndRel


proc read*(_: typedesc[ImportedAndRel], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportedAndRel =
  template this: untyped = result
  this = new(ImportedAndRel)
  let root = if root == nil: cast[ImportedAndRel](this) else: cast[ImportedAndRel](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = this.io.readU1()
  this.one = oneExpr
  let twoExpr = ImportedRoot.read(this.io, nil, nil)
  this.two = twoExpr

proc fromFile*(_: typedesc[ImportedAndRel], filename: string): ImportedAndRel =
  ImportedAndRel.read(newKaitaiFileStream(filename), nil, nil)


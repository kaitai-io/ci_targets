import kaitai_struct_nim_runtime
import options
import for_rel_imports/imported_1

import "imported_1"
type
  ImportsRel1* = ref object of KaitaiStruct
    `one`*: uint8
    `two`*: Imported1
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ImportsRel1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsRel1


proc read*(_: typedesc[ImportsRel1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsRel1 =
  template this: untyped = result
  this = new(ImportsRel1)
  let root = if root == nil: cast[ImportsRel1](this) else: cast[ImportsRel1](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = this.io.readU1()
  this.one = oneExpr
  let twoExpr = Imported1.read(this.io, this.root, this)
  this.two = twoExpr

proc fromFile*(_: typedesc[ImportsRel1], filename: string): ImportsRel1 =
  ImportsRel1.read(newKaitaiFileStream(filename), nil, nil)


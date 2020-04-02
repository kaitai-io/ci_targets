import kaitai_struct_nim_runtime
import options

import "imported_1"
template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ImportsRel1* = ref object of KaitaiStruct
    one*: uint8
    two*: Imported1
    parent*: KaitaiStruct

proc read*(_: typedesc[ImportsRel1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsRel1

proc read*(_: typedesc[ImportsRel1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsRel1 =
  template this: untyped = result
  this = new(ImportsRel1)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readU1()
  this.two = Imported1.read(this.io, this.root, this)

proc fromFile*(_: typedesc[ImportsRel1], filename: string): ImportsRel1 =
  ImportsRel1.read(newKaitaiFileStream(filename), nil, nil)


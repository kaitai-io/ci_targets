import kaitai_struct_nim_runtime
import options
import /common/vlq_base128_le

import "vlq_base128_le"
template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ImportsAbs* = ref object of KaitaiStruct
    len*: VlqBase128Le
    body*: string
    parent*: KaitaiStruct

proc read*(_: typedesc[ImportsAbs], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsAbs


proc read*(_: typedesc[ImportsAbs], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsAbs =
  template this: untyped = result
  this = new(ImportsAbs)
  let root = if root == nil: cast[ImportsAbs](this) else: cast[ImportsAbs](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.len = VlqBase128Le.read(this.io, this.root, this)
  this.body = this.io.readBytes(int(this.len.value))

proc fromFile*(_: typedesc[ImportsAbs], filename: string): ImportsAbs =
  ImportsAbs.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options
import /common/vlq_base128_le

import "vlq_base128_le"
type
  ImportsAbs* = ref object of KaitaiStruct
    `len`*: VlqBase128Le
    `body`*: seq[byte]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ImportsAbs], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsAbs


proc read*(_: typedesc[ImportsAbs], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsAbs =
  template this: untyped = result
  this = new(ImportsAbs)
  let root = if root == nil: cast[ImportsAbs](this) else: cast[ImportsAbs](root)
  this.io = io
  this.root = root
  this.parent = parent

  let lenExpr = VlqBase128Le.read(this.io, nil, nil)
  this.len = lenExpr
  let bodyExpr = this.io.readBytes(int(this.len.value))
  this.body = bodyExpr

proc fromFile*(_: typedesc[ImportsAbs], filename: string): ImportsAbs =
  ImportsAbs.read(newKaitaiFileStream(filename), nil, nil)


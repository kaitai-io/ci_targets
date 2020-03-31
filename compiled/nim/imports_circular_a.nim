import kaitai_struct_nim_runtime
import options

import "imports_circular_b"
type
  ImportsCircularA* = ref object of KaitaiStruct
    code*: uint8
    two*: ImportsCircularB
    parent*: KaitaiStruct

proc read*(_: typedesc[ImportsCircularA], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsCircularA =
  template this: untyped = result
  this = new(ImportsCircularA)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.code = this.io.readU1()

  ##[
  ]##
  this.two = ImportsCircularB.read(this.io, this.root, this)

proc fromFile*(_: typedesc[ImportsCircularA], filename: string): ImportsCircularA =
  ImportsCircularA.read(newKaitaiFileStream(filename), nil, nil)


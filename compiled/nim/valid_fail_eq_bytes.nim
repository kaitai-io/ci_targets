import kaitai_struct_nim_runtime
import options

type
  ValidFailEqBytes* = ref object of KaitaiStruct
    foo*: string
    parent*: KaitaiStruct

proc read*(_: typedesc[ValidFailEqBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailEqBytes =
  template this: untyped = result
  this = new(ValidFailEqBytes)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.foo = this.io.readBytes(int(2))

proc fromFile*(_: typedesc[ValidFailEqBytes], filename: string): ValidFailEqBytes =
  ValidFailEqBytes.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  ValidFailEqBytes* = ref object of KaitaiStruct
    foo*: seq[byte]
    parent*: KaitaiStruct

proc read*(_: typedesc[ValidFailEqBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailEqBytes


proc read*(_: typedesc[ValidFailEqBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailEqBytes =
  template this: untyped = result
  this = new(ValidFailEqBytes)
  let root = if root == nil: cast[ValidFailEqBytes](this) else: cast[ValidFailEqBytes](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = this.io.readBytes(int(2))
  this.foo = fooExpr

proc fromFile*(_: typedesc[ValidFailEqBytes], filename: string): ValidFailEqBytes =
  ValidFailEqBytes.read(newKaitaiFileStream(filename), nil, nil)


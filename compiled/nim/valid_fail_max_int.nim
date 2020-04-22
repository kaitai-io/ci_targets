import kaitai_struct_nim_runtime
import options

type
  ValidFailMaxInt* = ref object of KaitaiStruct
    foo*: uint8
    parent*: KaitaiStruct

proc read*(_: typedesc[ValidFailMaxInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailMaxInt


proc read*(_: typedesc[ValidFailMaxInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailMaxInt =
  template this: untyped = result
  this = new(ValidFailMaxInt)
  let root = if root == nil: cast[ValidFailMaxInt](this) else: cast[ValidFailMaxInt](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = this.io.readU1()
  this.foo = fooExpr

proc fromFile*(_: typedesc[ValidFailMaxInt], filename: string): ValidFailMaxInt =
  ValidFailMaxInt.read(newKaitaiFileStream(filename), nil, nil)


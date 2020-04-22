import kaitai_struct_nim_runtime
import options

type
  ValidFailRangeInt* = ref object of KaitaiStruct
    foo*: uint8
    parent*: KaitaiStruct

proc read*(_: typedesc[ValidFailRangeInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRangeInt


proc read*(_: typedesc[ValidFailRangeInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRangeInt =
  template this: untyped = result
  this = new(ValidFailRangeInt)
  let root = if root == nil: cast[ValidFailRangeInt](this) else: cast[ValidFailRangeInt](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = this.io.readU1()
  this.foo = fooExpr

proc fromFile*(_: typedesc[ValidFailRangeInt], filename: string): ValidFailRangeInt =
  ValidFailRangeInt.read(newKaitaiFileStream(filename), nil, nil)


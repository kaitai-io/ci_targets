import kaitai_struct_nim_runtime
import options

type
  ValidFailMinInt* = ref object of KaitaiStruct
    `foo`*: uint8
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ValidFailMinInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailMinInt


proc read*(_: typedesc[ValidFailMinInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailMinInt =
  template this: untyped = result
  this = new(ValidFailMinInt)
  let root = if root == nil: cast[ValidFailMinInt](this) else: cast[ValidFailMinInt](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = this.io.readU1()
  this.foo = fooExpr

proc fromFile*(_: typedesc[ValidFailMinInt], filename: string): ValidFailMinInt =
  ValidFailMinInt.read(newKaitaiFileStream(filename), nil, nil)


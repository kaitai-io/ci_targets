import kaitai_struct_nim_runtime
import options

type
  ValidFailAnyofInt* = ref object of KaitaiStruct
    `foo`*: uint8
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ValidFailAnyofInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailAnyofInt


proc read*(_: typedesc[ValidFailAnyofInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailAnyofInt =
  template this: untyped = result
  this = new(ValidFailAnyofInt)
  let root = if root == nil: cast[ValidFailAnyofInt](this) else: cast[ValidFailAnyofInt](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = this.io.readU1()
  this.foo = fooExpr

proc fromFile*(_: typedesc[ValidFailAnyofInt], filename: string): ValidFailAnyofInt =
  ValidFailAnyofInt.read(newKaitaiFileStream(filename), nil, nil)


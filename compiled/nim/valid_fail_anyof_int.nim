import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ValidFailAnyofInt* = ref object of KaitaiStruct
    foo*: uint8
    parent*: KaitaiStruct

proc read*(_: typedesc[ValidFailAnyofInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailAnyofInt


proc read*(_: typedesc[ValidFailAnyofInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailAnyofInt =
  template this: untyped = result
  this = new(ValidFailAnyofInt)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.foo = this.io.readU1()

proc fromFile*(_: typedesc[ValidFailAnyofInt], filename: string): ValidFailAnyofInt =
  ValidFailAnyofInt.read(newKaitaiFileStream(filename), nil, nil)


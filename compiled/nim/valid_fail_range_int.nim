import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ValidFailRangeInt* = ref object of KaitaiStruct
    foo*: uint8
    parent*: KaitaiStruct

proc read*(_: typedesc[ValidFailRangeInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRangeInt

proc read*(_: typedesc[ValidFailRangeInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRangeInt =
  template this: untyped = result
  this = new(ValidFailRangeInt)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.foo = this.io.readU1()

proc fromFile*(_: typedesc[ValidFailRangeInt], filename: string): ValidFailRangeInt =
  ValidFailRangeInt.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ValidFailRangeFloat* = ref object of KaitaiStruct
    foo*: float32
    parent*: KaitaiStruct

proc read*(_: typedesc[ValidFailRangeFloat], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRangeFloat


proc read*(_: typedesc[ValidFailRangeFloat], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRangeFloat =
  template this: untyped = result
  this = new(ValidFailRangeFloat)
  let root = if root == nil: cast[ValidFailRangeFloat](this) else: cast[ValidFailRangeFloat](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.foo = this.io.readF4le()

proc fromFile*(_: typedesc[ValidFailRangeFloat], filename: string): ValidFailRangeFloat =
  ValidFailRangeFloat.read(newKaitaiFileStream(filename), nil, nil)


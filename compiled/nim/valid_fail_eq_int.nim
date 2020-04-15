import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ValidFailEqInt* = ref object of KaitaiStruct
    foo*: uint8
    parent*: KaitaiStruct

proc read*(_: typedesc[ValidFailEqInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailEqInt


proc read*(_: typedesc[ValidFailEqInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailEqInt =
  template this: untyped = result
  this = new(ValidFailEqInt)
  let root = if root == nil: cast[ValidFailEqInt](this) else: cast[ValidFailEqInt](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = this.io.readU1()
  this.foo = fooExpr

proc fromFile*(_: typedesc[ValidFailEqInt], filename: string): ValidFailEqInt =
  ValidFailEqInt.read(newKaitaiFileStream(filename), nil, nil)


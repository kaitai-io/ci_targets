import kaitai_struct_nim_runtime
import options

type
  ValidFailEqStr* = ref object of KaitaiStruct
    `foo`*: string
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ValidFailEqStr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailEqStr


proc read*(_: typedesc[ValidFailEqStr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailEqStr =
  template this: untyped = result
  this = new(ValidFailEqStr)
  let root = if root == nil: cast[ValidFailEqStr](this) else: cast[ValidFailEqStr](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = encode(this.io.readBytes(int(4)), "ASCII")
  this.foo = fooExpr

proc fromFile*(_: typedesc[ValidFailEqStr], filename: string): ValidFailEqStr =
  ValidFailEqStr.read(newKaitaiFileStream(filename), nil, nil)


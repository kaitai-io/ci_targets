import kaitai_struct_nim_runtime
import options

type
  ValidFailExpr* = ref object of KaitaiStruct
    `foo`*: uint8
    `bar`*: int16
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ValidFailExpr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailExpr


proc read*(_: typedesc[ValidFailExpr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailExpr =
  template this: untyped = result
  this = new(ValidFailExpr)
  let root = if root == nil: cast[ValidFailExpr](this) else: cast[ValidFailExpr](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = this.io.readU1()
  this.foo = fooExpr
  let barExpr = this.io.readS2le()
  this.bar = barExpr

proc fromFile*(_: typedesc[ValidFailExpr], filename: string): ValidFailExpr =
  ValidFailExpr.read(newKaitaiFileStream(filename), nil, nil)


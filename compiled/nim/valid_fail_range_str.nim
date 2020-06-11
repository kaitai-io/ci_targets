import kaitai_struct_nim_runtime
import options

type
  ValidFailRangeStr* = ref object of KaitaiStruct
    `foo`*: string
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ValidFailRangeStr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRangeStr


proc read*(_: typedesc[ValidFailRangeStr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRangeStr =
  template this: untyped = result
  this = new(ValidFailRangeStr)
  let root = if root == nil: cast[ValidFailRangeStr](this) else: cast[ValidFailRangeStr](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = encode(this.io.readBytes(int(2)), "ASCII")
  this.foo = fooExpr

proc fromFile*(_: typedesc[ValidFailRangeStr], filename: string): ValidFailRangeStr =
  ValidFailRangeStr.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  ValidFailRangeBytes* = ref object of KaitaiStruct
    `foo`*: seq[byte]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ValidFailRangeBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRangeBytes


proc read*(_: typedesc[ValidFailRangeBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRangeBytes =
  template this: untyped = result
  this = new(ValidFailRangeBytes)
  let root = if root == nil: cast[ValidFailRangeBytes](this) else: cast[ValidFailRangeBytes](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = this.io.readBytes(int(2))
  this.foo = fooExpr

proc fromFile*(_: typedesc[ValidFailRangeBytes], filename: string): ValidFailRangeBytes =
  ValidFailRangeBytes.read(newKaitaiFileStream(filename), nil, nil)


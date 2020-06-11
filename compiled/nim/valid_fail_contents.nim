import kaitai_struct_nim_runtime
import options

type
  ValidFailContents* = ref object of KaitaiStruct
    `foo`*: seq[byte]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ValidFailContents], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailContents


proc read*(_: typedesc[ValidFailContents], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailContents =
  template this: untyped = result
  this = new(ValidFailContents)
  let root = if root == nil: cast[ValidFailContents](this) else: cast[ValidFailContents](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = this.io.readBytes(int(2))
  this.foo = fooExpr

proc fromFile*(_: typedesc[ValidFailContents], filename: string): ValidFailContents =
  ValidFailContents.read(newKaitaiFileStream(filename), nil, nil)


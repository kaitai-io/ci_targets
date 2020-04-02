import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ValidFailContents* = ref object of KaitaiStruct
    foo*: string
    parent*: KaitaiStruct

proc read*(_: typedesc[ValidFailContents], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailContents

proc read*(_: typedesc[ValidFailContents], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailContents =
  template this: untyped = result
  this = new(ValidFailContents)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.foo = this.io.readBytes(int(2))

proc fromFile*(_: typedesc[ValidFailContents], filename: string): ValidFailContents =
  ValidFailContents.read(newKaitaiFileStream(filename), nil, nil)


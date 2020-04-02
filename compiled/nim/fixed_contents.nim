import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  FixedContents* = ref object of KaitaiStruct
    normal*: string
    highBit8*: string
    parent*: KaitaiStruct

proc read*(_: typedesc[FixedContents], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): FixedContents

proc read*(_: typedesc[FixedContents], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): FixedContents =
  template this: untyped = result
  this = new(FixedContents)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.normal = this.io.readBytes(int(6))
  this.highBit8 = this.io.readBytes(int(2))

proc fromFile*(_: typedesc[FixedContents], filename: string): FixedContents =
  FixedContents.read(newKaitaiFileStream(filename), nil, nil)


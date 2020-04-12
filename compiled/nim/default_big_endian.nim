import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  DefaultBigEndian* = ref object of KaitaiStruct
    one*: uint32
    parent*: KaitaiStruct

proc read*(_: typedesc[DefaultBigEndian], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DefaultBigEndian


proc read*(_: typedesc[DefaultBigEndian], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DefaultBigEndian =
  template this: untyped = result
  this = new(DefaultBigEndian)
  let root = if root == nil: cast[DefaultBigEndian](this) else: cast[DefaultBigEndian](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readU4be()

proc fromFile*(_: typedesc[DefaultBigEndian], filename: string): DefaultBigEndian =
  DefaultBigEndian.read(newKaitaiFileStream(filename), nil, nil)


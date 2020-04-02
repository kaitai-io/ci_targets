import kaitai_struct_nim_runtime
import options
import encodings

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ParamsCallExtraParens* = ref object of KaitaiStruct
    buf1*: ParamsCallExtraParens_MyStr1
    parent*: KaitaiStruct
  ParamsCallExtraParens_MyStr1* = ref object of KaitaiStruct
    body*: string
    len*: uint32
    parent*: ParamsCallExtraParens

proc read*(_: typedesc[ParamsCallExtraParens], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsCallExtraParens
proc read*(_: typedesc[ParamsCallExtraParens_MyStr1], io: KaitaiStream, root: KaitaiStruct, parent: ParamsCallExtraParens): ParamsCallExtraParens_MyStr1

proc read*(_: typedesc[ParamsCallExtraParens], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsCallExtraParens =
  template this: untyped = result
  this = new(ParamsCallExtraParens)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.buf1 = ParamsCallExtraParens_MyStr1.read(this.io, this.root, this, 5)

proc fromFile*(_: typedesc[ParamsCallExtraParens], filename: string): ParamsCallExtraParens =
  ParamsCallExtraParens.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsCallExtraParens_MyStr1], io: KaitaiStream, root: KaitaiStruct, parent: ParamsCallExtraParens): ParamsCallExtraParens_MyStr1 =
  template this: untyped = result
  this = new(ParamsCallExtraParens_MyStr1)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.body = convert(this.io.readBytes(int(this.len)), srcEncoding = "UTF-8")

proc fromFile*(_: typedesc[ParamsCallExtraParens_MyStr1], filename: string): ParamsCallExtraParens_MyStr1 =
  ParamsCallExtraParens_MyStr1.read(newKaitaiFileStream(filename), nil, nil)


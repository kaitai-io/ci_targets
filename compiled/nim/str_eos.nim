import kaitai_struct_nim_runtime
import options

type
  StrEos* = ref object of KaitaiStruct
    `str`*: string
    `parent`*: KaitaiStruct

proc read*(_: typedesc[StrEos], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrEos


proc read*(_: typedesc[StrEos], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrEos =
  template this: untyped = result
  this = new(StrEos)
  let root = if root == nil: cast[StrEos](this) else: cast[StrEos](root)
  this.io = io
  this.root = root
  this.parent = parent

  let strExpr = encode(this.io.readBytesFull(), "UTF-8")
  this.str = strExpr

proc fromFile*(_: typedesc[StrEos], filename: string): StrEos =
  StrEos.read(newKaitaiFileStream(filename), nil, nil)


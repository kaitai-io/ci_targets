import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  MetaXref* = ref object of KaitaiStruct
    parent*: KaitaiStruct

proc read*(_: typedesc[MetaXref], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): MetaXref


proc read*(_: typedesc[MetaXref], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): MetaXref =
  template this: untyped = result
  this = new(MetaXref)
  let root = if root == nil: cast[MetaXref](this) else: cast[MetaXref](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[MetaXref], filename: string): MetaXref =
  MetaXref.read(newKaitaiFileStream(filename), nil, nil)


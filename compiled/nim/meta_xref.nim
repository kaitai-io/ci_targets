import kaitai_struct_nim_runtime
import options

type
  MetaXref* = ref object of KaitaiStruct
    parent*: KaitaiStruct

proc read*(_: typedesc[MetaXref], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): MetaXref =
  template this: untyped = result
  this = new(MetaXref)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[MetaXref], filename: string): MetaXref =
  MetaXref.read(newKaitaiFileStream(filename), nil, nil)


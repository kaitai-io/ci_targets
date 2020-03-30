import kaitai_struct_nim_runtime
import options

type
  MetaXref* = ref MetaXrefObj
  MetaXrefObj* = object
    io*: KaitaiStream
    root*: MetaXref
    parent*: ref RootObj

## MetaXref
proc read*(_: typedesc[MetaXref], io: KaitaiStream, root: MetaXref, parent: ref RootObj): MetaXref =
  let this = new(MetaXref)
  let root = if root == nil: cast[MetaXref](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[MetaXref], filename: string): MetaXref =
  MetaXref.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var MetaXrefObj) =
  close(x.io)


import ../../../runtime/nim/kaitai_struct_nim_runtime



type
  MetaXref* = ref MetaXrefObj
  MetaXrefObj* = object
    io: KaitaiStream
    root*: MetaXref
    parent*: ref RootObj

# MetaXref
proc read*(_: typedesc[MetaXref], io: KaitaiStream, root: MetaXref, parent: ref RootObj): owned MetaXref =
  result = new(MetaXref)
  let root = if root == nil: cast[MetaXref](result) else: root
  result.io = io
  result.root = root
  result.parent = parent



proc fromFile*(_: typedesc[MetaXref], filename: string): owned MetaXref =
  MetaXref.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var MetaXrefObj) =
  close(x.io)


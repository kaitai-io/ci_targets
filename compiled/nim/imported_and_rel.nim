import kaitai_struct_nim_runtime

type
  ImportedAndRel* = ref ImportedAndRelObj
  ImportedAndRelObj* = object
    one*: uint8
    two*: ImportedRoot
    io*: KaitaiStream
    root*: ImportedAndRel
    parent*: ref RootObj

### ImportedAndRel ###
proc read*(_: typedesc[ImportedAndRel], io: KaitaiStream, root: ImportedAndRel, parent: ref RootObj): ImportedAndRel =
  result = new(ImportedAndRel)
  let root = if root == nil: cast[ImportedAndRel](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.one = result.io.readU1()
  result.two = ImportedRoot.read(result.io)

proc fromFile*(_: typedesc[ImportedAndRel], filename: string): ImportedAndRel =
  ImportedAndRel.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ImportedAndRelObj) =
  close(x.io)


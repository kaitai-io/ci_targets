import kaitai_struct_nim_runtime

type
  ImportsAbsRel* = ref ImportsAbsRelObj
  ImportsAbsRelObj* = object
    one*: uint8
    two*: ImportedAndRel
    io*: KaitaiStream
    root*: ImportsAbsRel
    parent*: ref RootObj

### ImportsAbsRel ###
proc read*(_: typedesc[ImportsAbsRel], io: KaitaiStream, root: ImportsAbsRel, parent: ref RootObj): ImportsAbsRel =
  result = new(ImportsAbsRel)
  let root = if root == nil: cast[ImportsAbsRel](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.one = result.io.readU1()
  result.two = ImportedAndRel.read(result.io)

proc fromFile*(_: typedesc[ImportsAbsRel], filename: string): ImportsAbsRel =
  ImportsAbsRel.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ImportsAbsRelObj) =
  close(x.io)


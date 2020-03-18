import kaitai_struct_nim_runtime



type
  ImportedAndRel* = ref ImportedAndRelObj
  ImportedAndRelObj* = object
    io: KaitaiStream
    root*: ImportedAndRel
    parent*: ref RootObj
    one*: uint8
    two*: ImportedRoot

# ImportedAndRel
proc read*(_: typedesc[ImportedAndRel], io: KaitaiStream, root: ImportedAndRel, parent: ref RootObj): owned ImportedAndRel =
  result = new(ImportedAndRel)
  let root = if root == nil: cast[ImportedAndRel](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let one = readU1(io)
  result.one = one
  let two = ImportedRoot.read(io)
  result.two = two


proc fromFile*(_: typedesc[ImportedAndRel], filename: string): owned ImportedAndRel =
  ImportedAndRel.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ImportedAndRelObj) =
  close(x.io)


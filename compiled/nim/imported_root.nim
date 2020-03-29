import kaitai_struct_nim_runtime

type
  ImportedRoot* = ref ImportedRootObj
  ImportedRootObj* = object
    one*: uint8
    io*: KaitaiStream
    root*: ImportedRoot
    parent*: ref RootObj

### ImportedRoot ###
proc read*(_: typedesc[ImportedRoot], io: KaitaiStream, root: ImportedRoot, parent: ref RootObj): ImportedRoot =
  result = new(ImportedRoot)
  let root = if root == nil: cast[ImportedRoot](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let one = io.readU1()
  result.one = one

proc fromFile*(_: typedesc[ImportedRoot], filename: string): ImportedRoot =
  ImportedRoot.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ImportedRootObj) =
  close(x.io)


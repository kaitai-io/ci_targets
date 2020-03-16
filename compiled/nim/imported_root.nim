import ../../../runtime/nim/kaitai_struct_nim_runtime



type
  ImportedRoot* = ref ImportedRootObj
  ImportedRootObj* = object
    io: KaitaiStream
    root*: ImportedRoot
    parent*: ref RootObj
    one*: uint8

# ImportedRoot
proc read*(_: typedesc[ImportedRoot], io: KaitaiStream, root: ImportedRoot, parent: ref RootObj): owned ImportedRoot =
  result = new(ImportedRoot)
  let root = if root == nil: cast[ImportedRoot](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let one = readU1(io)
  result.one = one


proc fromFile*(_: typedesc[ImportedRoot], filename: string): owned ImportedRoot =
  ImportedRoot.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ImportedRootObj) =
  close(x.io)


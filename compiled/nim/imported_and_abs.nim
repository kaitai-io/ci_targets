import kaitai_struct_nim_runtime

type
  ImportedAndAbs* = ref ImportedAndAbsObj
  ImportedAndAbsObj* = object
    one*: uint8
    two*: ImportedRoot
    io*: KaitaiStream
    root*: ImportedAndAbs
    parent*: ref RootObj

### ImportedAndAbs ###
proc read*(_: typedesc[ImportedAndAbs], io: KaitaiStream, root: ImportedAndAbs, parent: ref RootObj): ImportedAndAbs =
  result = new(ImportedAndAbs)
  let root = if root == nil: cast[ImportedAndAbs](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.one = result.io.readU1()
  result.two = ImportedRoot.read(result.io)

proc fromFile*(_: typedesc[ImportedAndAbs], filename: string): ImportedAndAbs =
  ImportedAndAbs.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ImportedAndAbsObj) =
  close(x.io)


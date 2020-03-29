import kaitai_struct_nim_runtime

type
  ImportsAbsAbs* = ref ImportsAbsAbsObj
  ImportsAbsAbsObj* = object
    one*: uint8
    two*: ImportedAndAbs
    io*: KaitaiStream
    root*: ImportsAbsAbs
    parent*: ref RootObj

### ImportsAbsAbs ###
proc read*(_: typedesc[ImportsAbsAbs], io: KaitaiStream, root: ImportsAbsAbs, parent: ref RootObj): ImportsAbsAbs =
  result = new(ImportsAbsAbs)
  let root = if root == nil: cast[ImportsAbsAbs](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let one = io.readU1()
  result.one = one
  let two = ImportedAndAbs.read(io)
  result.two = two

proc fromFile*(_: typedesc[ImportsAbsAbs], filename: string): ImportsAbsAbs =
  ImportsAbsAbs.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ImportsAbsAbsObj) =
  close(x.io)


import ../../runtime/nim/kaitai



type
  ImportsAbsAbs* = ref ImportsAbsAbsObj
  ImportsAbsAbsObj* = object
    io: KaitaiStream
    root*: ImportsAbsAbs
    parent*: ref RootObj
    one*: uint8
    two*: ImportedAndAbs

# ImportsAbsAbs
proc read*(_: typedesc[ImportsAbsAbs], io: KaitaiStream, root: ImportsAbsAbs, parent: ref RootObj): owned ImportsAbsAbs =
  result = new(ImportsAbsAbs)
  let root = if root == nil: cast[ImportsAbsAbs](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.one = readU1(io)
  result.two = ImportedAndAbs.read(io)


proc fromFile*(_: typedesc[ImportsAbsAbs], filename: string): owned ImportsAbsAbs =
  ImportsAbsAbs.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ImportsAbsAbsObj) =
  close(x.io)


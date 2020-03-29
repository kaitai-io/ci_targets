import kaitai_struct_nim_runtime

type
  Docstrings_ComplexSubtype* = ref Docstrings_ComplexSubtypeObj
  Docstrings_ComplexSubtypeObj* = object
    io*: KaitaiStream
    root*: Docstrings
    parent*: ref RootObj
  Docstrings* = ref DocstringsObj
  DocstringsObj* = object
    one*: uint8
    io*: KaitaiStream
    root*: Docstrings
    parent*: ref RootObj

### Docstrings_ComplexSubtype ###
proc read*(_: typedesc[Docstrings_ComplexSubtype], io: KaitaiStream, root: Docstrings, parent: ref RootObj): Docstrings_ComplexSubtype =
  result = new(Docstrings_ComplexSubtype)
  let root = if root == nil: cast[Docstrings](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Docstrings_ComplexSubtype], filename: string): Docstrings_ComplexSubtype =
  Docstrings_ComplexSubtype.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Docstrings_ComplexSubtypeObj) =
  close(x.io)

### Docstrings ###
proc read*(_: typedesc[Docstrings], io: KaitaiStream, root: Docstrings, parent: ref RootObj): Docstrings =
  result = new(Docstrings)
  let root = if root == nil: cast[Docstrings](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let one = io.readU1()
  result.one = one

proc fromFile*(_: typedesc[Docstrings], filename: string): Docstrings =
  Docstrings.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DocstringsObj) =
  close(x.io)


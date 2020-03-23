import kaitai_struct_nim_runtime

type
  DocstringscomplexSubtype* = ref DocstringscomplexSubtypeObj
  DocstringscomplexSubtypeObj* = object
    one*: uint8
    io*: KaitaiStream
    root*: Docstrings
    parent*: ref RootObj
  Docstrings* = ref DocstringsObj
  DocstringsObj* = object
    one*: uint8
    io*: KaitaiStream
    root*: Docstrings
    parent*: ref RootObj

### DocstringscomplexSubtype ###
proc read*(_: typedesc[DocstringscomplexSubtype], io: KaitaiStream, root: Docstrings, parent: ref RootObj): DocstringscomplexSubtype =
  result = new(DocstringscomplexSubtype)
  let root = if root == nil: cast[Docstrings](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[DocstringscomplexSubtype], filename: string): DocstringscomplexSubtype =
  DocstringscomplexSubtype.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DocstringscomplexSubtypeObj) =
  close(x.io)

### Docstrings ###
proc read*(_: typedesc[Docstrings], io: KaitaiStream, root: Docstrings, parent: ref RootObj): Docstrings =
  result = new(Docstrings)
  let root = if root == nil: cast[Docstrings](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.one = result.io.readU1()

proc fromFile*(_: typedesc[Docstrings], filename: string): Docstrings =
  Docstrings.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DocstringsObj) =
  close(x.io)


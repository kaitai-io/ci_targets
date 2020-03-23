import kaitai_struct_nim_runtime

type
  DocstringsDocref* = ref DocstringsDocrefObj
  DocstringsDocrefObj* = object
    one*: uint8
    two*: uint8
    three*: uint8
    io*: KaitaiStream
    root*: DocstringsDocref
    parent*: ref RootObj

### DocstringsDocref ###
proc read*(_: typedesc[DocstringsDocref], io: KaitaiStream, root: DocstringsDocref, parent: ref RootObj): DocstringsDocref =
  result = new(DocstringsDocref)
  let root = if root == nil: cast[DocstringsDocref](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.one = result.io.readU1()
  result.two = result.io.readU1()
  result.three = result.io.readU1()

proc fromFile*(_: typedesc[DocstringsDocref], filename: string): DocstringsDocref =
  DocstringsDocref.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DocstringsDocrefObj) =
  close(x.io)


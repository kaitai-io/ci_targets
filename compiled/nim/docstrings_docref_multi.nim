import kaitai_struct_nim_runtime

type
  DocstringsDocrefMulti* = ref DocstringsDocrefMultiObj
  DocstringsDocrefMultiObj* = object
    io*: KaitaiStream
    root*: DocstringsDocrefMulti
    parent*: ref RootObj

### DocstringsDocrefMulti ###
proc read*(_: typedesc[DocstringsDocrefMulti], io: KaitaiStream, root: DocstringsDocrefMulti, parent: ref RootObj): DocstringsDocrefMulti =
  result = new(DocstringsDocrefMulti)
  let root = if root == nil: cast[DocstringsDocrefMulti](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[DocstringsDocrefMulti], filename: string): DocstringsDocrefMulti =
  DocstringsDocrefMulti.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DocstringsDocrefMultiObj) =
  close(x.io)


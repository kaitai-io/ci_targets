import ../../runtime/nim/kaitai



type
  ImportsRel1* = ref ImportsRel1Obj
  ImportsRel1Obj* = object
    io: KaitaiStream
    root*: ImportsRel1
    parent*: ref RootObj
    one*: uint8
    two*: Imported1

# ImportsRel1
proc read*(_: typedesc[ImportsRel1], io: KaitaiStream, root: ImportsRel1, parent: ref RootObj): owned ImportsRel1 =
  result = new(ImportsRel1)
  let root = if root == nil: cast[ImportsRel1](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.one = readU1(io)
  result.two = Imported1.read(io)

proc fromFile*(_: typedesc[ImportsRel1], filename: string): owned ImportsRel1 =
  ImportsRel1.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ImportsRel1Obj) =
  close(x.io)


import kaitai_struct_nim_runtime

type
  DefaultBigEndian* = ref DefaultBigEndianObj
  DefaultBigEndianObj* = object
    one*: uint32
    io*: KaitaiStream
    root*: DefaultBigEndian
    parent*: ref RootObj

### DefaultBigEndian ###
proc read*(_: typedesc[DefaultBigEndian], io: KaitaiStream, root: DefaultBigEndian, parent: ref RootObj): DefaultBigEndian =
  result = new(DefaultBigEndian)
  let root = if root == nil: cast[DefaultBigEndian](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.one = result.io.readU4be()

proc fromFile*(_: typedesc[DefaultBigEndian], filename: string): DefaultBigEndian =
  DefaultBigEndian.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultBigEndianObj) =
  close(x.io)


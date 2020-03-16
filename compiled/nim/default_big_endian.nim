import ../../kaitai_struct_nim_runtime/kaitai_struct_nim_runtime



type
  DefaultBigEndian* = ref DefaultBigEndianObj
  DefaultBigEndianObj* = object
    io: KaitaiStream
    root*: DefaultBigEndian
    parent*: ref RootObj
    one*: uint32

# DefaultBigEndian
proc read*(_: typedesc[DefaultBigEndian], io: KaitaiStream, root: DefaultBigEndian, parent: ref RootObj): owned DefaultBigEndian =
  result = new(DefaultBigEndian)
  let root = if root == nil: cast[DefaultBigEndian](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let one = readU4be(io)
  result.one = one


proc fromFile*(_: typedesc[DefaultBigEndian], filename: string): owned DefaultBigEndian =
  DefaultBigEndian.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var DefaultBigEndianObj) =
  close(x.io)


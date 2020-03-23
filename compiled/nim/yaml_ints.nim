import kaitai_struct_nim_runtime

type
  YamlInts* = ref YamlIntsObj
  YamlIntsObj* = object
    io*: KaitaiStream
    root*: YamlInts
    parent*: ref RootObj

### YamlInts ###
proc read*(_: typedesc[YamlInts], io: KaitaiStream, root: YamlInts, parent: ref RootObj): YamlInts =
  result = new(YamlInts)
  let root = if root == nil: cast[YamlInts](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[YamlInts], filename: string): YamlInts =
  YamlInts.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var YamlIntsObj) =
  close(x.io)


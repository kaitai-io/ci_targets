import kaitai_struct_nim_runtime

type
  NonStandard* = ref NonStandardObj
  NonStandardObj* = object
    foo*: uint8
    bar*: uint32
    io*: KaitaiStream
    root*: NonStandard
    parent*: ref RootObj

### NonStandard ###
proc read*(_: typedesc[NonStandard], io: KaitaiStream, root: NonStandard, parent: ref RootObj): NonStandard =
  result = new(NonStandard)
  let root = if root == nil: cast[NonStandard](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.foo = result.io.readU1()
  result.bar = uint32(result.io.readU2le())
  result.bar = result.io.readU4le()

proc fromFile*(_: typedesc[NonStandard], filename: string): NonStandard =
  NonStandard.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NonStandardObj) =
  close(x.io)


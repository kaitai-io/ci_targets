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
  let foo = io.readU1()
  result.foo = foo
  let bar = uint32(io.readU2le())
  result.bar = bar
  let bar = io.readU4le()
  result.bar = bar

proc fromFile*(_: typedesc[NonStandard], filename: string): NonStandard =
  NonStandard.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NonStandardObj) =
  close(x.io)


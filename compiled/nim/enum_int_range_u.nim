import kaitai_struct_nim_runtime

type
  EnumIntRangeU* = ref EnumIntRangeUObj
  EnumIntRangeUObj* = object
    f1*: Constants
    f2*: Constants
    io*: KaitaiStream
    root*: EnumIntRangeU
    parent*: ref RootObj

### EnumIntRangeU ###
proc read*(_: typedesc[EnumIntRangeU], io: KaitaiStream, root: EnumIntRangeU, parent: ref RootObj): EnumIntRangeU =
  result = new(EnumIntRangeU)
  let root = if root == nil: cast[EnumIntRangeU](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let f1 = 
  result.f1 = f1
  let f2 = 
  result.f2 = f2

proc fromFile*(_: typedesc[EnumIntRangeU], filename: string): EnumIntRangeU =
  EnumIntRangeU.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumIntRangeUObj) =
  close(x.io)


import kaitai_struct_nim_runtime

type
  EnumLongRangeU* = ref EnumLongRangeUObj
  EnumLongRangeUObj* = object
    f1*: Constants
    f2*: Constants
    f3*: Constants
    f4*: Constants
    io*: KaitaiStream
    root*: EnumLongRangeU
    parent*: ref RootObj

### EnumLongRangeU ###
proc read*(_: typedesc[EnumLongRangeU], io: KaitaiStream, root: EnumLongRangeU, parent: ref RootObj): EnumLongRangeU =
  result = new(EnumLongRangeU)
  let root = if root == nil: cast[EnumLongRangeU](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let f1 = 
  result.f1 = f1
  let f2 = 
  result.f2 = f2
  let f3 = 
  result.f3 = f3
  let f4 = 
  result.f4 = f4

proc fromFile*(_: typedesc[EnumLongRangeU], filename: string): EnumLongRangeU =
  EnumLongRangeU.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumLongRangeUObj) =
  close(x.io)


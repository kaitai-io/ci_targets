import kaitai_struct_nim_runtime

type
  EnumNegative* = ref EnumNegativeObj
  EnumNegativeObj* = object
    f1*: Constants
    f2*: Constants
    io*: KaitaiStream
    root*: EnumNegative
    parent*: ref RootObj

### EnumNegative ###
proc read*(_: typedesc[EnumNegative], io: KaitaiStream, root: EnumNegative, parent: ref RootObj): EnumNegative =
  result = new(EnumNegative)
  let root = if root == nil: cast[EnumNegative](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.f1 = 
  result.f2 = 

proc fromFile*(_: typedesc[EnumNegative], filename: string): EnumNegative =
  EnumNegative.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumNegativeObj) =
  close(x.io)


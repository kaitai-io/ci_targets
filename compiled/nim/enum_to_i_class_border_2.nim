import kaitai_struct_nim_runtime

type
  EnumToIClassBorder2* = ref EnumToIClassBorder2Obj
  EnumToIClassBorder2Obj* = object
    parent*: EnumToIClassBorder1
    io*: KaitaiStream
    root*: EnumToIClassBorder2
    parent*: ref RootObj

### EnumToIClassBorder2 ###
proc read*(_: typedesc[EnumToIClassBorder2], io: KaitaiStream, root: EnumToIClassBorder2, parent: ref RootObj): EnumToIClassBorder2 =
  result = new(EnumToIClassBorder2)
  let root = if root == nil: cast[EnumToIClassBorder2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[EnumToIClassBorder2], filename: string): EnumToIClassBorder2 =
  EnumToIClassBorder2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumToIClassBorder2Obj) =
  close(x.io)


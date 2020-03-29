import kaitai_struct_nim_runtime

type
  EnumForUnknownId* = ref EnumForUnknownIdObj
  EnumForUnknownIdObj* = object
    one*: Animal
    io*: KaitaiStream
    root*: EnumForUnknownId
    parent*: ref RootObj

### EnumForUnknownId ###
proc read*(_: typedesc[EnumForUnknownId], io: KaitaiStream, root: EnumForUnknownId, parent: ref RootObj): EnumForUnknownId =
  result = new(EnumForUnknownId)
  let root = if root == nil: cast[EnumForUnknownId](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let one = 
  result.one = one

proc fromFile*(_: typedesc[EnumForUnknownId], filename: string): EnumForUnknownId =
  EnumForUnknownId.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumForUnknownIdObj) =
  close(x.io)


import kaitai_struct_nim_runtime

type
  EnumInvalid* = ref EnumInvalidObj
  EnumInvalidObj* = object
    pet1*: Animal
    pet2*: Animal
    io*: KaitaiStream
    root*: EnumInvalid
    parent*: ref RootObj

### EnumInvalid ###
proc read*(_: typedesc[EnumInvalid], io: KaitaiStream, root: EnumInvalid, parent: ref RootObj): EnumInvalid =
  result = new(EnumInvalid)
  let root = if root == nil: cast[EnumInvalid](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let pet1 = 
  result.pet1 = pet1
  let pet2 = 
  result.pet2 = pet2

proc fromFile*(_: typedesc[EnumInvalid], filename: string): EnumInvalid =
  EnumInvalid.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumInvalidObj) =
  close(x.io)


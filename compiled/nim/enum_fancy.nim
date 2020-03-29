import kaitai_struct_nim_runtime

type
  EnumFancy* = ref EnumFancyObj
  EnumFancyObj* = object
    pet1*: Animal
    pet2*: Animal
    io*: KaitaiStream
    root*: EnumFancy
    parent*: ref RootObj

### EnumFancy ###
proc read*(_: typedesc[EnumFancy], io: KaitaiStream, root: EnumFancy, parent: ref RootObj): EnumFancy =
  result = new(EnumFancy)
  let root = if root == nil: cast[EnumFancy](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let pet1 = 
  result.pet1 = pet1
  let pet2 = 
  result.pet2 = pet2

proc fromFile*(_: typedesc[EnumFancy], filename: string): EnumFancy =
  EnumFancy.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumFancyObj) =
  close(x.io)


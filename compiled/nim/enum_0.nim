import kaitai_struct_nim_runtime

type
  Enum0* = ref Enum0Obj
  Enum0Obj* = object
    pet1*: Animal
    pet2*: Animal
    io*: KaitaiStream
    root*: Enum0
    parent*: ref RootObj

### Enum0 ###
proc read*(_: typedesc[Enum0], io: KaitaiStream, root: Enum0, parent: ref RootObj): Enum0 =
  result = new(Enum0)
  let root = if root == nil: cast[Enum0](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let pet1 = 
  result.pet1 = pet1
  let pet2 = 
  result.pet2 = pet2

proc fromFile*(_: typedesc[Enum0], filename: string): Enum0 =
  Enum0.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Enum0Obj) =
  close(x.io)


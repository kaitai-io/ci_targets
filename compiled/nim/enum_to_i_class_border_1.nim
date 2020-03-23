import kaitai_struct_nim_runtime

type
  EnumToIClassBorder1* = ref EnumToIClassBorder1Obj
  EnumToIClassBorder1Obj* = object
    pet1*: Animal
    pet2*: Animal
    io*: KaitaiStream
    root*: EnumToIClassBorder1
    parent*: ref RootObj

### EnumToIClassBorder1 ###
proc read*(_: typedesc[EnumToIClassBorder1], io: KaitaiStream, root: EnumToIClassBorder1, parent: ref RootObj): EnumToIClassBorder1 =
  result = new(EnumToIClassBorder1)
  let root = if root == nil: cast[EnumToIClassBorder1](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.pet1 = 
  result.pet2 = 

proc fromFile*(_: typedesc[EnumToIClassBorder1], filename: string): EnumToIClassBorder1 =
  EnumToIClassBorder1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumToIClassBorder1Obj) =
  close(x.io)


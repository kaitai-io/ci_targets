import kaitai_struct_nim_runtime

type
  EnumToI* = ref EnumToIObj
  EnumToIObj* = object
    pet1*: Animal
    pet2*: Animal
    io*: KaitaiStream
    root*: EnumToI
    parent*: ref RootObj

### EnumToI ###
proc read*(_: typedesc[EnumToI], io: KaitaiStream, root: EnumToI, parent: ref RootObj): EnumToI =
  result = new(EnumToI)
  let root = if root == nil: cast[EnumToI](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.pet1 = 
  result.pet2 = 

proc fromFile*(_: typedesc[EnumToI], filename: string): EnumToI =
  EnumToI.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumToIObj) =
  close(x.io)


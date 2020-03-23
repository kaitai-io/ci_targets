import kaitai_struct_nim_runtime

type
  EnumOfValueInst* = ref EnumOfValueInstObj
  EnumOfValueInstObj* = object
    pet1*: Animal
    pet2*: Animal
    io*: KaitaiStream
    root*: EnumOfValueInst
    parent*: ref RootObj

### EnumOfValueInst ###
proc read*(_: typedesc[EnumOfValueInst], io: KaitaiStream, root: EnumOfValueInst, parent: ref RootObj): EnumOfValueInst =
  result = new(EnumOfValueInst)
  let root = if root == nil: cast[EnumOfValueInst](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.pet1 = 
  result.pet2 = 

proc fromFile*(_: typedesc[EnumOfValueInst], filename: string): EnumOfValueInst =
  EnumOfValueInst.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumOfValueInstObj) =
  close(x.io)


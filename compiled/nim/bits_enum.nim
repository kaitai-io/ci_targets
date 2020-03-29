import kaitai_struct_nim_runtime

type
  BitsEnum* = ref BitsEnumObj
  BitsEnumObj* = object
    one*: Animal
    two*: Animal
    three*: Animal
    io*: KaitaiStream
    root*: BitsEnum
    parent*: ref RootObj

### BitsEnum ###
proc read*(_: typedesc[BitsEnum], io: KaitaiStream, root: BitsEnum, parent: ref RootObj): BitsEnum =
  result = new(BitsEnum)
  let root = if root == nil: cast[BitsEnum](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let one = 
  result.one = one
  let two = 
  result.two = two
  let three = 
  result.three = three

proc fromFile*(_: typedesc[BitsEnum], filename: string): BitsEnum =
  BitsEnum.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BitsEnumObj) =
  close(x.io)


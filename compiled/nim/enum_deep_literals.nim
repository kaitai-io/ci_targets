import kaitai_struct_nim_runtime

type
  EnumDeepLiterals_Container1_Container2* = ref EnumDeepLiterals_Container1_Container2Obj
  EnumDeepLiterals_Container1_Container2Obj* = object
    io*: KaitaiStream
    root*: EnumDeepLiterals
    parent*: ref RootObj
  EnumDeepLiterals_Container1* = ref EnumDeepLiterals_Container1Obj
  EnumDeepLiterals_Container1Obj* = object
    io*: KaitaiStream
    root*: EnumDeepLiterals
    parent*: ref RootObj
  EnumDeepLiterals* = ref EnumDeepLiteralsObj
  EnumDeepLiteralsObj* = object
    pet1*: Container1_Animal
    pet2*: Container1_Container2_Animal
    io*: KaitaiStream
    root*: EnumDeepLiterals
    parent*: ref RootObj

### EnumDeepLiterals_Container1_Container2 ###
proc read*(_: typedesc[EnumDeepLiterals_Container1_Container2], io: KaitaiStream, root: EnumDeepLiterals, parent: ref RootObj): EnumDeepLiterals_Container1_Container2 =
  result = new(EnumDeepLiterals_Container1_Container2)
  let root = if root == nil: cast[EnumDeepLiterals](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[EnumDeepLiterals_Container1_Container2], filename: string): EnumDeepLiterals_Container1_Container2 =
  EnumDeepLiterals_Container1_Container2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumDeepLiterals_Container1_Container2Obj) =
  close(x.io)

### EnumDeepLiterals_Container1 ###
proc read*(_: typedesc[EnumDeepLiterals_Container1], io: KaitaiStream, root: EnumDeepLiterals, parent: ref RootObj): EnumDeepLiterals_Container1 =
  result = new(EnumDeepLiterals_Container1)
  let root = if root == nil: cast[EnumDeepLiterals](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[EnumDeepLiterals_Container1], filename: string): EnumDeepLiterals_Container1 =
  EnumDeepLiterals_Container1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumDeepLiterals_Container1Obj) =
  close(x.io)

### EnumDeepLiterals ###
proc read*(_: typedesc[EnumDeepLiterals], io: KaitaiStream, root: EnumDeepLiterals, parent: ref RootObj): EnumDeepLiterals =
  result = new(EnumDeepLiterals)
  let root = if root == nil: cast[EnumDeepLiterals](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let pet1 = 
  result.pet1 = pet1
  let pet2 = 
  result.pet2 = pet2

proc fromFile*(_: typedesc[EnumDeepLiterals], filename: string): EnumDeepLiterals =
  EnumDeepLiterals.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumDeepLiteralsObj) =
  close(x.io)


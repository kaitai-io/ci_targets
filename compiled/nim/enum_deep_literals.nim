import kaitai_struct_nim_runtime

type
  EnumDeepLiteralscontainer1container2* = ref EnumDeepLiteralscontainer1container2Obj
  EnumDeepLiteralscontainer1container2Obj* = object
    pet1*: Container1animal
    pet2*: Container1container2animal
    io*: KaitaiStream
    root*: EnumDeepLiterals
    parent*: ref RootObj
  EnumDeepLiteralscontainer1* = ref EnumDeepLiteralscontainer1Obj
  EnumDeepLiteralscontainer1Obj* = object
    pet1*: Container1animal
    pet2*: Container1container2animal
    io*: KaitaiStream
    root*: EnumDeepLiterals
    parent*: ref RootObj
  EnumDeepLiterals* = ref EnumDeepLiteralsObj
  EnumDeepLiteralsObj* = object
    pet1*: Container1animal
    pet2*: Container1container2animal
    io*: KaitaiStream
    root*: EnumDeepLiterals
    parent*: ref RootObj

### EnumDeepLiteralscontainer1container2 ###
proc read*(_: typedesc[EnumDeepLiteralscontainer1container2], io: KaitaiStream, root: EnumDeepLiterals, parent: ref RootObj): EnumDeepLiteralscontainer1container2 =
  result = new(EnumDeepLiteralscontainer1container2)
  let root = if root == nil: cast[EnumDeepLiterals](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[EnumDeepLiteralscontainer1container2], filename: string): EnumDeepLiteralscontainer1container2 =
  EnumDeepLiteralscontainer1container2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumDeepLiteralscontainer1container2Obj) =
  close(x.io)

### EnumDeepLiteralscontainer1 ###
proc read*(_: typedesc[EnumDeepLiteralscontainer1], io: KaitaiStream, root: EnumDeepLiterals, parent: ref RootObj): EnumDeepLiteralscontainer1 =
  result = new(EnumDeepLiteralscontainer1)
  let root = if root == nil: cast[EnumDeepLiterals](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[EnumDeepLiteralscontainer1], filename: string): EnumDeepLiteralscontainer1 =
  EnumDeepLiteralscontainer1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumDeepLiteralscontainer1Obj) =
  close(x.io)

### EnumDeepLiterals ###
proc read*(_: typedesc[EnumDeepLiterals], io: KaitaiStream, root: EnumDeepLiterals, parent: ref RootObj): EnumDeepLiterals =
  result = new(EnumDeepLiterals)
  let root = if root == nil: cast[EnumDeepLiterals](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.pet1 = 
  result.pet2 = 

proc fromFile*(_: typedesc[EnumDeepLiterals], filename: string): EnumDeepLiterals =
  EnumDeepLiterals.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumDeepLiteralsObj) =
  close(x.io)


import kaitai_struct_nim_runtime

type
  EnumDeep_Container1_Container2* = ref EnumDeep_Container1_Container2Obj
  EnumDeep_Container1_Container2Obj* = object
    io*: KaitaiStream
    root*: EnumDeep
    parent*: ref RootObj
  EnumDeep_Container1* = ref EnumDeep_Container1Obj
  EnumDeep_Container1Obj* = object
    io*: KaitaiStream
    root*: EnumDeep
    parent*: ref RootObj
  EnumDeep* = ref EnumDeepObj
  EnumDeepObj* = object
    pet1*: Container1_Animal
    pet2*: Container1_Container2_Animal
    io*: KaitaiStream
    root*: EnumDeep
    parent*: ref RootObj

### EnumDeep_Container1_Container2 ###
proc read*(_: typedesc[EnumDeep_Container1_Container2], io: KaitaiStream, root: EnumDeep, parent: ref RootObj): EnumDeep_Container1_Container2 =
  result = new(EnumDeep_Container1_Container2)
  let root = if root == nil: cast[EnumDeep](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[EnumDeep_Container1_Container2], filename: string): EnumDeep_Container1_Container2 =
  EnumDeep_Container1_Container2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumDeep_Container1_Container2Obj) =
  close(x.io)

### EnumDeep_Container1 ###
proc read*(_: typedesc[EnumDeep_Container1], io: KaitaiStream, root: EnumDeep, parent: ref RootObj): EnumDeep_Container1 =
  result = new(EnumDeep_Container1)
  let root = if root == nil: cast[EnumDeep](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[EnumDeep_Container1], filename: string): EnumDeep_Container1 =
  EnumDeep_Container1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumDeep_Container1Obj) =
  close(x.io)

### EnumDeep ###
proc read*(_: typedesc[EnumDeep], io: KaitaiStream, root: EnumDeep, parent: ref RootObj): EnumDeep =
  result = new(EnumDeep)
  let root = if root == nil: cast[EnumDeep](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let pet1 = 
  result.pet1 = pet1
  let pet2 = 
  result.pet2 = pet2

proc fromFile*(_: typedesc[EnumDeep], filename: string): EnumDeep =
  EnumDeep.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumDeepObj) =
  close(x.io)


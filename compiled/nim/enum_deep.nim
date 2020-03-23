import kaitai_struct_nim_runtime

type
  EnumDeepcontainer1container2* = ref EnumDeepcontainer1container2Obj
  EnumDeepcontainer1container2Obj* = object
    pet1*: Container1animal
    pet2*: Container1container2animal
    io*: KaitaiStream
    root*: EnumDeep
    parent*: ref RootObj
  EnumDeepcontainer1* = ref EnumDeepcontainer1Obj
  EnumDeepcontainer1Obj* = object
    pet1*: Container1animal
    pet2*: Container1container2animal
    io*: KaitaiStream
    root*: EnumDeep
    parent*: ref RootObj
  EnumDeep* = ref EnumDeepObj
  EnumDeepObj* = object
    pet1*: Container1animal
    pet2*: Container1container2animal
    io*: KaitaiStream
    root*: EnumDeep
    parent*: ref RootObj

### EnumDeepcontainer1container2 ###
proc read*(_: typedesc[EnumDeepcontainer1container2], io: KaitaiStream, root: EnumDeep, parent: ref RootObj): EnumDeepcontainer1container2 =
  result = new(EnumDeepcontainer1container2)
  let root = if root == nil: cast[EnumDeep](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[EnumDeepcontainer1container2], filename: string): EnumDeepcontainer1container2 =
  EnumDeepcontainer1container2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumDeepcontainer1container2Obj) =
  close(x.io)

### EnumDeepcontainer1 ###
proc read*(_: typedesc[EnumDeepcontainer1], io: KaitaiStream, root: EnumDeep, parent: ref RootObj): EnumDeepcontainer1 =
  result = new(EnumDeepcontainer1)
  let root = if root == nil: cast[EnumDeep](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[EnumDeepcontainer1], filename: string): EnumDeepcontainer1 =
  EnumDeepcontainer1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumDeepcontainer1Obj) =
  close(x.io)

### EnumDeep ###
proc read*(_: typedesc[EnumDeep], io: KaitaiStream, root: EnumDeep, parent: ref RootObj): EnumDeep =
  result = new(EnumDeep)
  let root = if root == nil: cast[EnumDeep](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.pet1 = 
  result.pet2 = 

proc fromFile*(_: typedesc[EnumDeep], filename: string): EnumDeep =
  EnumDeep.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumDeepObj) =
  close(x.io)


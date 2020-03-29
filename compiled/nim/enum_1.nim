import kaitai_struct_nim_runtime

type
  Enum1_MainObj_SubmainObj* = ref Enum1_MainObj_SubmainObjObj
  Enum1_MainObj_SubmainObjObj* = object
    pet1*: Animal
    pet2*: Animal
    io*: KaitaiStream
    root*: Enum1
    parent*: Enum1_MainObj
  Enum1_MainObj* = ref Enum1_MainObjObj
  Enum1_MainObjObj* = object
    submain*: Enum1_MainObj_SubmainObj
    io*: KaitaiStream
    root*: Enum1
    parent*: Enum1
  Enum1* = ref Enum1Obj
  Enum1Obj* = object
    main*: Enum1_MainObj
    io*: KaitaiStream
    root*: Enum1
    parent*: ref RootObj

### Enum1_MainObj_SubmainObj ###
proc read*(_: typedesc[Enum1_MainObj_SubmainObj], io: KaitaiStream, root: Enum1, parent: Enum1_MainObj): Enum1_MainObj_SubmainObj =
  result = new(Enum1_MainObj_SubmainObj)
  let root = if root == nil: cast[Enum1](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let pet1 = 
  result.pet1 = pet1
  let pet2 = 
  result.pet2 = pet2

proc fromFile*(_: typedesc[Enum1_MainObj_SubmainObj], filename: string): Enum1_MainObj_SubmainObj =
  Enum1_MainObj_SubmainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Enum1_MainObj_SubmainObjObj) =
  close(x.io)

### Enum1_MainObj ###
proc read*(_: typedesc[Enum1_MainObj], io: KaitaiStream, root: Enum1, parent: Enum1): Enum1_MainObj =
  result = new(Enum1_MainObj)
  let root = if root == nil: cast[Enum1](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let submain = Enum1_MainObj_SubmainObj.read(io, result, root)
  result.submain = submain

proc fromFile*(_: typedesc[Enum1_MainObj], filename: string): Enum1_MainObj =
  Enum1_MainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Enum1_MainObjObj) =
  close(x.io)

### Enum1 ###
proc read*(_: typedesc[Enum1], io: KaitaiStream, root: Enum1, parent: ref RootObj): Enum1 =
  result = new(Enum1)
  let root = if root == nil: cast[Enum1](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let main = Enum1_MainObj.read(io, result, root)
  result.main = main

proc fromFile*(_: typedesc[Enum1], filename: string): Enum1 =
  Enum1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Enum1Obj) =
  close(x.io)


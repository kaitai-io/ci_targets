import kaitai_struct_nim_runtime

type
  Enum1mainObjsubmainObj* = ref Enum1mainObjsubmainObjObj
  Enum1mainObjsubmainObjObj* = object
    main*: MainObj
    io*: KaitaiStream
    root*: Enum1
    parent*: ref RootObj
  Enum1mainObj* = ref Enum1mainObjObj
  Enum1mainObjObj* = object
    main*: MainObj
    io*: KaitaiStream
    root*: Enum1
    parent*: ref RootObj
  Enum1* = ref Enum1Obj
  Enum1Obj* = object
    main*: MainObj
    io*: KaitaiStream
    root*: Enum1
    parent*: ref RootObj

### Enum1mainObjsubmainObj ###
proc read*(_: typedesc[Enum1mainObjsubmainObj], io: KaitaiStream, root: Enum1, parent: Enum1mainObj): Enum1mainObjsubmainObj =
  result = new(Enum1mainObjsubmainObj)
  let root = if root == nil: cast[Enum1](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.pet1 = 
  result.pet2 = 

proc fromFile*(_: typedesc[Enum1mainObjsubmainObj], filename: string): Enum1mainObjsubmainObj =
  Enum1mainObjsubmainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Enum1mainObjsubmainObjObj) =
  close(x.io)

### Enum1mainObj ###
proc read*(_: typedesc[Enum1mainObj], io: KaitaiStream, root: Enum1, parent: Enum1): Enum1mainObj =
  result = new(Enum1mainObj)
  let root = if root == nil: cast[Enum1](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.submain = SubmainObj.read(result.io, result, root)

proc fromFile*(_: typedesc[Enum1mainObj], filename: string): Enum1mainObj =
  Enum1mainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Enum1mainObjObj) =
  close(x.io)

### Enum1 ###
proc read*(_: typedesc[Enum1], io: KaitaiStream, root: Enum1, parent: ref RootObj): Enum1 =
  result = new(Enum1)
  let root = if root == nil: cast[Enum1](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.main = MainObj.read(result.io, result, root)

proc fromFile*(_: typedesc[Enum1], filename: string): Enum1 =
  Enum1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Enum1Obj) =
  close(x.io)


import kaitai_struct_nim_runtime
import options

type
  Enum1_MainObj_SubmainObj* = ref Enum1_MainObj_SubmainObjObj
  Enum1_MainObj_SubmainObjObj* = object
    pet1*: Enum1_MainObj_Animal
    pet2*: Enum1_MainObj_Animal
    io*: KaitaiStream
    root*: Enum1
    parent*: Enum1_MainObj
  Enum1_MainObj* = ref Enum1_MainObjObj
  Enum1_MainObjObj* = object
    submain*: Enum1_MainObj_SubmainObj
    io*: KaitaiStream
    root*: Enum1
    parent*: Enum1
  Enum1_MainObj_animal* = enum
    dog = 4
    cat = 7
    chicken = 12
  Enum1* = ref Enum1Obj
  Enum1Obj* = object
    main*: Enum1_MainObj
    io*: KaitaiStream
    root*: Enum1
    parent*: ref RootObj

## Enum1_MainObj_SubmainObj
proc read*(_: typedesc[Enum1_MainObj_SubmainObj], io: KaitaiStream, root: Enum1, parent: Enum1_MainObj): Enum1_MainObj_SubmainObj =
  let this = new(Enum1_MainObj_SubmainObj)
  let root = if root == nil: cast[Enum1](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.pet1 = Enum1_MainObj_Animal(this.io.readU4le())
  this.pet2 = Enum1_MainObj_Animal(this.io.readU4le())
  result = this

proc fromFile*(_: typedesc[Enum1_MainObj_SubmainObj], filename: string): Enum1_MainObj_SubmainObj =
  Enum1_MainObj_SubmainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Enum1_MainObj_SubmainObjObj) =
  close(x.io)

## Enum1_MainObj
proc read*(_: typedesc[Enum1_MainObj], io: KaitaiStream, root: Enum1, parent: Enum1): Enum1_MainObj =
  let this = new(Enum1_MainObj)
  let root = if root == nil: cast[Enum1](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.submain = Enum1_MainObj_SubmainObj.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[Enum1_MainObj], filename: string): Enum1_MainObj =
  Enum1_MainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Enum1_MainObjObj) =
  close(x.io)

## Enum1
proc read*(_: typedesc[Enum1], io: KaitaiStream, root: Enum1, parent: ref RootObj): Enum1 =
  let this = new(Enum1)
  let root = if root == nil: cast[Enum1](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.main = Enum1_MainObj.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[Enum1], filename: string): Enum1 =
  Enum1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Enum1Obj) =
  close(x.io)


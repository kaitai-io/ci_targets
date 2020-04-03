import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

defineEnum(Enum1_MainObj_animal)
const
  dog* = Enum1_MainObj_animal(4)
  cat* = Enum1_MainObj_animal(7)
  chicken* = Enum1_MainObj_animal(12)

type
  Enum1* = ref object of KaitaiStruct
    main*: Enum1_MainObj
    parent*: KaitaiStruct
  Enum1_MainObj* = ref object of KaitaiStruct
    submain*: Enum1_MainObj_SubmainObj
    parent*: Enum1
  Enum1_MainObj_SubmainObj* = ref object of KaitaiStruct
    pet1*: Enum1_MainObj_Animal
    pet2*: Enum1_MainObj_Animal
    parent*: Enum1_MainObj

proc read*(_: typedesc[Enum1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Enum1
proc read*(_: typedesc[Enum1_MainObj], io: KaitaiStream, root: KaitaiStruct, parent: Enum1): Enum1_MainObj
proc read*(_: typedesc[Enum1_MainObj_SubmainObj], io: KaitaiStream, root: KaitaiStruct, parent: Enum1_MainObj): Enum1_MainObj_SubmainObj


proc read*(_: typedesc[Enum1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Enum1 =
  template this: untyped = result
  this = new(Enum1)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.main = Enum1_MainObj.read(this.io, this.root, this)

proc fromFile*(_: typedesc[Enum1], filename: string): Enum1 =
  Enum1.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[Enum1_MainObj], io: KaitaiStream, root: KaitaiStruct, parent: Enum1): Enum1_MainObj =
  template this: untyped = result
  this = new(Enum1_MainObj)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.submain = Enum1_MainObj_SubmainObj.read(this.io, this.root, this)

proc fromFile*(_: typedesc[Enum1_MainObj], filename: string): Enum1_MainObj =
  Enum1_MainObj.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[Enum1_MainObj_SubmainObj], io: KaitaiStream, root: KaitaiStruct, parent: Enum1_MainObj): Enum1_MainObj_SubmainObj =
  template this: untyped = result
  this = new(Enum1_MainObj_SubmainObj)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.pet1 = Enum1_MainObj_Animal(this.io.readU4le())
  this.pet2 = Enum1_MainObj_Animal(this.io.readU4le())

proc fromFile*(_: typedesc[Enum1_MainObj_SubmainObj], filename: string): Enum1_MainObj_SubmainObj =
  Enum1_MainObj_SubmainObj.read(newKaitaiFileStream(filename), nil, nil)


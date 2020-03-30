import kaitai_struct_nim_runtime
import options

type
  EnumDeep_Container1_Container2* = ref EnumDeep_Container1_Container2Obj
  EnumDeep_Container1_Container2Obj* = object
    io*: KaitaiStream
    root*: EnumDeep
    parent*: ref RootObj
  EnumDeep_Container1_Container2_animal* = enum
    canary = 4
    turtle = 7
    hare = 12
  EnumDeep_Container1* = ref EnumDeep_Container1Obj
  EnumDeep_Container1Obj* = object
    io*: KaitaiStream
    root*: EnumDeep
    parent*: ref RootObj
  EnumDeep_Container1_animal* = enum
    dog = 4
    cat = 7
    chicken = 12
  EnumDeep* = ref EnumDeepObj
  EnumDeepObj* = object
    pet1*: EnumDeep_Container1_Animal
    pet2*: EnumDeep_Container1_Container2_Animal
    io*: KaitaiStream
    root*: EnumDeep
    parent*: ref RootObj

### EnumDeep_Container1_Container2 ###
proc read*(_: typedesc[EnumDeep_Container1_Container2], io: KaitaiStream, root: EnumDeep, parent: ref RootObj): EnumDeep_Container1_Container2 =
  let this = new(EnumDeep_Container1_Container2)
  let root = if root == nil: cast[EnumDeep](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[EnumDeep_Container1_Container2], filename: string): EnumDeep_Container1_Container2 =
  EnumDeep_Container1_Container2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumDeep_Container1_Container2Obj) =
  close(x.io)

### EnumDeep_Container1 ###
proc read*(_: typedesc[EnumDeep_Container1], io: KaitaiStream, root: EnumDeep, parent: ref RootObj): EnumDeep_Container1 =
  let this = new(EnumDeep_Container1)
  let root = if root == nil: cast[EnumDeep](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[EnumDeep_Container1], filename: string): EnumDeep_Container1 =
  EnumDeep_Container1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumDeep_Container1Obj) =
  close(x.io)

### EnumDeep ###
proc read*(_: typedesc[EnumDeep], io: KaitaiStream, root: EnumDeep, parent: ref RootObj): EnumDeep =
  let this = new(EnumDeep)
  let root = if root == nil: cast[EnumDeep](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let pet1 = EnumDeep_Container1_Animal(this.io.readU4le())
  this.pet1 = pet1
  let pet2 = EnumDeep_Container1_Container2_Animal(this.io.readU4le())
  this.pet2 = pet2
  result = this

proc fromFile*(_: typedesc[EnumDeep], filename: string): EnumDeep =
  EnumDeep.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumDeepObj) =
  close(x.io)


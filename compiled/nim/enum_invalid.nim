import kaitai_struct_nim_runtime
import options

type
  EnumInvalid* = ref EnumInvalidObj
  EnumInvalidObj* = object
    pet1*: EnumInvalid_Animal
    pet2*: EnumInvalid_Animal
    io*: KaitaiStream
    root*: EnumInvalid
    parent*: ref RootObj
  EnumInvalid_animal* = enum
    dog = 102
    cat = 124

### EnumInvalid ###
proc read*(_: typedesc[EnumInvalid], io: KaitaiStream, root: EnumInvalid, parent: ref RootObj): EnumInvalid =
  let this = new(EnumInvalid)
  let root = if root == nil: cast[EnumInvalid](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let pet1 = EnumInvalid_Animal(this.io.readU1())
  this.pet1 = pet1
  let pet2 = EnumInvalid_Animal(this.io.readU1())
  this.pet2 = pet2
  result = this

proc fromFile*(_: typedesc[EnumInvalid], filename: string): EnumInvalid =
  EnumInvalid.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumInvalidObj) =
  close(x.io)


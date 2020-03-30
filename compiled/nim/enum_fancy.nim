import kaitai_struct_nim_runtime
import options

type
  EnumFancy* = ref EnumFancyObj
  EnumFancyObj* = object
    pet1*: EnumFancy_Animal
    pet2*: EnumFancy_Animal
    io*: KaitaiStream
    root*: EnumFancy
    parent*: ref RootObj
  EnumFancy_animal* = enum
    dog = 4
    cat = 7
    chicken = 12

## EnumFancy
proc read*(_: typedesc[EnumFancy], io: KaitaiStream, root: EnumFancy, parent: ref RootObj): EnumFancy =
  let this = new(EnumFancy)
  let root = if root == nil: cast[EnumFancy](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.pet1 = EnumFancy_Animal(this.io.readU4le())
  this.pet2 = EnumFancy_Animal(this.io.readU4le())
  result = this

proc fromFile*(_: typedesc[EnumFancy], filename: string): EnumFancy =
  EnumFancy.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumFancyObj) =
  close(x.io)


import kaitai_struct_nim_runtime
import options

type
  Enum0* = ref Enum0Obj
  Enum0Obj* = object
    pet1*: Enum0_Animal
    pet2*: Enum0_Animal
    io*: KaitaiStream
    root*: Enum0
    parent*: ref RootObj
  Enum0_animal* = enum
    dog = 4
    cat = 7
    chicken = 12

## Enum0
proc read*(_: typedesc[Enum0], io: KaitaiStream, root: Enum0, parent: ref RootObj): Enum0 =
  let this = new(Enum0)
  let root = if root == nil: cast[Enum0](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.pet1 = Enum0_Animal(this.io.readU4le())
  this.pet2 = Enum0_Animal(this.io.readU4le())
  result = this

proc fromFile*(_: typedesc[Enum0], filename: string): Enum0 =
  Enum0.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Enum0Obj) =
  close(x.io)


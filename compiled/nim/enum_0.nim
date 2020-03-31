import kaitai_struct_nim_runtime
import options

type
  Enum0* = ref object of KaitaiStruct
    pet1*: Enum0_Animal
    pet2*: Enum0_Animal
    parent*: KaitaiStruct
  Enum0_animal* = enum
    dog = 4
    cat = 7
    chicken = 12

proc read*(_: typedesc[Enum0], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Enum0 =
  template this: untyped = result
  this = new(Enum0)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.pet1 = Enum0_Animal(this.io.readU4le())

  ##[
  ]##
  this.pet2 = Enum0_Animal(this.io.readU4le())

proc fromFile*(_: typedesc[Enum0], filename: string): Enum0 =
  Enum0.read(newKaitaiFileStream(filename), nil, nil)


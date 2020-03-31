import kaitai_struct_nim_runtime
import options

type
  EnumFancy* = ref object of KaitaiStruct
    pet1*: EnumFancy_Animal
    pet2*: EnumFancy_Animal
    parent*: KaitaiStruct
  EnumFancy_animal* = enum
    dog = 4
    cat = 7
    chicken = 12

proc read*(_: typedesc[EnumFancy], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumFancy =
  template this: untyped = result
  this = new(EnumFancy)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.pet1 = EnumFancy_Animal(this.io.readU4le())

  ##[
  ]##
  this.pet2 = EnumFancy_Animal(this.io.readU4le())

proc fromFile*(_: typedesc[EnumFancy], filename: string): EnumFancy =
  EnumFancy.read(newKaitaiFileStream(filename), nil, nil)


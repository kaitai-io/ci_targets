import kaitai_struct_nim_runtime
import options

type
  EnumInvalid* = ref object of KaitaiStruct
    pet1*: EnumInvalid_Animal
    pet2*: EnumInvalid_Animal
    parent*: KaitaiStruct
  EnumInvalid_animal* = enum
    dog = 102
    cat = 124

proc read*(_: typedesc[EnumInvalid], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumInvalid =
  template this: untyped = result
  this = new(EnumInvalid)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.pet1 = EnumInvalid_Animal(this.io.readU1())

  ##[
  ]##
  this.pet2 = EnumInvalid_Animal(this.io.readU1())

proc fromFile*(_: typedesc[EnumInvalid], filename: string): EnumInvalid =
  EnumInvalid.read(newKaitaiFileStream(filename), nil, nil)


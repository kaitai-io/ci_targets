import kaitai_struct_nim_runtime
import options

type
  EnumForUnknownId* = ref object of KaitaiStruct
    one*: EnumForUnknownId_Animal
    parent*: KaitaiStruct
  EnumForUnknownId_animal* = enum
    dog = 4
    cat = 7
    chicken = 12

proc read*(_: typedesc[EnumForUnknownId], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumForUnknownId =
  template this: untyped = result
  this = new(EnumForUnknownId)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.one = EnumForUnknownId_Animal(this.io.readU1())

proc fromFile*(_: typedesc[EnumForUnknownId], filename: string): EnumForUnknownId =
  EnumForUnknownId.read(newKaitaiFileStream(filename), nil, nil)


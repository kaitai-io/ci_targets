import kaitai_struct_nim_runtime
import options

type
  BitsEnum* = ref object of KaitaiStruct
    one*: BitsEnum_Animal
    two*: BitsEnum_Animal
    three*: BitsEnum_Animal
    parent*: KaitaiStruct
  BitsEnum_animal* = enum
    cat = 0
    dog = 1
    horse = 4
    platypus = 5

proc read*(_: typedesc[BitsEnum], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsEnum =
  template this: untyped = result
  this = new(BitsEnum)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.one = BitsEnum_Animal(this.io.readBitsInt(4))

  ##[
  ]##
  this.two = BitsEnum_Animal(this.io.readBitsInt(8))

  ##[
  ]##
  this.three = BitsEnum_Animal(this.io.readBitsInt(1))

proc fromFile*(_: typedesc[BitsEnum], filename: string): BitsEnum =
  BitsEnum.read(newKaitaiFileStream(filename), nil, nil)


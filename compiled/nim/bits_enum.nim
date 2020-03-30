import kaitai_struct_nim_runtime
import options

type
  BitsEnum* = ref BitsEnumObj
  BitsEnumObj* = object
    one*: BitsEnum_Animal
    two*: BitsEnum_Animal
    three*: BitsEnum_Animal
    io*: KaitaiStream
    root*: BitsEnum
    parent*: ref RootObj
  BitsEnum_animal* = enum
    cat = 0
    dog = 1
    horse = 4
    platypus = 5

## BitsEnum
proc read*(_: typedesc[BitsEnum], io: KaitaiStream, root: BitsEnum, parent: ref RootObj): BitsEnum =
  let this = new(BitsEnum)
  let root = if root == nil: cast[BitsEnum](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = BitsEnum_Animal(this.io.readBitsInt(4))
  this.two = BitsEnum_Animal(this.io.readBitsInt(8))
  this.three = BitsEnum_Animal(this.io.readBitsInt(1))
  result = this

proc fromFile*(_: typedesc[BitsEnum], filename: string): BitsEnum =
  BitsEnum.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BitsEnumObj) =
  close(x.io)


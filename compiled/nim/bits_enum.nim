import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

defineEnum(BitsEnum_animal)
const
  cat* = BitsEnum_animal(0)
  dog* = BitsEnum_animal(1)
  horse* = BitsEnum_animal(4)
  platypus* = BitsEnum_animal(5)

type
  BitsEnum* = ref object of KaitaiStruct
    one*: BitsEnum_Animal
    two*: BitsEnum_Animal
    three*: BitsEnum_Animal
    parent*: KaitaiStruct

proc read*(_: typedesc[BitsEnum], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsEnum

proc read*(_: typedesc[BitsEnum], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsEnum =
  template this: untyped = result
  this = new(BitsEnum)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = BitsEnum_Animal(this.io.readBitsInt(4))
  this.two = BitsEnum_Animal(this.io.readBitsInt(8))
  this.three = BitsEnum_Animal(this.io.readBitsInt(1))

proc fromFile*(_: typedesc[BitsEnum], filename: string): BitsEnum =
  BitsEnum.read(newKaitaiFileStream(filename), nil, nil)


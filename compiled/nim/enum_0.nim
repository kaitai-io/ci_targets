import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

defineEnum(Enum0_animal)
const
  dog* = Enum0_animal(4)
  cat* = Enum0_animal(7)
  chicken* = Enum0_animal(12)

type
  Enum0* = ref object of KaitaiStruct
    pet1*: Enum0_Animal
    pet2*: Enum0_Animal
    parent*: KaitaiStruct

proc read*(_: typedesc[Enum0], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Enum0


proc read*(_: typedesc[Enum0], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Enum0 =
  template this: untyped = result
  this = new(Enum0)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.pet1 = Enum0_Animal(this.io.readU4le())
  this.pet2 = Enum0_Animal(this.io.readU4le())

proc fromFile*(_: typedesc[Enum0], filename: string): Enum0 =
  Enum0.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

defineEnum(EnumFancy_animal)
const
  dog* = EnumFancy_animal(4)
  cat* = EnumFancy_animal(7)
  chicken* = EnumFancy_animal(12)

type
  EnumFancy* = ref object of KaitaiStruct
    pet1*: EnumFancy_Animal
    pet2*: EnumFancy_Animal
    parent*: KaitaiStruct

proc read*(_: typedesc[EnumFancy], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumFancy


proc read*(_: typedesc[EnumFancy], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumFancy =
  template this: untyped = result
  this = new(EnumFancy)
  let root = if root == nil: cast[EnumFancy](this) else: cast[EnumFancy](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.pet1 = EnumFancy_Animal(this.io.readU4le())
  this.pet2 = EnumFancy_Animal(this.io.readU4le())

proc fromFile*(_: typedesc[EnumFancy], filename: string): EnumFancy =
  EnumFancy.read(newKaitaiFileStream(filename), nil, nil)


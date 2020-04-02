import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

defineEnum(EnumForUnknownId_animal)
const
  dog* = EnumForUnknownId_animal(4)
  cat* = EnumForUnknownId_animal(7)
  chicken* = EnumForUnknownId_animal(12)

type
  EnumForUnknownId* = ref object of KaitaiStruct
    one*: EnumForUnknownId_Animal
    parent*: KaitaiStruct

proc read*(_: typedesc[EnumForUnknownId], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumForUnknownId

proc read*(_: typedesc[EnumForUnknownId], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumForUnknownId =
  template this: untyped = result
  this = new(EnumForUnknownId)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = EnumForUnknownId_Animal(this.io.readU1())

proc fromFile*(_: typedesc[EnumForUnknownId], filename: string): EnumForUnknownId =
  EnumForUnknownId.read(newKaitaiFileStream(filename), nil, nil)


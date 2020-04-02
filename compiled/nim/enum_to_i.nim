import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

defineEnum(EnumToI_animal)
const
  dog* = EnumToI_animal(4)
  cat* = EnumToI_animal(7)
  chicken* = EnumToI_animal(12)

type
  EnumToI* = ref object of KaitaiStruct
    pet1*: EnumToI_Animal
    pet2*: EnumToI_Animal
    parent*: KaitaiStruct
    pet1IInst*: Option[int]
    pet1ModInst*: Option[int]
    oneLtTwoInst*: Option[bool]

proc read*(_: typedesc[EnumToI], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumToI

proc pet1I*(this: EnumToI): int
proc pet1Mod*(this: EnumToI): int
proc oneLtTwo*(this: EnumToI): bool
proc read*(_: typedesc[EnumToI], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumToI =
  template this: untyped = result
  this = new(EnumToI)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.pet1 = EnumToI_Animal(this.io.readU4le())
  this.pet2 = EnumToI_Animal(this.io.readU4le())

proc pet1I(this: EnumToI): int = 
  if isSome(this.pet1IInst):
    return get(this.pet1IInst)
  this.pet1IInst = some(ord(this.pet1))
  return get(this.pet1IInst)

proc pet1Mod(this: EnumToI): int = 
  if isSome(this.pet1ModInst):
    return get(this.pet1ModInst)
  this.pet1ModInst = some((ord(this.pet1) + 32768))
  return get(this.pet1ModInst)

proc oneLtTwo(this: EnumToI): bool = 
  if isSome(this.oneLtTwoInst):
    return get(this.oneLtTwoInst)
  this.oneLtTwoInst = some(ord(this.pet1) < ord(this.pet2))
  return get(this.oneLtTwoInst)

proc fromFile*(_: typedesc[EnumToI], filename: string): EnumToI =
  EnumToI.read(newKaitaiFileStream(filename), nil, nil)


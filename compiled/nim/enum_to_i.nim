import kaitai_struct_nim_runtime
import options

type
  EnumToI* = ref EnumToIObj
  EnumToIObj* = object
    pet1*: EnumToI_Animal
    pet2*: EnumToI_Animal
    io*: KaitaiStream
    root*: EnumToI
    parent*: ref RootObj
    pet1IInst*: Option[int]
    pet1ModInst*: Option[int]
    oneLtTwoInst*: Option[bool]
  EnumToI_animal* = enum
    dog = 4
    cat = 7
    chicken = 12

## EnumToI
proc pet1I*(this: EnumToI): int
proc pet1Mod*(this: EnumToI): int
proc oneLtTwo*(this: EnumToI): bool
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

proc read*(_: typedesc[EnumToI], io: KaitaiStream, root: EnumToI, parent: ref RootObj): EnumToI =
  let this = new(EnumToI)
  let root = if root == nil: cast[EnumToI](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.pet1 = EnumToI_Animal(this.io.readU4le())
  this.pet2 = EnumToI_Animal(this.io.readU4le())
  result = this

proc fromFile*(_: typedesc[EnumToI], filename: string): EnumToI =
  EnumToI.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumToIObj) =
  close(x.io)


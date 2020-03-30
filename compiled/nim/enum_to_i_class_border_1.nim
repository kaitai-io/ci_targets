import kaitai_struct_nim_runtime
import options

type
  EnumToIClassBorder1* = ref EnumToIClassBorder1Obj
  EnumToIClassBorder1Obj* = object
    pet1*: EnumToIClassBorder1_Animal
    pet2*: EnumToIClassBorder1_Animal
    io*: KaitaiStream
    root*: EnumToIClassBorder1
    parent*: ref RootObj
    someDogInst*: Option[EnumToIClassBorder1_Animal]
    checkerInst*: Option[EnumToIClassBorder2]
  EnumToIClassBorder1_animal* = enum
    dog = 4
    cat = 7
    chicken = 12

### EnumToIClassBorder1 ###
proc someDog*(this: EnumToIClassBorder1): EnumToIClassBorder1_Animal
proc checker*(this: EnumToIClassBorder1): EnumToIClassBorder2
proc someDog(this: EnumToIClassBorder1): EnumToIClassBorder1_Animal = 
  if isSome(this.someDogInst):
    return get(this.someDogInst)
  let someDogInst = EnumToIClassBorder1_Animal(4)
  this.someDogInst = some(someDogInst)
  return get(this.someDogInst)

proc checker(this: EnumToIClassBorder1): EnumToIClassBorder2 = 
  if isSome(this.checkerInst):
    return get(this.checkerInst)
  let pos = this.io.pos()
  this.io.seek(0)
  let checkerInst = EnumToIClassBorder2.read(this.io, this._root)
  this.checkerInst = some(checkerInst)
  this.io.seek(pos)
  return get(this.checkerInst)

proc read*(_: typedesc[EnumToIClassBorder1], io: KaitaiStream, root: EnumToIClassBorder1, parent: ref RootObj): EnumToIClassBorder1 =
  let this = new(EnumToIClassBorder1)
  let root = if root == nil: cast[EnumToIClassBorder1](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let pet1 = EnumToIClassBorder1_Animal(this.io.readU4le())
  this.pet1 = pet1
  let pet2 = EnumToIClassBorder1_Animal(this.io.readU4le())
  this.pet2 = pet2
  result = this

proc fromFile*(_: typedesc[EnumToIClassBorder1], filename: string): EnumToIClassBorder1 =
  EnumToIClassBorder1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumToIClassBorder1Obj) =
  close(x.io)


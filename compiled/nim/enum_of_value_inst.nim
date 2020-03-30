import kaitai_struct_nim_runtime
import options

type
  EnumOfValueInst* = ref EnumOfValueInstObj
  EnumOfValueInstObj* = object
    pet1*: EnumOfValueInst_Animal
    pet2*: EnumOfValueInst_Animal
    io*: KaitaiStream
    root*: EnumOfValueInst
    parent*: ref RootObj
    pet3Inst*: Option[EnumOfValueInst_Animal]
    pet4Inst*: Option[EnumOfValueInst_Animal]
  EnumOfValueInst_animal* = enum
    dog = 4
    cat = 7
    chicken = 12

## EnumOfValueInst
proc pet3*(this: EnumOfValueInst): EnumOfValueInst_Animal
proc pet4*(this: EnumOfValueInst): EnumOfValueInst_Animal
proc pet3(this: EnumOfValueInst): EnumOfValueInst_Animal = 
  if isSome(this.pet3Inst):
    return get(this.pet3Inst)
  this.pet3Inst = some(EnumOfValueInst_Animal((if this.pet1 == EnumOfValueInst_Animal.cat: 4 else: 12)))
  return get(this.pet3Inst)

proc pet4(this: EnumOfValueInst): EnumOfValueInst_Animal = 
  if isSome(this.pet4Inst):
    return get(this.pet4Inst)
  this.pet4Inst = some((if this.pet1 == EnumOfValueInst_Animal.cat: EnumOfValueInst_Animal.dog else: EnumOfValueInst_Animal.chicken))
  return get(this.pet4Inst)

proc read*(_: typedesc[EnumOfValueInst], io: KaitaiStream, root: EnumOfValueInst, parent: ref RootObj): EnumOfValueInst =
  let this = new(EnumOfValueInst)
  let root = if root == nil: cast[EnumOfValueInst](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.pet1 = EnumOfValueInst_Animal(this.io.readU4le())
  this.pet2 = EnumOfValueInst_Animal(this.io.readU4le())
  result = this

proc fromFile*(_: typedesc[EnumOfValueInst], filename: string): EnumOfValueInst =
  EnumOfValueInst.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumOfValueInstObj) =
  close(x.io)


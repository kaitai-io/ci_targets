import kaitai_struct_nim_runtime
import options

type
  EnumFancy* = ref object of KaitaiStruct
    pet1*: EnumFancy_Animal
    pet2*: EnumFancy_Animal
    parent*: KaitaiStruct
  EnumFancy_Animal* = enum
    dog = 4
    cat = 7
    chicken = 12

proc read*(_: typedesc[EnumFancy], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumFancy


proc read*(_: typedesc[EnumFancy], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumFancy =
  template this: untyped = result
  this = new(EnumFancy)
  let root = if root == nil: cast[EnumFancy](this) else: cast[EnumFancy](root)
  this.io = io
  this.root = root
  this.parent = parent

  let pet1Expr = EnumFancy_Animal(this.io.readU4le())
  this.pet1 = pet1Expr
  let pet2Expr = EnumFancy_Animal(this.io.readU4le())
  this.pet2 = pet2Expr

proc fromFile*(_: typedesc[EnumFancy], filename: string): EnumFancy =
  EnumFancy.read(newKaitaiFileStream(filename), nil, nil)


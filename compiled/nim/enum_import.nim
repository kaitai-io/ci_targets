import kaitai_struct_nim_runtime
import options
import enum_0
import enum_deep

type
  EnumImport* = ref object of KaitaiStruct
    `pet1`*: Enum0_Animal
    `pet2`*: EnumDeep_Container1_Container2_Animal
    `parent`*: KaitaiStruct

proc read*(_: typedesc[EnumImport], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumImport


proc read*(_: typedesc[EnumImport], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumImport =
  template this: untyped = result
  this = new(EnumImport)
  let root = if root == nil: cast[EnumImport](this) else: cast[EnumImport](root)
  this.io = io
  this.root = root
  this.parent = parent

  let pet1Expr = Enum0_Animal(this.io.readU4le())
  this.pet1 = pet1Expr
  let pet2Expr = EnumDeep_Container1_Container2_Animal(this.io.readU4le())
  this.pet2 = pet2Expr

proc fromFile*(_: typedesc[EnumImport], filename: string): EnumImport =
  EnumImport.read(newKaitaiFileStream(filename), nil, nil)


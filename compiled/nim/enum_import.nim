import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  EnumImport* = ref object of KaitaiStruct
    pet1*: Enum0_Animal
    pet2*: EnumDeep_Container1_Container2_Animal
    parent*: KaitaiStruct

proc read*(_: typedesc[EnumImport], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumImport


proc read*(_: typedesc[EnumImport], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumImport =
  template this: untyped = result
  this = new(EnumImport)
  let root = if root == nil: cast[EnumImport](this) else: cast[EnumImport](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.pet1 = Enum0_Animal(this.io.readU4le())
  this.pet2 = EnumDeep_Container1_Container2_Animal(this.io.readU4le())

proc fromFile*(_: typedesc[EnumImport], filename: string): EnumImport =
  EnumImport.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  EnumImport* = ref EnumImportObj
  EnumImportObj* = object
    pet1*: Enum0_Animal
    pet2*: EnumDeep_Container1_Container2_Animal
    io*: KaitaiStream
    root*: EnumImport
    parent*: ref RootObj

## EnumImport
proc read*(_: typedesc[EnumImport], io: KaitaiStream, root: EnumImport, parent: ref RootObj): EnumImport =
  let this = new(EnumImport)
  let root = if root == nil: cast[EnumImport](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.pet1 = Enum0_Animal(this.io.readU4le())
  this.pet2 = EnumDeep_Container1_Container2_Animal(this.io.readU4le())
  result = this

proc fromFile*(_: typedesc[EnumImport], filename: string): EnumImport =
  EnumImport.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumImportObj) =
  close(x.io)


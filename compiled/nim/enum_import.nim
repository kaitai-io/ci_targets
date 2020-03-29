import kaitai_struct_nim_runtime

type
  EnumImport* = ref EnumImportObj
  EnumImportObj* = object
    pet1*: Enum0_Animal
    pet2*: EnumDeep_Container1_Container2_Animal
    io*: KaitaiStream
    root*: EnumImport
    parent*: ref RootObj

### EnumImport ###
proc read*(_: typedesc[EnumImport], io: KaitaiStream, root: EnumImport, parent: ref RootObj): EnumImport =
  result = new(EnumImport)
  let root = if root == nil: cast[EnumImport](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let pet1 = 
  result.pet1 = pet1
  let pet2 = 
  result.pet2 = pet2

proc fromFile*(_: typedesc[EnumImport], filename: string): EnumImport =
  EnumImport.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumImportObj) =
  close(x.io)


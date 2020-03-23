import kaitai_struct_nim_runtime

type
  EnumImport* = ref EnumImportObj
  EnumImportObj* = object
    pet1*: Enum0animal
    pet2*: EnumDeepcontainer1container2animal
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
  result.pet1 = 
  result.pet2 = 

proc fromFile*(_: typedesc[EnumImport], filename: string): EnumImport =
  EnumImport.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumImportObj) =
  close(x.io)


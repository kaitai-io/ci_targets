import kaitai_struct_nim_runtime

type
  IfInstances* = ref IfInstancesObj
  IfInstancesObj* = object
    io*: KaitaiStream
    root*: IfInstances
    parent*: ref RootObj

### IfInstances ###
proc read*(_: typedesc[IfInstances], io: KaitaiStream, root: IfInstances, parent: ref RootObj): IfInstances =
  result = new(IfInstances)
  let root = if root == nil: cast[IfInstances](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[IfInstances], filename: string): IfInstances =
  IfInstances.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IfInstancesObj) =
  close(x.io)


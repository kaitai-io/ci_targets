import kaitai_struct_nim_runtime

type
  OpaqueExternalType02Parent_ParentObj* = ref OpaqueExternalType02Parent_ParentObjObj
  OpaqueExternalType02Parent_ParentObjObj* = object
    child*: OpaqueExternalType02Child
    io*: KaitaiStream
    root*: OpaqueExternalType02Parent
    parent*: OpaqueExternalType02Parent
  OpaqueExternalType02Parent* = ref OpaqueExternalType02ParentObj
  OpaqueExternalType02ParentObj* = object
    parent*: OpaqueExternalType02Parent_ParentObj
    io*: KaitaiStream
    root*: OpaqueExternalType02Parent
    parent*: ref RootObj

### OpaqueExternalType02Parent_ParentObj ###
proc read*(_: typedesc[OpaqueExternalType02Parent_ParentObj], io: KaitaiStream, root: OpaqueExternalType02Parent, parent: OpaqueExternalType02Parent): OpaqueExternalType02Parent_ParentObj =
  result = new(OpaqueExternalType02Parent_ParentObj)
  let root = if root == nil: cast[OpaqueExternalType02Parent](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let child = OpaqueExternalType02Child.read(io)
  result.child = child

proc fromFile*(_: typedesc[OpaqueExternalType02Parent_ParentObj], filename: string): OpaqueExternalType02Parent_ParentObj =
  OpaqueExternalType02Parent_ParentObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var OpaqueExternalType02Parent_ParentObjObj) =
  close(x.io)

### OpaqueExternalType02Parent ###
proc read*(_: typedesc[OpaqueExternalType02Parent], io: KaitaiStream, root: OpaqueExternalType02Parent, parent: ref RootObj): OpaqueExternalType02Parent =
  result = new(OpaqueExternalType02Parent)
  let root = if root == nil: cast[OpaqueExternalType02Parent](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let parent = OpaqueExternalType02Parent_ParentObj.read(io, result, root)
  result.parent = parent

proc fromFile*(_: typedesc[OpaqueExternalType02Parent], filename: string): OpaqueExternalType02Parent =
  OpaqueExternalType02Parent.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var OpaqueExternalType02ParentObj) =
  close(x.io)


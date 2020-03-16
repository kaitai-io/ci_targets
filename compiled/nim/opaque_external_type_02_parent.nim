import kaitai_struct_nim_runtime



type
  ParentObj* = ref ParentObjObj
  ParentObjObj* = object
    io: KaitaiStream
    root*: OpaqueExternalType02Parent
    parent*: OpaqueExternalType02Parent
    child*: OpaqueExternalType02Child
  OpaqueExternalType02Parent* = ref OpaqueExternalType02ParentObj
  OpaqueExternalType02ParentObj* = object
    io: KaitaiStream
    root*: OpaqueExternalType02Parent
    parent*: ref RootObj
    parent*: ParentObj

# ParentObj
proc read*(_: typedesc[ParentObj], io: KaitaiStream, root: OpaqueExternalType02Parent, parent: OpaqueExternalType02Parent): owned ParentObj =
  result = new(ParentObj)
  let root = if root == nil: cast[OpaqueExternalType02Parent](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let child = OpaqueExternalType02Child.read(io)
  result.child = child


proc fromFile*(_: typedesc[ParentObj], filename: string): owned ParentObj =
  ParentObj.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ParentObjObj) =
  close(x.io)

# OpaqueExternalType02Parent
proc read*(_: typedesc[OpaqueExternalType02Parent], io: KaitaiStream, root: OpaqueExternalType02Parent, parent: ref RootObj): owned OpaqueExternalType02Parent =
  result = new(OpaqueExternalType02Parent)
  let root = if root == nil: cast[OpaqueExternalType02Parent](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let parent = ParentObj.read(io, root, result)
  result.parent = parent


proc fromFile*(_: typedesc[OpaqueExternalType02Parent], filename: string): owned OpaqueExternalType02Parent =
  OpaqueExternalType02Parent.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var OpaqueExternalType02ParentObj) =
  close(x.io)


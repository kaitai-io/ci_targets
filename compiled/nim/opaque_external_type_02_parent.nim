import kaitai_struct_nim_runtime

type
  OpaqueExternalType02ParentparentObj* = ref OpaqueExternalType02ParentparentObjObj
  OpaqueExternalType02ParentparentObjObj* = object
    parent*: ParentObj
    io*: KaitaiStream
    root*: OpaqueExternalType02Parent
    parent*: ref RootObj
  OpaqueExternalType02Parent* = ref OpaqueExternalType02ParentObj
  OpaqueExternalType02ParentObj* = object
    parent*: ParentObj
    io*: KaitaiStream
    root*: OpaqueExternalType02Parent
    parent*: ref RootObj

### OpaqueExternalType02ParentparentObj ###
proc read*(_: typedesc[OpaqueExternalType02ParentparentObj], io: KaitaiStream, root: OpaqueExternalType02Parent, parent: OpaqueExternalType02Parent): OpaqueExternalType02ParentparentObj =
  result = new(OpaqueExternalType02ParentparentObj)
  let root = if root == nil: cast[OpaqueExternalType02Parent](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.child = OpaqueExternalType02Child.read(result.io)

proc fromFile*(_: typedesc[OpaqueExternalType02ParentparentObj], filename: string): OpaqueExternalType02ParentparentObj =
  OpaqueExternalType02ParentparentObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var OpaqueExternalType02ParentparentObjObj) =
  close(x.io)

### OpaqueExternalType02Parent ###
proc read*(_: typedesc[OpaqueExternalType02Parent], io: KaitaiStream, root: OpaqueExternalType02Parent, parent: ref RootObj): OpaqueExternalType02Parent =
  result = new(OpaqueExternalType02Parent)
  let root = if root == nil: cast[OpaqueExternalType02Parent](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.parent = ParentObj.read(result.io, result, root)

proc fromFile*(_: typedesc[OpaqueExternalType02Parent], filename: string): OpaqueExternalType02Parent =
  OpaqueExternalType02Parent.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var OpaqueExternalType02ParentObj) =
  close(x.io)


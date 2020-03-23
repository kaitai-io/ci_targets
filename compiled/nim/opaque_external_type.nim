import kaitai_struct_nim_runtime

type
  OpaqueExternalType* = ref OpaqueExternalTypeObj
  OpaqueExternalTypeObj* = object
    one*: TermStrz
    io*: KaitaiStream
    root*: OpaqueExternalType
    parent*: ref RootObj

### OpaqueExternalType ###
proc read*(_: typedesc[OpaqueExternalType], io: KaitaiStream, root: OpaqueExternalType, parent: ref RootObj): OpaqueExternalType =
  result = new(OpaqueExternalType)
  let root = if root == nil: cast[OpaqueExternalType](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.one = TermStrz.read(result.io)

proc fromFile*(_: typedesc[OpaqueExternalType], filename: string): OpaqueExternalType =
  OpaqueExternalType.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var OpaqueExternalTypeObj) =
  close(x.io)


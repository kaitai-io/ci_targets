import ../../kaitai_struct_nim_runtime/kaitai_struct_nim_runtime



type
  OpaqueExternalType* = ref OpaqueExternalTypeObj
  OpaqueExternalTypeObj* = object
    io: KaitaiStream
    root*: OpaqueExternalType
    parent*: ref RootObj
    one*: TermStrz

# OpaqueExternalType
proc read*(_: typedesc[OpaqueExternalType], io: KaitaiStream, root: OpaqueExternalType, parent: ref RootObj): owned OpaqueExternalType =
  result = new(OpaqueExternalType)
  let root = if root == nil: cast[OpaqueExternalType](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let one = TermStrz.read(io)
  result.one = one


proc fromFile*(_: typedesc[OpaqueExternalType], filename: string): owned OpaqueExternalType =
  OpaqueExternalType.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var OpaqueExternalTypeObj) =
  close(x.io)


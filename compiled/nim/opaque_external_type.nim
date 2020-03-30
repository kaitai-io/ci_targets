import kaitai_struct_nim_runtime
import options

type
  OpaqueExternalType* = ref OpaqueExternalTypeObj
  OpaqueExternalTypeObj* = object
    one*: TermStrz
    io*: KaitaiStream
    root*: OpaqueExternalType
    parent*: ref RootObj

## OpaqueExternalType
proc read*(_: typedesc[OpaqueExternalType], io: KaitaiStream, root: OpaqueExternalType, parent: ref RootObj): OpaqueExternalType =
  let this = new(OpaqueExternalType)
  let root = if root == nil: cast[OpaqueExternalType](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = TermStrz.read(this.io)
  result = this

proc fromFile*(_: typedesc[OpaqueExternalType], filename: string): OpaqueExternalType =
  OpaqueExternalType.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var OpaqueExternalTypeObj) =
  close(x.io)


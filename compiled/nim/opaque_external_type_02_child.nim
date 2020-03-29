import kaitai_struct_nim_runtime
import encodings

type
  OpaqueExternalType02Child_OpaqueExternalType02ChildChild* = ref OpaqueExternalType02Child_OpaqueExternalType02ChildChildObj
  OpaqueExternalType02Child_OpaqueExternalType02ChildChildObj* = object
    s3*: string
    io*: KaitaiStream
    root*: OpaqueExternalType02Child
    parent*: OpaqueExternalType02Child
  OpaqueExternalType02Child* = ref OpaqueExternalType02ChildObj
  OpaqueExternalType02ChildObj* = object
    s1*: string
    s2*: string
    s3*: OpaqueExternalType02Child_OpaqueExternalType02ChildChild
    io*: KaitaiStream
    root*: OpaqueExternalType02Child
    parent*: ref RootObj

### OpaqueExternalType02Child_OpaqueExternalType02ChildChild ###
proc read*(_: typedesc[OpaqueExternalType02Child_OpaqueExternalType02ChildChild], io: KaitaiStream, root: OpaqueExternalType02Child, parent: OpaqueExternalType02Child): OpaqueExternalType02Child_OpaqueExternalType02ChildChild =
  result = new(OpaqueExternalType02Child_OpaqueExternalType02ChildChild)
  let root = if root == nil: cast[OpaqueExternalType02Child](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  if _root.someMethod:
    let s3 = convert(io.readBytesTerm(64, true, true, true), srcEncoding = "UTF-8")
    result.s3 = s3

proc fromFile*(_: typedesc[OpaqueExternalType02Child_OpaqueExternalType02ChildChild], filename: string): OpaqueExternalType02Child_OpaqueExternalType02ChildChild =
  OpaqueExternalType02Child_OpaqueExternalType02ChildChild.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var OpaqueExternalType02Child_OpaqueExternalType02ChildChildObj) =
  close(x.io)

### OpaqueExternalType02Child ###
proc read*(_: typedesc[OpaqueExternalType02Child], io: KaitaiStream, root: OpaqueExternalType02Child, parent: ref RootObj): OpaqueExternalType02Child =
  result = new(OpaqueExternalType02Child)
  let root = if root == nil: cast[OpaqueExternalType02Child](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let s1 = convert(io.readBytesTerm(124, false, true, true), srcEncoding = "UTF-8")
  result.s1 = s1
  let s2 = convert(io.readBytesTerm(124, false, false, true), srcEncoding = "UTF-8")
  result.s2 = s2
  let s3 = OpaqueExternalType02Child_OpaqueExternalType02ChildChild.read(io, result, root)
  result.s3 = s3

proc fromFile*(_: typedesc[OpaqueExternalType02Child], filename: string): OpaqueExternalType02Child =
  OpaqueExternalType02Child.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var OpaqueExternalType02ChildObj) =
  close(x.io)


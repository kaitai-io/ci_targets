import kaitai_struct_nim_runtime
import encodings

type
  OpaqueExternalType02ChildopaqueExternalType02ChildChild* = ref OpaqueExternalType02ChildopaqueExternalType02ChildChildObj
  OpaqueExternalType02ChildopaqueExternalType02ChildChildObj* = object
    s1*: string
    s2*: string
    s3*: OpaqueExternalType02ChildChild
    io*: KaitaiStream
    root*: OpaqueExternalType02Child
    parent*: ref RootObj
  OpaqueExternalType02Child* = ref OpaqueExternalType02ChildObj
  OpaqueExternalType02ChildObj* = object
    s1*: string
    s2*: string
    s3*: OpaqueExternalType02ChildChild
    io*: KaitaiStream
    root*: OpaqueExternalType02Child
    parent*: ref RootObj

### OpaqueExternalType02ChildopaqueExternalType02ChildChild ###
proc read*(_: typedesc[OpaqueExternalType02ChildopaqueExternalType02ChildChild], io: KaitaiStream, root: OpaqueExternalType02Child, parent: OpaqueExternalType02Child): OpaqueExternalType02ChildopaqueExternalType02ChildChild =
  result = new(OpaqueExternalType02ChildopaqueExternalType02ChildChild)
  let root = if root == nil: cast[OpaqueExternalType02Child](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  if _root.someMethod:
    result.s3 = convert(result.io.readBytesTerm(64, true, true, true), srcEncoding = "UTF-8")

proc fromFile*(_: typedesc[OpaqueExternalType02ChildopaqueExternalType02ChildChild], filename: string): OpaqueExternalType02ChildopaqueExternalType02ChildChild =
  OpaqueExternalType02ChildopaqueExternalType02ChildChild.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var OpaqueExternalType02ChildopaqueExternalType02ChildChildObj) =
  close(x.io)

### OpaqueExternalType02Child ###
proc read*(_: typedesc[OpaqueExternalType02Child], io: KaitaiStream, root: OpaqueExternalType02Child, parent: ref RootObj): OpaqueExternalType02Child =
  result = new(OpaqueExternalType02Child)
  let root = if root == nil: cast[OpaqueExternalType02Child](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.s1 = convert(result.io.readBytesTerm(124, false, true, true), srcEncoding = "UTF-8")
  result.s2 = convert(result.io.readBytesTerm(124, false, false, true), srcEncoding = "UTF-8")
  result.s3 = OpaqueExternalType02ChildChild.read(result.io, result, root)

proc fromFile*(_: typedesc[OpaqueExternalType02Child], filename: string): OpaqueExternalType02Child =
  OpaqueExternalType02Child.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var OpaqueExternalType02ChildObj) =
  close(x.io)


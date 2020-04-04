import kaitai_struct_nim_runtime
import options
import encodings

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  OpaqueExternalType02Child* = ref object of KaitaiStruct
    s1*: string
    s2*: string
    s3*: OpaqueExternalType02Child_OpaqueExternalType02ChildChild
    parent*: KaitaiStruct
    someMethodInst*: Option[bool]
  OpaqueExternalType02Child_OpaqueExternalType02ChildChild* = ref object of KaitaiStruct
    s3*: string
    parent*: OpaqueExternalType02Child

proc read*(_: typedesc[OpaqueExternalType02Child], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): OpaqueExternalType02Child
proc read*(_: typedesc[OpaqueExternalType02Child_OpaqueExternalType02ChildChild], io: KaitaiStream, root: KaitaiStruct, parent: OpaqueExternalType02Child): OpaqueExternalType02Child_OpaqueExternalType02ChildChild

proc someMethod*(this: OpaqueExternalType02Child): bool

proc read*(_: typedesc[OpaqueExternalType02Child], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): OpaqueExternalType02Child =
  template this: untyped = result
  this = new(OpaqueExternalType02Child)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.s1 = convert(this.io.readBytesTerm(124, false, true, true), srcEncoding = "UTF-8")
  this.s2 = convert(this.io.readBytesTerm(124, false, false, true), srcEncoding = "UTF-8")
  this.s3 = OpaqueExternalType02Child_OpaqueExternalType02ChildChild.read(this.io, this.root, this)

proc someMethod(this: OpaqueExternalType02Child): bool = 
  if isSome(this.someMethodInst):
    return get(this.someMethodInst)
  this.someMethodInst = some(true)
  if isSome(this.someMethodInst):
    return get(this.someMethodInst)

proc fromFile*(_: typedesc[OpaqueExternalType02Child], filename: string): OpaqueExternalType02Child =
  OpaqueExternalType02Child.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[OpaqueExternalType02Child_OpaqueExternalType02ChildChild], io: KaitaiStream, root: KaitaiStruct, parent: OpaqueExternalType02Child): OpaqueExternalType02Child_OpaqueExternalType02ChildChild =
  template this: untyped = result
  this = new(OpaqueExternalType02Child_OpaqueExternalType02ChildChild)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  if this._root.someMethod:
    this.s3 = convert(this.io.readBytesTerm(64, true, true, true), srcEncoding = "UTF-8")

proc fromFile*(_: typedesc[OpaqueExternalType02Child_OpaqueExternalType02ChildChild], filename: string): OpaqueExternalType02Child_OpaqueExternalType02ChildChild =
  OpaqueExternalType02Child_OpaqueExternalType02ChildChild.read(newKaitaiFileStream(filename), nil, nil)


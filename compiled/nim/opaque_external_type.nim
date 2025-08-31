import kaitai_struct_nim_runtime
import options
import hello_world

type
  OpaqueExternalType* = ref object of KaitaiStruct
    `hw`*: HelloWorld
    `parent`*: KaitaiStruct

proc read*(_: typedesc[OpaqueExternalType], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): OpaqueExternalType


proc read*(_: typedesc[OpaqueExternalType], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): OpaqueExternalType =
  template this: untyped = result
  this = new(OpaqueExternalType)
  let root = if root == nil: cast[OpaqueExternalType](this) else: cast[OpaqueExternalType](root)
  this.io = io
  this.root = root
  this.parent = parent

  let hwExpr = HelloWorld.read(this.io, nil, nil)
  this.hw = hwExpr

proc fromFile*(_: typedesc[OpaqueExternalType], filename: string): OpaqueExternalType =
  OpaqueExternalType.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

import "opaque_external_type_02_child"
type
  OpaqueExternalType02Parent* = ref object of KaitaiStruct
    parent*: OpaqueExternalType02Parent_ParentObj
    parent*: KaitaiStruct
  OpaqueExternalType02Parent_ParentObj* = ref object of KaitaiStruct
    child*: OpaqueExternalType02Child
    parent*: OpaqueExternalType02Parent

proc read*(_: typedesc[OpaqueExternalType02Parent], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): OpaqueExternalType02Parent
proc read*(_: typedesc[OpaqueExternalType02Parent_ParentObj], io: KaitaiStream, root: KaitaiStruct, parent: OpaqueExternalType02Parent): OpaqueExternalType02Parent_ParentObj


proc read*(_: typedesc[OpaqueExternalType02Parent], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): OpaqueExternalType02Parent =
  template this: untyped = result
  this = new(OpaqueExternalType02Parent)
  let root = if root == nil: cast[OpaqueExternalType02Parent](this) else: cast[OpaqueExternalType02Parent](root)
  this.io = io
  this.root = root
  this.parent = parent

  let parentExpr = OpaqueExternalType02Parent_ParentObj.read(this.io, this.root, this)
  this.parent = parentExpr

proc fromFile*(_: typedesc[OpaqueExternalType02Parent], filename: string): OpaqueExternalType02Parent =
  OpaqueExternalType02Parent.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[OpaqueExternalType02Parent_ParentObj], io: KaitaiStream, root: KaitaiStruct, parent: OpaqueExternalType02Parent): OpaqueExternalType02Parent_ParentObj =
  template this: untyped = result
  this = new(OpaqueExternalType02Parent_ParentObj)
  let root = if root == nil: cast[OpaqueExternalType02Parent](this) else: cast[OpaqueExternalType02Parent](root)
  this.io = io
  this.root = root
  this.parent = parent

  let childExpr = OpaqueExternalType02Child.read(this.io, this.root, this)
  this.child = childExpr

proc fromFile*(_: typedesc[OpaqueExternalType02Parent_ParentObj], filename: string): OpaqueExternalType02Parent_ParentObj =
  OpaqueExternalType02Parent_ParentObj.read(newKaitaiFileStream(filename), nil, nil)


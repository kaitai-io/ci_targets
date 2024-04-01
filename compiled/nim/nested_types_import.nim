import kaitai_struct_nim_runtime
import options
import nested_types3

type
  NestedTypesImport* = ref object of KaitaiStruct
    `aCc`*: NestedTypes3_SubtypeA_SubtypeCc
    `aCD`*: NestedTypes3_SubtypeA_SubtypeC_SubtypeD
    `b`*: NestedTypes3_SubtypeB
    `parent`*: KaitaiStruct

proc read*(_: typedesc[NestedTypesImport], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypesImport


proc read*(_: typedesc[NestedTypesImport], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypesImport =
  template this: untyped = result
  this = new(NestedTypesImport)
  let root = if root == nil: cast[NestedTypesImport](this) else: cast[NestedTypesImport](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aCcExpr = NestedTypes3_SubtypeA_SubtypeCc.read(this.io, nil, nil)
  this.aCc = aCcExpr
  let aCDExpr = NestedTypes3_SubtypeA_SubtypeC_SubtypeD.read(this.io, nil, nil)
  this.aCD = aCDExpr
  let bExpr = NestedTypes3_SubtypeB.read(this.io, nil, nil)
  this.b = bExpr

proc fromFile*(_: typedesc[NestedTypesImport], filename: string): NestedTypesImport =
  NestedTypesImport.read(newKaitaiFileStream(filename), nil, nil)


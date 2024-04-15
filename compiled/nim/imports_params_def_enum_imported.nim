import kaitai_struct_nim_runtime
import options
import params_def_enum_imported
import enum_import_seq

type
  ImportsParamsDefEnumImported* = ref object of KaitaiStruct
    `one`*: EnumImportSeq
    `two`*: ParamsDefEnumImported
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ImportsParamsDefEnumImported], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsParamsDefEnumImported


proc read*(_: typedesc[ImportsParamsDefEnumImported], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsParamsDefEnumImported =
  template this: untyped = result
  this = new(ImportsParamsDefEnumImported)
  let root = if root == nil: cast[ImportsParamsDefEnumImported](this) else: cast[ImportsParamsDefEnumImported](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = EnumImportSeq.read(this.io, nil, nil)
  this.one = oneExpr
  let twoExpr = ParamsDefEnumImported.read(this.io, nil, nil, this.one.pet1, this.one.pet2)
  this.two = twoExpr

proc fromFile*(_: typedesc[ImportsParamsDefEnumImported], filename: string): ImportsParamsDefEnumImported =
  ImportsParamsDefEnumImported.read(newKaitaiFileStream(filename), nil, nil)


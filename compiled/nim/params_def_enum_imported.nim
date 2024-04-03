import kaitai_struct_nim_runtime
import options
import enum_0
import enum_deep

type
  ParamsDefEnumImported* = ref object of KaitaiStruct
    `pet1Param`*: Enum0_Animal
    `pet2Param`*: EnumDeep_Container1_Container2_Animal
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ParamsDefEnumImported], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct, pet1Param: any, pet2Param: any): ParamsDefEnumImported


proc read*(_: typedesc[ParamsDefEnumImported], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct, pet1Param: any, pet2Param: any): ParamsDefEnumImported =
  template this: untyped = result
  this = new(ParamsDefEnumImported)
  let root = if root == nil: cast[ParamsDefEnumImported](this) else: cast[ParamsDefEnumImported](root)
  this.io = io
  this.root = root
  this.parent = parent
  let pet1ParamExpr = Enum0_Animal(pet1Param)
  this.pet1Param = pet1ParamExpr
  let pet2ParamExpr = EnumDeep_Container1_Container2_Animal(pet2Param)
  this.pet2Param = pet2ParamExpr


proc fromFile*(_: typedesc[ParamsDefEnumImported], filename: string): ParamsDefEnumImported =
  ParamsDefEnumImported.read(newKaitaiFileStream(filename), nil, nil)


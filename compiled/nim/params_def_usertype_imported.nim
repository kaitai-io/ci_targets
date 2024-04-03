import kaitai_struct_nim_runtime
import options
import hello_world

type
  ParamsDefUsertypeImported* = ref object of KaitaiStruct
    `hwParam`*: HelloWorld
    `parent`*: KaitaiStruct
    `hwOneInst`: uint8
    `hwOneInstFlag`: bool

proc read*(_: typedesc[ParamsDefUsertypeImported], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct, hwParam: any): ParamsDefUsertypeImported

proc hwOne*(this: ParamsDefUsertypeImported): uint8

proc read*(_: typedesc[ParamsDefUsertypeImported], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct, hwParam: any): ParamsDefUsertypeImported =
  template this: untyped = result
  this = new(ParamsDefUsertypeImported)
  let root = if root == nil: cast[ParamsDefUsertypeImported](this) else: cast[ParamsDefUsertypeImported](root)
  this.io = io
  this.root = root
  this.parent = parent
  let hwParamExpr = HelloWorld(hwParam)
  this.hwParam = hwParamExpr


proc hwOne(this: ParamsDefUsertypeImported): uint8 = 
  if this.hwOneInstFlag:
    return this.hwOneInst
  let hwOneInstExpr = uint8(this.hwParam.one)
  this.hwOneInst = hwOneInstExpr
  this.hwOneInstFlag = true
  return this.hwOneInst

proc fromFile*(_: typedesc[ParamsDefUsertypeImported], filename: string): ParamsDefUsertypeImported =
  ParamsDefUsertypeImported.read(newKaitaiFileStream(filename), nil, nil)


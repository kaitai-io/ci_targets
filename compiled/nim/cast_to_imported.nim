import kaitai_struct_nim_runtime
import options

type
  CastToImported* = ref object of KaitaiStruct
    `hwParam`*: KaitaiStruct
    `parent`*: KaitaiStruct
    `hwOneInst`: uint8
    `hwOneInstFlag`: bool

proc read*(_: typedesc[CastToImported], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct, hwParam: any): CastToImported

proc hwOne*(this: CastToImported): uint8

proc read*(_: typedesc[CastToImported], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct, hwParam: any): CastToImported =
  template this: untyped = result
  this = new(CastToImported)
  let root = if root == nil: cast[CastToImported](this) else: cast[CastToImported](root)
  this.io = io
  this.root = root
  this.parent = parent
  let hwParamExpr = KaitaiStruct(hwParam)
  this.hwParam = hwParamExpr


proc hwOne(this: CastToImported): uint8 = 
  if this.hwOneInstFlag:
    return this.hwOneInst
  let hwOneInstExpr = uint8((HelloWorld(this.hwParam)).one)
  this.hwOneInst = hwOneInstExpr
  this.hwOneInstFlag = true
  return this.hwOneInst

proc fromFile*(_: typedesc[CastToImported], filename: string): CastToImported =
  CastToImported.read(newKaitaiFileStream(filename), nil, nil)


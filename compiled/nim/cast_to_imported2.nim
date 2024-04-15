import kaitai_struct_nim_runtime
import options

type
  CastToImported2* = ref object of KaitaiStruct
    `hwParam`*: KaitaiStruct
    `parent`*: KaitaiStruct
    `hwInst`: HelloWorld
    `hwInstFlag`: bool

proc read*(_: typedesc[CastToImported2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct, hwParam: any): CastToImported2

proc hw*(this: CastToImported2): HelloWorld

proc read*(_: typedesc[CastToImported2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct, hwParam: any): CastToImported2 =
  template this: untyped = result
  this = new(CastToImported2)
  let root = if root == nil: cast[CastToImported2](this) else: cast[CastToImported2](root)
  this.io = io
  this.root = root
  this.parent = parent
  let hwParamExpr = KaitaiStruct(hwParam)
  this.hwParam = hwParamExpr


proc hw(this: CastToImported2): HelloWorld = 
  if this.hwInstFlag:
    return this.hwInst
  let hwInstExpr = HelloWorld((HelloWorld(this.hwParam)))
  this.hwInst = hwInstExpr
  this.hwInstFlag = true
  return this.hwInst

proc fromFile*(_: typedesc[CastToImported2], filename: string): CastToImported2 =
  CastToImported2.read(newKaitaiFileStream(filename), nil, nil)


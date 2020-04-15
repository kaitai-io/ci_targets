import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ParamsPassArrayStr* = ref object of KaitaiStruct
    strArray*: seq[string]
    passStrArray*: ParamsPassArrayStr_WantsStrs
    passStrArrayCalc*: ParamsPassArrayStr_WantsStrs
    parent*: KaitaiStruct
    strArrayCalcInst*: seq[string]
  ParamsPassArrayStr_WantsStrs* = ref object of KaitaiStruct
    strs*: seq[string]
    parent*: ParamsPassArrayStr

proc read*(_: typedesc[ParamsPassArrayStr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsPassArrayStr
proc read*(_: typedesc[ParamsPassArrayStr_WantsStrs], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassArrayStr, strs: any): ParamsPassArrayStr_WantsStrs

proc strArrayCalc*(this: ParamsPassArrayStr): seq[string]

proc read*(_: typedesc[ParamsPassArrayStr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsPassArrayStr =
  template this: untyped = result
  this = new(ParamsPassArrayStr)
  let root = if root == nil: cast[ParamsPassArrayStr](this) else: cast[ParamsPassArrayStr](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< 3:
    let strArrayExpr = encode(this.io.readBytes(int(2)), "ascii")
    this.strArray.add(strArrayExpr)
  let passStrArrayExpr = ParamsPassArrayStr_WantsStrs.read(this.io, this.root, this, this.strArray)
  this.passStrArray = passStrArrayExpr
  let passStrArrayCalcExpr = ParamsPassArrayStr_WantsStrs.read(this.io, this.root, this, this.strArrayCalc)
  this.passStrArrayCalc = passStrArrayCalcExpr

proc strArrayCalc(this: ParamsPassArrayStr): seq[string] = 
  if this.strArrayCalcInst.len != 0:
    return this.strArrayCalcInst
  let strArrayCalcInstExpr = seq[string](@[string("aB"), string("Cd")])
  this.strArrayCalcInst = strArrayCalcInstExpr
  if this.strArrayCalcInst.len != 0:
    return this.strArrayCalcInst

proc fromFile*(_: typedesc[ParamsPassArrayStr], filename: string): ParamsPassArrayStr =
  ParamsPassArrayStr.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsPassArrayStr_WantsStrs], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassArrayStr, strs: any): ParamsPassArrayStr_WantsStrs =
  template this: untyped = result
  this = new(ParamsPassArrayStr_WantsStrs)
  let root = if root == nil: cast[ParamsPassArrayStr](this) else: cast[ParamsPassArrayStr](root)
  this.io = io
  this.root = root
  this.parent = parent
  let strsExpr = seq[string](strs)
  this.strs = strsExpr


proc fromFile*(_: typedesc[ParamsPassArrayStr_WantsStrs], filename: string): ParamsPassArrayStr_WantsStrs =
  ParamsPassArrayStr_WantsStrs.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options
import encodings

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ParamsPassArrayStr* = ref object of KaitaiStruct
    strArray*: seq[string]
    passStrArray*: ParamsPassArrayStr_WantsStrs
    passStrArrayCalc*: ParamsPassArrayStr_WantsStrs
    parent*: KaitaiStruct
    strArrayCalcInst*: Option[seq[string]]
  ParamsPassArrayStr_WantsStrs* = ref object of KaitaiStruct
    strs*: seq[string]
    parent*: ParamsPassArrayStr

proc read*(_: typedesc[ParamsPassArrayStr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsPassArrayStr
proc read*(_: typedesc[ParamsPassArrayStr_WantsStrs], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassArrayStr): ParamsPassArrayStr_WantsStrs

proc strArrayCalc*(this: ParamsPassArrayStr): seq[string]

proc read*(_: typedesc[ParamsPassArrayStr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsPassArrayStr =
  template this: untyped = result
  this = new(ParamsPassArrayStr)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< 3:
    this.strArray.add(convert(this.io.readBytes(int(2)), srcEncoding = "ascii"))
  this.passStrArray = ParamsPassArrayStr_WantsStrs.read(this.io, this.root, this, this.strArray)
  this.passStrArrayCalc = ParamsPassArrayStr_WantsStrs.read(this.io, this.root, this, this.strArrayCalc)

proc strArrayCalc(this: ParamsPassArrayStr): seq[string] = 
  if isSome(this.strArrayCalcInst):
    return get(this.strArrayCalcInst)
  this.strArrayCalcInst = some(@["aB", "Cd"])
  if isSome(this.strArrayCalcInst):
    return get(this.strArrayCalcInst)

proc fromFile*(_: typedesc[ParamsPassArrayStr], filename: string): ParamsPassArrayStr =
  ParamsPassArrayStr.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsPassArrayStr_WantsStrs], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassArrayStr): ParamsPassArrayStr_WantsStrs =
  template this: untyped = result
  this = new(ParamsPassArrayStr_WantsStrs)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[ParamsPassArrayStr_WantsStrs], filename: string): ParamsPassArrayStr_WantsStrs =
  ParamsPassArrayStr_WantsStrs.read(newKaitaiFileStream(filename), nil, nil)

